class Student < ActiveRecord::Base
	#Rich m-to-m rel. between student and studygroup
	has_many :members
	has_many :study_groups, :through => :member

	#Rich one-to-many rel. between student and studygroup/course where student is the creator
	has_many :creators
	has_many :study_groups, :through => :creator

	validates :sname, presence: true
	validates :email, presence: true
	validates :pwd, presence: true
	validates_uniqueness_of :email

    has_secure_password
end