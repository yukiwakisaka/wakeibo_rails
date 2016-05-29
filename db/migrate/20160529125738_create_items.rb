class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :item_name

      t.timestamps null: false
    end
  end
end
