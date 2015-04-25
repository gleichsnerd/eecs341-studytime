class MeetingTime < ActiveRecord::Base
	belongs_to :study_group

	validates :study_group_id, presence: true
	validates :mtime, presence: true
end
