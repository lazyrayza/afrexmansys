class ReportsController < ApplicationController
  before_action :find_report, only: [:show, :update]
  before_action :find_complaint, only: [:show, :create, :new]

  def show
  end

  def new
    @report = Report.new
  end

  def create
    @employee = @complaint.employee
    @report = Report.new(report_params)
    @report.complaint_id = @complaint.id
    @report.employee_id = current_user.id
    if @report.save
      respond_to do |format|
        format.html { redirect_to complaint_report_path(@complaint, @report) }
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
    if @report.save
      respond_to do |format|
        format.html {redirect_to complaint_report_path(@complaint, @report)}
        format.js
      end
    else
      respond_to do |format|
        format.html {render :new}
        format.js
      end
    end
  end

  private

  def find_report
    @report ||= Report.find(params[:id])
  end
  def find_complaint
    @complaint ||= Complaint.find(params[:complaint_id])
  end

  def report_params
    params.require(:report).permit(:description, :resolved, :resolved_photo)
  end
end
