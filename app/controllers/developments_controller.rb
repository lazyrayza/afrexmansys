class DevelopmentsController < ApplicationController
  before_action :find_development, only: [:show, :update, :destroy]

  def index
    @developments = Development.all
  end

  def show
    @units = Unit.where(development_id: @development.id)
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
