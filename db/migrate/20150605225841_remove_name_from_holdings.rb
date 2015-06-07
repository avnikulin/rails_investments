class RemoveNameFromHoldings < ActiveRecord::Migration
  def change
    remove_column :holdings, :name, :string
  end
end
