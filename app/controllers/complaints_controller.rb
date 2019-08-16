class ComplaintsController < ApplicationController
  before_action :find_complaint, only: [:show, :update]

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
    @complaint = Complaint.new(complaint_params)
    @complaint.tenant_id = @tenant.id

    if @complaint.description.include? "light" || "tubelight" || "bulb" || "switch" || "wire"
      @complaint.employee_id = User.where({ departments_id: "1",employee: "true" }).to_a.sample.id
    elsif @complaint.description.include? "toilet" || "bathroom" || "sink" || "shower" || "water"
      @complaint.employee_id = User.where({ departments_id: "2", employee: true }).to_a.sample.id
    end

    if @complaint.save
      respond_to do |format|
        format.html { redirect_to complaint_path(@complaint) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

  def update
    if @complaint.save
      respond_to do |format|
        format.html { redirect_to complaints_path(@complaint) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
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
