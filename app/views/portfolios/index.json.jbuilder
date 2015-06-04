json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :id, :user_id, :holding_id, :name
  json.url portfolio_url(portfolio, format: :json)
end
