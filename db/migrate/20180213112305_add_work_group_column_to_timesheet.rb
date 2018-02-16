class AddWorkGroupColumnToTimesheet < ActiveRecord::Migration[5.1]
  def change
    add_column :timesheets, :work_group, :string
  end
end
