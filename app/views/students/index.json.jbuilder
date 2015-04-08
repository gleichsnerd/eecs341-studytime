json.array!(@students) do |student|
  json.extract! student, :id, :sid, :sname, :email, :pwd, :token
  json.url student_url(student, format: :json)
end
