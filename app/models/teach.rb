class Teach < ActiveRecord::
	has_and_belongs_to_many :professor
	has_and_belongs_to_many :course
	validates_presence_of :professor
	validates_presence_of :course
end
