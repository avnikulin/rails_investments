class Stock < ActiveRecord::Base
  has_many :holdings
  accepts_nested_attributes_for :holdings, allow_destroy: true
  def symbol_with_name
      symbol+', '+name
  end
end
