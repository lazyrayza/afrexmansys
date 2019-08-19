class Complaint < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :tenant, class_name: :User, foreign_key: 'tenant_id'
  has_many :reports
  belongs_to :employee, class_name: :User, foreign_key: "employee_id"
end
