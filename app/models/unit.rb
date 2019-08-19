class Unit < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :development
  has_many :leases
  has_many :tenant, class_name: :User, foreign_key: 'tenant_id'
end
