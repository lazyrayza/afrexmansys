class Lease < ApplicationRecord
  # belongs_to :tenant, class_name: :User, foreign_key: 'tenant_id'
  belongs_to :unit

  def lease_length
    if end_date - start_date < 1
      Lease.fail
    end
  end
end
