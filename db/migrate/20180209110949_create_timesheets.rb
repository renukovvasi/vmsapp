class CreateTimesheets < ActiveRecord::Migration[5.1]
  def change
    create_table :timesheets do |t|
      t.string :timesheet_name
      t.integer :timesheet_id
      t.string :payroll_name
      t.string :business_unit
      t.string :associate_name
      t.integer :associate_id
      t.string :job_title
      t.integer :job_id
      t.integer :charge_code
      t.integer :hours_worked
      t.timestamp :date
    end
  end
end
