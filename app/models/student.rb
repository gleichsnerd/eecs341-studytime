class Student < ActiveRecord::Base
	has_many :creator
	has_and_belongs_to_many :member
end
