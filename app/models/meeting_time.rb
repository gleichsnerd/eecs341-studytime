class MeetingTime < ActiveRecord::Base
	belongs_to :study_group
	validates_presence_of :study_group
end
