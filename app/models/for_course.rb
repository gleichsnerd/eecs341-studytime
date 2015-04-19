class ForCourse < ActiveRecord::Base
	has_one :study_group
	has_and_belongs_to_many :course
	validates_presence_of :study_group
	validates_presence_of :course
end
