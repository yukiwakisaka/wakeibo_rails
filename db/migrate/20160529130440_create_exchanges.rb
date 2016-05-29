class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.integer :user_id
      t.date :exchange_date
      t.integer :plus_item_id
      t.integer :minus_item_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
