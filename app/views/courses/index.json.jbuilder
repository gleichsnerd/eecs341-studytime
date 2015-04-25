json.array!(@courses) do |course|
  json.extract! course, :id, :cname
  json.url course_url(course, format: :json)
end
