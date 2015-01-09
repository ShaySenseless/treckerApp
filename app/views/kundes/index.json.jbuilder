json.array!(@kundes) do |kunde|
  json.extract! kunde, :id, :vorname, :nachname, :handynummer, :festnetz, :email
  json.url kunde_url(kunde, format: :json)
end
