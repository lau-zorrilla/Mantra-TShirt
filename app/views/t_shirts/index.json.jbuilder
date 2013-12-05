json.array!(@t_shirts) do |t_shirt|
  json.extract! t_shirt, :id, :title, :t-shirt_id, :description
  json.url t_shirt_url(t_shirt, format: :json)
end
