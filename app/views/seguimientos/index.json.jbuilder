json.array!(@seguimientos) do |seguimiento|
  json.extract! seguimiento, :id, :id_adopcion, :observacion
  json.url seguimiento_url(seguimiento, format: :json)
end
