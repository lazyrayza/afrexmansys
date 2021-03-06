class LeasesController < ApplicationController
  before_action :find_lease, only: [ :update, :destroy]
  def index
    @leases = Lease.all
  end

  def show
    @lease = Lease.find(params[:user_id])
    @tenant = @lease.tenant

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "lease",
        template: 'leases/show',
        page_size: 'A4',
        orientation: "Portrait",
        layout: "pdf.html",
        zoom: 1,
        dpi: 75
      end
    end
  end

  def new
    @development = Development.find(params[:development_id])
    @unit = Unit.find(params[:unit_id])
    @leases = Lease.all
    @lease = Lease.new
    @tenants = User.where(tenant: true)
    @taken_tenants = @leases.to_a.map {|lease| lease.tenant }

    @available_tenants = @tenants - @taken_tenants
  end

  def update
    if @lease.update(leases_params)
      redirect_to lease_path(@lease), notice: 'Lease was updated!'
    else
      render :new
    end
  end

  def create
    @unit = Unit.find(params[:unit_id])
    @development = Development.find(params[:development_id])
    @lease = Lease.new(lease_params)
    @lease.unit_id = @unit.id
    @tenant = @lease.tenant_id
    if @lease.save
      respond_to do |format|
        format.html { redirect_to development_unit_path(@development, @unit), notice: 'Lease has been Created' }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
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
    @lease = Lease.find(params[:id])
  end

  def lease_params
    params.require(:lease).permit(:start_date, :end_date, :duration, :rent, :deposit, :tenant_id, :notes)
  end
end
