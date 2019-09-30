class Development < ApplicationRecord
  # serialize :photo
  mount_uploader :photo, PhotoUploader
  has_one :notice_board
  has_many :posts, through: :notice_board
  has_many :units
  has_many :tenant, class_name: :User, foreign_key: 'tenant_id', through: :units
  has_many :leases, through: :units
  has_many :employee, class_name: :User, foreign_key: 'employee_id'
  # has_one :admin, class_name: :User, foreign_key: "admin_id"
end
