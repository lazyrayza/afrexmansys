class RemoveNonPhotoUploaderPhotoColumnFromComplaints < ActiveRecord::Migration[5.2]
  def change
    remove_column :complaints, :photo
  end
end
