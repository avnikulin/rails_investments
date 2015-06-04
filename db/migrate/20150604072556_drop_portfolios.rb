class DropPortfolios < ActiveRecord::Migration
  def change
    drop_table :portfolios
  end
end
