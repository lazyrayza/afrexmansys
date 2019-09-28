class AddPhotoToDevelopment < ActiveRecord::Migration[5.2]
  def change
    add_column :developments, :photo, :string
  end
end
