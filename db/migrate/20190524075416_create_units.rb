class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.integer :unit_number
      t.integer :floor
      t.float :size
      t.integer :bedrooms
      t.integer :bathrooms
      t.float :price
      t.boolean :apartment, default: false
      t.text :description
      t.timestamps
    end
  end
end
