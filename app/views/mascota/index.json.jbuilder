json.array!(@mascota) do |mascotum|
  json.extract! mascotum, :id, :nombre, :especie, :raza, :sexo, :edad, :color, :estado, :depar, :hexa, :octa, :anti, :esterilizacion, :observacion
  json.url mascotum_url(mascotum, format: :json)
end
