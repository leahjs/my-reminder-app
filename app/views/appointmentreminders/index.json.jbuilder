json.array!(@appointmentreminders) do |appointmentreminder|
  json.extract! appointmentreminder, :id
  json.url appointmentreminder_url(appointmentreminder, format: :json)
end
