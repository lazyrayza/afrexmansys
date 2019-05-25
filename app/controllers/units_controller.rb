class UnitsController < ApplicationController
  def index
    @units = Unit.all
  end

  def show
    @unit = Unit.find(params[:id])
  end

  def new
    @unit = Unit.new
  end

  def update
    if Unit.save
      redirect_to unit_path(@unit), notice: 'Unit has been updated'
    else
      render :new
    end
  end

  def create
     @unit = Unit.new(units_params)
    if @unit.save && @unit.lease.count < 1
      redirect_to "/", notice: 'Unit has been created!'
    else
      render :new
    end
  end

private

  def units_params
    params.require(:units).permit(:unit_number, :floor, :size, :bedrooms, :bathrooms, :price,:apartment)
  end
end
