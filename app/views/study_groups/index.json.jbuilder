json.array!(@study_groups) do |study_group|
  json.extract! study_group, :id, :course_id, :gname, :description, :location
  json.url study_group_url(study_group, format: :json)
end
