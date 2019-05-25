class Complaint < ApplicationRecord
  belongs_to :tenant, class_name: :User, foreign_key: 'tenant_id'
  has_many :reports
end
