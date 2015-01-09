json.array!(@auftrags) do |auftrag|
  json.extract! auftrag, :id, :von, :bis, :kunde_id
  json.url auftrag_url(auftrag, format: :json)
end
