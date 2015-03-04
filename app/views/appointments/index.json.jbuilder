json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :who, :what, :when, :why, :where
  json.url appointment_url(appointment, format: :json)
end
