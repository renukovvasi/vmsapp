class AddEmpidColumnToAssociates < ActiveRecord::Migration[5.1]
  def change
    add_column :associates, :emp_id, :integer
  end
end
