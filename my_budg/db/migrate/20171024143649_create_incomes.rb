class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.integer :user_id
      t.integer :amount

      t.timestamps
    end
  end
end
