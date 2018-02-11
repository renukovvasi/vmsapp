class CreateAssociates < ActiveRecord::Migration[5.1]
  def change
    create_table :associates do |t|
      t.string :name
      t.integer :assignment_id
      t.integer :charge_code
      t.timestamp :date
    end
  end
end
