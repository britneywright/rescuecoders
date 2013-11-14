class LikesController < ApplicationController

	def index
		@likes = user.likes
	end
		
	def create
		@likes = user.likes
	end

	def user
		User.find(params[:user_id])
	end
end
