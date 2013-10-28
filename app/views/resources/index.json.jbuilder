json.array!(@resources) do |resource|
  json.extract! resource, :name, :url, :description, :type, :level, :cost
  json.url resource_url(resource, format: :json)
end
