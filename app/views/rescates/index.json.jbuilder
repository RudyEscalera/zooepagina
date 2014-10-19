json.array!(@rescates) do |rescate|
  json.extract! rescate, :id, :direccion_rescate, :observacion, :fecha
  json.url rescate_url(rescate, format: :json)
end
