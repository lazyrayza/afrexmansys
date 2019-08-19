class AddPhotoToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :photo, :string
  end
end
