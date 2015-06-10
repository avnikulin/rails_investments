class Holding < ActiveRecord::Base
  #belongs_to :user
  belongs_to :stock
  belongs_to :portfolio
  #validates :name, presence: true  
end
