class AddTypeToHoldings < ActiveRecord::Migration
  def change
    add_column :holdings, :type, :string
  end
end
