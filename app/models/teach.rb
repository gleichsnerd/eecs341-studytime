class Teach < ActiveRecord::Base
	belongs_to :professor
	belongs_to :course
end
