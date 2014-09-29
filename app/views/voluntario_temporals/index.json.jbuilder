json.array!(@voluntario_temporals) do |voluntario_temporal|
  json.extract! voluntario_temporal, :id, :nombre, :correo, :telefono, :ocupacion, :genero, :activo
  json.url voluntario_temporal_url(voluntario_temporal, format: :json)
end
