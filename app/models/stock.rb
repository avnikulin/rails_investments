class Stock < ActiveRecord::Base
  has_many :holdings
  has_many :users, :through => :holdings
end
