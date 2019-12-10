class AddColumnToLease < ActiveRecord::Migration[5.2]
  def change
    add_column :leases, :tenantpaying, :boolean, default: true
  end
end
