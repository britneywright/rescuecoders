class LikesController < ApplicationController

	def index
		@likes = user.likes
	end
		
	def create
		@like = user.like(resource)
		redirect_to user
	end

	def destroy
		@unlike = user.unlike(resource)
		redirect_to user
	end

	def user
		User.find(params[:user_id])
	end

	def resource
		Resource.find_by(params[:resource_id])
	end	
end
