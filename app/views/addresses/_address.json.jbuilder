json.extract! address, :id, :house_id, :postcode, :mainaddress, :detailaddress, :created_at, :updated_at
json.url address_url(address, format: :json)