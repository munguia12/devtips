json.array!(@entradas) do |entrada|
  json.extract! entrada, :id, :fecha, :remision, :cantidad, :articulo, :refaccion, :recibe, :proveedor, :contacto, :autoriza, :solicta
  json.url entrada_url(entrada, format: :json)
end
