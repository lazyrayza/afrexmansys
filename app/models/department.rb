class Department < ApplicationRecord
  has_one :admin, class_name: :User, foreign_key: 'admin_id'
  has_many :employees, class_name: :User, foreign_key: 'employee_id'
end
