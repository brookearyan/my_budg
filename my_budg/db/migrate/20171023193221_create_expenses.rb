class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :type
      t.integer :cost
      t.integer :start_time

      t.timestamps
    end
  end
end
