class Holding < ActiveRecord::Base
  #belongs_to :user
  belongs_to :stock
  belongs_to :portfolio, :inverse_of => :holdings
  #validates :name, presence: true  
end
