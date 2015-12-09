json.array!(@responsibles) do |responsible|
  json.extract! responsible, :id, :code, :start_time, :end_time
  json.url responsible_url(responsible, format: :json)
end
