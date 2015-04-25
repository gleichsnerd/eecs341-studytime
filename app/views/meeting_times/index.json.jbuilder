json.array!(@meeting_times) do |meeting_time|
  json.extract! meeting_time, :id, :study_group_id, :mtime
  json.url meeting_time_url(meeting_time, format: :json)
end
