class Development < ApplicationRecord
  has_many :units
  has_many :leases, through: :units
  has_many :employee, class_name: :User, foreign_key: 'employee_id'
end
