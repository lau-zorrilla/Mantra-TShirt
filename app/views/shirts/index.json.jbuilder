json.array!(@shirts) do |shirt|
  json.extract! shirt, :id, :name, :description
  json.url shirt_url(shirt, format: :json)
end
