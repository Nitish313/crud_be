class EmployeesController < ApplicationController
  def index
    employees = params[:q].present? ? Employee.search(params[:q]) : Employee.all
    render json: employees, status: 200
  end

  def show
  end
end
