class User < ActiveRecord::Base
	has_many :ideas
	has_many :comments
	has_many :tags
	has_many :volunteerforms
	easy_roles :roles
end
