json.array!(@personas) do |persona|
  json.extract! persona, :id, :ci, :nombres, :apellido_paterno, :apellido_materno, :fecha_nacimiento
  json.url persona_url(persona, format: :json)
end
