class Course < ActiveRecord::Base

	#Many-to-many relationship between Course and Professors
	has_many :teaches
	has_many :professors, :through => :teaches

	#One-to-many Relationship between Course and StudyGroup
	has_one :study_group

	#Relationship between Course and Student: A course can only have one student creator
	has_one :creator
	has_one :student, :through => :creator
end
