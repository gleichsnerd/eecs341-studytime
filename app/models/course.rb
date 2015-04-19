class Course < ActiveRecord::Base
	belongs_to :creator
	has_and_belongs_to_many :for_course
	has_and_belongs_to_many :teach
	validates_presence_of :creator
	validates_presence_of :for_course
	validates_presence_of :teach
end
