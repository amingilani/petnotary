json.extract! pet, :id, :tag, :animal_type, :animal_name, :owner_name, :owner_email, :owner_phone, :created_at, :updated_at
json.url pet_url(pet, format: :json)
