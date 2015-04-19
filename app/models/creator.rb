class Creator < ActiveRecord::Base
	has_many :study_group
	has_many :course
	belongs_to :student
	validates_presence_of :student
end
