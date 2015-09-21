json.array!(@emails) do |email|
  json.extract! email, :id, :email_address, :email_subject, :email_text, :customer_id
  json.url email_url(email, format: :json)
end
