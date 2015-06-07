class AddPortfolioIdToHoldings < ActiveRecord::Migration
  def change
    add_column :holdings, :portfolio_id, :integer
  end
end
