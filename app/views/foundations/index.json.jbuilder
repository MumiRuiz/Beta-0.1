json.array!(@foundations) do |foundation|
  json.extract! foundation, :id, :foundation_name, :username, :email, :password, :location, :website
  json.url foundation_url(foundation, format: :json)
end
