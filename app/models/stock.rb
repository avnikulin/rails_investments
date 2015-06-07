class Stock < ActiveRecord::Base
  has_many :holdings
  accepts_nested_attributes_for :holdings, allow_destroy: true
end
