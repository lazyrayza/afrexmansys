class AddAvailableToUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :available, :boolean, default: true
  end
end
