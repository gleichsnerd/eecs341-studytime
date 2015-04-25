json.array!(@creators) do |creator|
  json.extract! creator, :id, :study_group_id, :course_id, :create_date
  json.url creator_url(creator, format: :json)
end
