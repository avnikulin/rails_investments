class Portfolio < ActiveRecord::Base
  belongs_to :user
  has_many :holdings
  accepts_nested_attributes_for :holdings, allow_destroy: true
end
