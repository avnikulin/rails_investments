class RemoveUserIdFromHoldings < ActiveRecord::Migration
  def change
    remove_column :holdings, :user_id, :integer
  end
end
