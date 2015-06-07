class AddAmmountToHoldings < ActiveRecord::Migration
  def change
    add_column :holdings, :amount, :integer
  end
end
