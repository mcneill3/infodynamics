json.array!(@calls) do |call|
  json.extract! call, :id, :phone_number, :contact_name, :recieved_at, :responded, :is_voicemail, :message, :customer_id
  json.url call_url(call, format: :json)
end
