json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :profile_name, :location, :photo_url, :bio
  json.url company_url(company, format: :json)
end
