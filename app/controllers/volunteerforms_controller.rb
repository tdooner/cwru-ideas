class VolunteerformsController < ApplicationController
	def index
		respond_to do |format|
			format.html # index.html.haml
		end
	end

	def create
		params[:volunteerform][:tags] = params[:volunteerform][:tags].collect { |tag| Tag.find(tag) }
		@volunteerform = @current_user.volunteerforms.create(params[:volunteerform])
		
		respond_to do |format|
			if @volunteerform.save
				format.html { redirect_to(@current_user) }
			else
				format.html { redirect_to(Idea.last) }
			end
		end
	end

end
