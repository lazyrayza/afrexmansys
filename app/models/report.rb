class Report < ApplicationRecord
  belongs_to :complaint
  belongs_to :employee, class_name: :User, foreign_key: "employee_id"
end
