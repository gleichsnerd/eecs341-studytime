class Member < ActiveRecord::Base
	belongs_to :student
	belongs_to :study_group
end
