class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.text :description
      t.string :photo
      t.boolean :resolved, default: false
      t.references :tenant
      t.timestamps
    end
      add_foreign_key :complaints, :users, column: :tenant_id, primary_key: :id

  end
end
