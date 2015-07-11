class AddTradedAtToHoldings < ActiveRecord::Migration
  def change
    add_column :holdings, :traded_at, :float
  end
end
