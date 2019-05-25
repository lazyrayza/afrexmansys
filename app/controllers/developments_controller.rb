class DevelopmentsController < ApplicationController
  def index
    @developments = Development.all
  end

  def show
  end

  def new
    @development = Development.new
  end

  def create
  end

  def update
    if @development.save
      redirect_to developments_path
    else
      render :new
    end
  end

private

  def find_development
    @development = Development.find(params[:id])
  end
end
