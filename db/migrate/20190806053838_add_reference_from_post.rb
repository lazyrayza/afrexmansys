class AddReferenceFromPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :notice_board, foreign_key: true
  end
end
