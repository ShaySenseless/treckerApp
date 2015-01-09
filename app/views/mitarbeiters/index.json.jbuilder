json.array!(@mitarbeiters) do |mitarbeiter|
  json.extract! mitarbeiter, :id, :vorname, :nachname, :handy, :festnetz, :az_monat, :az_konto
  json.url mitarbeiter_url(mitarbeiter, format: :json)
end
