class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :description
      t.references :tenant
      t.timestamps
    end
    add_foreign_key :posts, :users, column: :tenant_id, primary_key: :id

  end
end
