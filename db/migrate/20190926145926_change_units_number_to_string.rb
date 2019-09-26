class ChangeUnitsNumberToString < ActiveRecord::Migration[5.2]
  def change
    change_column :units, :unit_number, :string
  end
end
