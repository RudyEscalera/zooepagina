json.array!(@veterinaria) do |veterinarium|
  json.extract! veterinarium, :id, :nombre, :direccion, :telefono, :movil, :encargado, :activo, :descripcion
  json.url veterinarium_url(veterinarium, format: :json)
end
