json.array!(@members) do |member|
  json.extract! member, :id, :student_id, :study_group_id, :join_date
  json.url member_url(member, format: :json)
end
