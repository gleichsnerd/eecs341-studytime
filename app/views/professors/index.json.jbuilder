json.array!(@professors) do |professor|
  json.extract! professor, :id, :pname, :email
  json.url professor_url(professor, format: :json)
end
