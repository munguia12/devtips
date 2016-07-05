json.array!(@productos) do |producto|
  json.extract! producto, :id, :articulos, :existencia, :stockmin, :stockmax, :disponibles
  json.url producto_url(producto, format: :json)
end
