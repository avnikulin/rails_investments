class FixTypeColumnNameFromHoldings < ActiveRecord::Migration
  def change
    rename_column :holdings, :type, :position
  end
end
