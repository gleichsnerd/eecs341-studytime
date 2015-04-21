class Student < ActiveRecord::Base
	#Rich m-to-m rel. between student and studygroup
	has_many :members
	has_many :study_groups, :through => :member

	#Rich one-to-many rel. between student and studygroup where student is the creator
	has_many :create_studygroups
	has_many :study_groups, :through => :create_studygroup

	#Rich one-to-many rel. between student and course where student is the creator
	has_many :create_courses
	has_many :courses, :through => :create_course
end
