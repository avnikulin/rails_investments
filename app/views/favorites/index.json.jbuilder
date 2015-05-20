json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :user_id, :symbol, :comment
  json.url favorite_url(favorite, format: :json)
end
