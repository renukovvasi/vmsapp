class CreateHrmsdata < ActiveRecord::Migration[5.1]
  def change
    create_table :hrmsdata do |t|
      t.string :associate_name
      t.integer :associate_id
      t.integer :assignment_id
      t.string :job_title
      t.integer :jon_id
      t.integer :business_id
      t.integer :client_id
      t.string :work_group
      t.integer :hours
      t.string :pay_status
      t.timestamps
    end
  end
end
