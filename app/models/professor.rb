class Professor < ActiveRecord::Base
	#Rich many-to-many rel. between professor and course
	has_many :teaches
	has_many :courses, :through => :teaches


	validates :pname, presence: true
	validates :email, presence: true
end