class Report < ApplicationRecord
  belongs_to :complaint
  belongs_to :employee, class_name: :User, foreign_key: "employee_id"

  after_create :update_complaint_resolved

#Method for updating the complaint
  private

  def update_complaint_resolved
    complaint.resolved = true
    complaint.save
  end
end
