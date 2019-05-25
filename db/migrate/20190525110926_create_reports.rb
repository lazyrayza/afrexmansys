class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.text :description
      t.boolean :resolved, default: false
      t.references :employee
      t.references :complaint, foreign_key: true
      t.string :resolved_photo

      t.timestamps
    end
      add_foreign_key :reports, :users, column: :employee_id, primary_key: :id

  end
end
