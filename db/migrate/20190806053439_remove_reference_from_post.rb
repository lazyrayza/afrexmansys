class RemoveReferenceFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_reference :posts, :noticeboard, index: true, foreign_key: true
  end
end
