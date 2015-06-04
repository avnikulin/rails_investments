json.array!(@holdings) do |holding|
  json.extract! holding, :id, :user_id, :stock_id, :name
  json.url holding_url(holding, format: :json)
end
