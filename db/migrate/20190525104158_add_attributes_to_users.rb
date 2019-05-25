class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nationality, :string
    add_column :users, :contact_number, :string
    add_column :users, :age, :integer
    add_column :users, :dob, :date
    add_column :users, :bio, :text
    add_column :users, :photo, :string
    add_column :users, :admin, :boolean, default: false
    add_column :users, :tenant, :boolean, default: false
    add_column :users, :employee, :boolean, default: false

  end
end
