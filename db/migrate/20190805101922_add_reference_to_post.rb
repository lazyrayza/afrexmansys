class AddReferenceToPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :noticeboards, foreign_key: true
  end
end
