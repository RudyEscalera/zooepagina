json.array!(@voluntario_mascota) do |voluntario_mascotum|
  json.extract! voluntario_mascotum, :id
  json.url voluntario_mascotum_url(voluntario_mascotum, format: :json)
end
