class AddAssignmentIdColumnToAssociates < ActiveRecord::Migration[5.1]
  def change
    add_column :associates, :timesheet_id, :integer
  end
end
