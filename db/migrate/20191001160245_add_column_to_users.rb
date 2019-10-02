class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :tin_number, :string
  end
end
