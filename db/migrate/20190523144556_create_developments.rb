class CreateDevelopments < ActiveRecord::Migration[5.2]
  def change
    create_table :developments do |t|
      t.string :name
      t.text :address
      t.boolean :gym, default: false
      t.boolean :swimming_pool, default: false
      t.boolean :sauna_and_steam, default: false
      t.boolean :generator, default: false
      t.integer :parking_space
      t.integer :number_of_units
      t.timestamps
    end
  end
end
