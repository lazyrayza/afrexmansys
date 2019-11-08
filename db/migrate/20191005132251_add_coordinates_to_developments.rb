class AddCoordinatesToDevelopments < ActiveRecord::Migration[5.2]
  def change
    add_column :developments, :latitude, :float
    add_column :developments, :longitude, :float
  end
end
