class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :expense_type
      t.integer :cost
      t.datetime :start_time
      t.integer :user_id
      t.timestamps
    end
  end
end
