class LeasesController < ApplicationController
  before_action :find_lease, only: [:show, :update, :destroy]
  def index
    @leases = Lease.all
  end

  def show
  end

  def new
    @lease = Lease.new
  end

  def update
    if @lease.update(leases_params)
      redirect_to lease_path(@lease), notice: 'Lease was updated!'
    else
      render :new
    end
  end

  def create
    @unit = Unit.find(params[:id])
    @lease = Lease.new(lease_params)
    if @lease.save
      redirect_to leases_path, notice: 'Lease has been Created'
    else
      render :new
    end
  end

  def destroy
    @lease.destroy
    respond_to do |format|
      format.html { redirect_to 'leases/index' }
      # redirect to same page for AJAX to work
      format.js
    end
  end

private

  def find_lease
    @lease = Lease.find(param[:id])
  end

  def lease_params
    params.require(:lease).permit(:start_date, :end_date, :duration, :rent, :deposit)
  end
end
