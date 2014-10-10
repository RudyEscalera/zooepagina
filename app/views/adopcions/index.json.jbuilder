json.array!(@adopcions) do |adopcion|
  json.extract! adopcion, :id, :numero_adultos, :numero_ninios, :numero_perros, :numero_gatos, :numero, :referencia_casa, :numero_referencia1, :numero_referencia2
  json.url adopcion_url(adopcion, format: :json)
end
