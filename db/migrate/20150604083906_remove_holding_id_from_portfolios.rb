class RemoveHoldingIdFromPortfolios < ActiveRecord::Migration
  def change
    remove_column :portfolios, :holding_id, :integer
  end
end
