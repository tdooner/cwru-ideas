class Tag < ActiveRecord::Base
	has_and_belongs_to_many :ideas
	has_and_belongs_to_many :volunteerforms

	validates_presence_of :name
end
