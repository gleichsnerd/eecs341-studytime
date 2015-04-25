json.array!(@teaches) do |teach|
  json.extract! teach, :id, :professor_id, :course_id, :semester, :year
  json.url teach_url(teach, format: :json)
end
