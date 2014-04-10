json.array!(@binaries) do |binary|
  json.extract! binary, :data
  json.url binary_url(binary, format: :json)
end