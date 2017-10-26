class CreateMonths < ActiveRecord::Migration[5.1]
  def change
    create_table :months do |t|
      t.string :name
      t.integer :date
      t.integer :user_id

      t.timestamps
    end
  end
end
