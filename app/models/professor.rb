class Professor < ActiveRecord::Base
	has_and_belongs_to_many :teach
	validates_presence_of :teach
end
