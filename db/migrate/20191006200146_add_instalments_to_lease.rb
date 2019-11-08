class AddInstalmentsToLease < ActiveRecord::Migration[5.2]
  def change
    add_column :leases, :installments, :integer
  end
end
