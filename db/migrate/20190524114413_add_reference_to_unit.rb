class AddReferenceToUnit < ActiveRecord::Migration[5.2]
  def change
    add_reference :units, :development, foreign_key: true

  end
end
