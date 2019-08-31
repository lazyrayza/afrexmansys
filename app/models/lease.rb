class Lease < ApplicationRecord
  belongs_to :tenant, class_name: :User, foreign_key: 'tenant_id'
  belongs_to :unit
  after_create :remove_vacancy

  private

  def remove_vacancy
    unit.available = false
    unit.save
  end

  # def lease_length
  #   if end_date - start_date < 1
  #     Lease.fail
  #   end
  # end

end
