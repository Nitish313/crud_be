class EmployeesController < ApplicationController
  def index
    render json: Employee.all, status: 200
  end

  def show
  end
end
