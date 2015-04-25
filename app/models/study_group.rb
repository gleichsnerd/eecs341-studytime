class StudyGroup < ActiveRecord::Base
	#One-to-many relationship between StudyGroup and meeting_times
	has_many :meeting_times

	#Many-to-one rel. between study_group and course
	belongs_to :course

	#Rich many-to-many rel. between studygroup and student
	has_many :members
	has_many :students, :through => :member

	#Rich many-to-one rel. between studygroup and student where studen is the creator
	has_one :creator
	has_one :student, :through => :creator




	#Content validations
	validates :course_id, presence: true
	validates :gname, presence: true
	validates :location, presence: true
end
