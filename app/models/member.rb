class Member < ActiveRecord::Base
	has_and_belongs_to_many :student
	has_and_belongs_to_many :study_group
end
