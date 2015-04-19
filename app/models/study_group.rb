class StudyGroup < ActiveRecord::Base
	has_many :meeting_time
	belongs_to :creator
	belongs_to :for_course
	has_and_belongs_to_many :member
	validates_presence_of :creator
	validates_presence_of :for_course
end
