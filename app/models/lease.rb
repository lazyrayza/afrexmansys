class Lease < ApplicationRecord
  belongs_to :tenant, class_name: :User, foreign_key: 'tenant_id'
  belongs_to :unit
end
