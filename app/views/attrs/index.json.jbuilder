json.array!(@attrs) do |attr|
  json.extract! attr, :id, :name, :type
  json.url attr_url(attr, format: :json)
end
