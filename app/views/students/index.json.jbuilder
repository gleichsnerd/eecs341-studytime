json.array!(@students) do |student|
  json.extract! student, :id, :sname, :email, :pwd, :token
  json.url student_url(student, format: :json)
end
