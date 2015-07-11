class AddDatePurchasedToHoldings < ActiveRecord::Migration
  def change
    add_column :holdings, :date_purchased, :datetime
  end
end
