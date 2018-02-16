class CreateAssociates < ActiveRecord::Migration[5.1]
  def change
    create_table :associates do |t|
      t.string :name
      t.integer :codecharge
      t.timestamp :date
      t.integer :hours
    end
  end
end
