class CreateHoldings < ActiveRecord::Migration
  def change
    create_table :holdings do |t|
      t.integer :user_id
      t.integer :stock_id
      t.string :name

      t.timestamps null: false
    end
  end
end
