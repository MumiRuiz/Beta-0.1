json.array!(@pets) do |pet|
  json.extract! pet, :id, :pet_name, :pet_age, :pet_type, :pet_breed, :pet_gender, :pet_size, :pet_special_needs, :pet_household_match
  json.url pet_url(pet, format: :json)
end
