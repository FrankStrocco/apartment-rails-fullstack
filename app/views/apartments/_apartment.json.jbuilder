json.extract! apartment, :id, :address, :city, :state, :zip_code, :building_manager, :phone, :hours, :created_at, :updated_at
json.url apartment_url(apartment, format: :json)
