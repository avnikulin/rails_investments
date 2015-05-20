class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.integer :user_id
      t.integer :stock_id
      t.string :name

      t.timestamps null: false
    end
  end
end
