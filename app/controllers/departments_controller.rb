class DepartmentsController < ApplicationController
  def index
    render json: Department.all, status: :ok
  end

  def show
  end
end
