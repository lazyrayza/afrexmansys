class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.integer :number_of_employees
      t.timestamps
    end
  end
end
