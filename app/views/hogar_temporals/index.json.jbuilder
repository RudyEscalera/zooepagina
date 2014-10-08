json.array!(@hogar_temporals) do |hogar_temporal|
  json.extract! hogar_temporal, :id, :ci, :nombres, :apellidos, :telefono_fijo, :direccion, :numero
  json.url hogar_temporal_url(hogar_temporal, format: :json)
end
