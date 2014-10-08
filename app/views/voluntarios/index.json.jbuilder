json.array!(@voluntarios) do |voluntario|
  json.extract! voluntario, :id, :nombre, :apellido_paterno, :apellido_materno, :estado, :ci, :fecha_nacimiento, :lugar_nacimiento, :edad, :estado_civil, :direccion, :telefono_fijo, :telefono_movil, :email, :licensia_conducir, :formacion_academica
  json.url voluntario_url(voluntario, format: :json)
end
