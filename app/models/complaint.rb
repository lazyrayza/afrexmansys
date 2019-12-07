class Complaint < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :tenant, class_name: :User, foreign_key: 'tenant_id'
  has_many :reports, dependent: :destroy
  belongs_to :employee, class_name: :User, foreign_key: "employee_id"

  # before_create :word_detect, on: :create

  # private

  # def word_detect
  #   if complaint.description.split(" ").any? { |word| ["light", "tubelight", "bulb", "switch", "wire"].include?(word) }
  #     complaint.employee_id = User.where({ departments_id: "1",employee: "true" }).to_a.sample.id
  #   elsif complaint.description.split(" ").any? { |word| ["toilet", "bathroom", "sink", "shower", "water"].include?(word) }
  #     complaint.employee_id = User.where({ departments_id: "2", employee: true }).to_a.sample.id
  #   elsif complaint.description.split(" ").any? { |word| ["tv" || "washing machine" || "appliance" || "fridge" || "oven" || "toaster" || "kettle"].include?(word) }
  #     complaint.employee_id = User.where({ departments_id: "4", employee: true }).to_a.sample.id
  #   end
  # end
end
