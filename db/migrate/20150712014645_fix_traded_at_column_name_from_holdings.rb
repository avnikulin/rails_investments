class FixTradedAtColumnNameFromHoldings < ActiveRecord::Migration
  def change
    rename_column :holdings, :traded_at, :trade_price
  end
end
