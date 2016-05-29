json.array!(@exchanges) do |exchange|
  json.extract! exchange, :id, :user_id, :exchange_date, :plus_item_id, :minus_item_id, :amount
  json.url exchange_url(exchange, format: :json)
end
