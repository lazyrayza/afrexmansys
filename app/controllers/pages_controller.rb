class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def profile
    @user = current_user
    @tenantcomplaints = Complaint.where({tenant_id: @user.id})
    @employeecomplaints = Complaint.where({employee_id: @user.id})
    @lease = Lease.where(tenant_id: current_user).to_a.first

    # @user_lease = Lease.find(params[:id])
  end

  def home
  end

  def paymenthistory
    @user = User.find(params[:user_id])
    @lease = Lease.where(tenant_id: @user.id).to_a.first

  end
  def paymenthistory
    @user = User.find(params[:user_id])
    @lease = Lease.where(tenant_id: @user.id).to_a.first

  end

  def insights
    @user = current_user
    @employees = User.where(employee: true).to_a
    @tenants = User.where(tenant: true).to_a

    if current_user.employee?
      @report = Report.where(employee_id: current_user)
    end

    # @employeecomplaints = Complaint.where({employee_id: @user.id})
    # @employeecomplaints.each do |complaint|
    #   if complaint.created_at != complaint.updated_at
    #     @resolvedcomplaints = Array.new(complaint)
    #   end
    # end
  end
  def agreement
    @tenant = User.find(params[:user_id])
    @lease = Lease.where(tenant_id: @tenant.id).to_a.first


  end

  def admininsights
    @units = Unit.all
    @leases = Lease.all
    @tenants = User.where(tenant: true)
    @employees = User.where(employee: true)
    @leases = Lease.all
    @developments = Development.all
  end

  def devcharts
    @development = Development.find(params[:development_id])
  end
end
