class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def profile
    @user = current_user
    @tenantcomplaints = Complaint.where({tenant_id: @user.id})
    @employeecomplaints = Complaint.where({employee_id: @user.id})
  end

  def home
  end
end
