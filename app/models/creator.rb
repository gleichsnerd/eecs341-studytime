class Creator < ActiveRecord::Base
	belongs_to :student
	belongs_to :study_group
	belongs_to :course
end
