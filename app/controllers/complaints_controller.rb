class ComplaintsController < ApplicationController
  before_action :find_complaint, only: [:show, :create, :update]

  def index
    @complaints = Complaint.all
  end

  def show
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @tenant = current_user
    @unit = @user.unit
    @lease = Lease.new(lease_params)
  end

  def update
    if @complaint.save
      redirect_to complaints_path
    else
      render :new
    end
  end

private

  def find_complaint
    @complaint ||= Complaint.find(params[:id])
  end

  def complaint_params
    params.require(:complaint).permit(:description, :photo)
  end

end

