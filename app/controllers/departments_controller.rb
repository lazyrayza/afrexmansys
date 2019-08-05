class DepartmentsController < ApplicationController
  before_action :find_department, only: [:show, :create, :update]

  def index
    @departments = Department.all
  end

  def show
  end

  def new
    @department = Department.new
  end

  def create
  end

  def update
    if @department.save
      redirect_to departments_path
    else
      render :new
    end
  end

private

  def find_department
    @department ||= Department.find(params[:id])
  end

end
