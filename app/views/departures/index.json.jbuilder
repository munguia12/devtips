json.array!(@departures) do |departure|
  json.extract! departure, :id, :fecha, :numero, :articulos_id, :piezas, :solicita, :autoriza
  json.url departure_url(departure, format: :json)
end
