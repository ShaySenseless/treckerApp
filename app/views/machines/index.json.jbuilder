json.array!(@machines) do |machine|
  json.extract! machine, :id, :name, :benzin, :available
  json.url machine_url(machine, format: :json)
end
