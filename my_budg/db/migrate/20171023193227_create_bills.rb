class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :company
      t.string :type
      t.integer :cost
      t.datetime :start_time
      t.integer :user_id

      t.timestamps
    end
  end
end
