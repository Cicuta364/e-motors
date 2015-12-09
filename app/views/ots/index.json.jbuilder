json.array!(@ots) do |ot|
  json.extract! ot, :id, :motor_type, :brand, :power, :speed, :voltage, :current, :serial, :oder_activities
  json.url ot_url(ot, format: :json)
end
