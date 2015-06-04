class Holding < ActiveRecord::Base
  belongs_to :user
  belongs_to :stock
  validates :name, presence: true
end
