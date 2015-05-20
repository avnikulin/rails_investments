class Favorite < ActiveRecord::Base
  belongs_to :user
  
    # ensure that a user_id is present
    validates :user_id, presence: true

    # ensure that title is present and at least 10 chars long
    validates :symbol, length: { minimum: 2 }, presence: true

    # ensure the url is present, and respects the URL format for http/https
    #validates :url, format: {with: Regexp.new(URI::regexp(%w(http https)))}, presence: true
  
end
