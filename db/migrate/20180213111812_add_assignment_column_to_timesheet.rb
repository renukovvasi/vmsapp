class AddAssignmentColumnToTimesheet < ActiveRecord::Migration[5.1]
  def change
    add_column :timesheets, :assignment_id, :integer
  end
end
