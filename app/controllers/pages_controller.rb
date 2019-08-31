class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def profile
    @user = current_user
    @tenantcomplaints = Complaint.where({tenant_id: @user.id})
    @employeecomplaints = Complaint.where({employee_id: @user.id})
  end

  def home
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
end
