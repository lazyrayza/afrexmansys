class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :category
      t.string :make
      t.string :model
      t.integer :barcode
      t.string :origin
      t.string :upc
      t.string :image_url

      t.timestamps
    end
  end
end
