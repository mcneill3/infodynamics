json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :company_name, :address, :purchased_at
  json.url customer_url(customer, format: :json)
end
