class AddBooleanToUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :vacant, :boolean, default: true
  end
end
