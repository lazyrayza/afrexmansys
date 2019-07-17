class UnitsController < ApplicationController
  before_action :find_units, only: [:show, :update, :destroy]

  def index
    @units = Unit.all
  end

  def show
    @unit = Unit.find(params[:id])
    @development = @unit.development
    @lease = Lease.where(:unit_id == @unit.id)
  end

  def new
    @unit = Unit.new
    @development = Development.find(params[:development_id])
  end

  def update
    if @unit.save
      redirect_to unit_path(@unit), notice: 'Unit has been updated'
    else
      render :new
    end
  end

  def create
    @development = Development.find(params[:development_id])
    @unit = Unit.new(units_params)
    if @unit.save
      redirect_to development_units_path(@development), notice: 'Unit has been created!'
    else
      render :new
    end
  end

private

  def find_units
    @unit = Unit.find(params[:id])
  end

  def units_params
    params.require(:unit).permit(:unit_number, :floor, :size, :bedrooms, :bathrooms, :price, :apartment, :description, :development_id, :available)
  end
end
