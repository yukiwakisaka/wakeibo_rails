class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.integer :wallet_id
      t.string :category_id
      t.string :memo
      t.string :detail
      t.integer :price
      t.date :payment_date
      t.date :debit_date

      t.timestamps null: false
    end
  end
end
