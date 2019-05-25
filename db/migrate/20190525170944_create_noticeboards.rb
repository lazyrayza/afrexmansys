class CreateNoticeboards < ActiveRecord::Migration[5.2]
  def change
    create_table :noticeboards do |t|
      t.string :name
      t.references :development, foreign_key: true
      t.timestamps
    end
  end
end
