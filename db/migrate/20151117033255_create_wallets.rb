class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :user_key
      t.string :name
      t.integer :price, default: 0

      t.timestamps null: false
    end
  end
end
