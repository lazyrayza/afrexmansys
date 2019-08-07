class Unit < ApplicationRecord
  belongs_to :development
  has_many :leases
  has_many :tenant, class_name: :User, foreign_key: 'tenant_id'
end
