json.array!(@chapsticks) do |chapstick|
  json.extract! chapstick, :id, :brand, :flavor
  json.url chapstick_url(chapstick, format: :json)
end
