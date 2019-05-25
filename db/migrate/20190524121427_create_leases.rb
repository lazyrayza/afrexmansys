class CreateLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :leases do |t|
      t.date :start_date
      t.date :end_date
      t.integer :duration
      t.float :rent
      t.float :deposit
      t.text :notes
      t.references :unit, foreign_key: true
      t.references :tenant
      t.timestamps
    end
      add_foreign_key :leases, :users, column: :tenant_id, primary_key: :id
  end
end
