class AddReferenceOfEmployeeToComplaint < ActiveRecord::Migration[5.2]
  def change
    add_reference :complaints, :employee, foreign_key: {to_table: :users}
  end
end

    # add_reference :people, :foo_bar_store, foreign_key: { to_table: :stores }
