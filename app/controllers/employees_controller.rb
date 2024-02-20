class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show update destroy]

  def index
    render json: (search_params[:q].present? ? Employee.search(search_params[:q]) : Employee.all), status: 200
  end

  def show
    render json: @emp, status: 200
  end

  def create
    emp = Employee.new(emp_params)
    if emp.valid?
      emp.save!
    else
      render json: 'Employee could not be created', status: 500
    end
  end

  def update
    if @emp.present?
      @emp.update(emp_params)
    else
      render json: 'Employee could not be update', status: 500
    end
  end

  def destroy
    @emp.destroy if @emp.present?
  end


  private

  def emp_params
    params.require(:employee).permit(:ename, :job, :mgr_id, :hireddate, :sal, :comm, :department_id)
  end

  def search_params
    params.permit(:q)
  end

  def set_employee
    @emp = Employee.find(params[:id])
  end
end
