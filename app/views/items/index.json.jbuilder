json.array!(@items) do |item|
  json.extract! item, :id, :user_id, :category_id, :item_name
  json.url item_url(item, format: :json)
end
