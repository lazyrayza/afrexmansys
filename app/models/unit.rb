class Unit < ApplicationRecord
  belongs_to :development
  has_many :leases
end
