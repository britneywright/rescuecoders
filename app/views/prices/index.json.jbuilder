json.array!(@prices) do |price|
  json.extract! price, :name
  json.url price_url(price, format: :json)
end
