class BookmarksController < ApplicationController

	def index
		@bookmarks = user.bookmarks
		@title = "Bookmarks"
	end
		
	def create
		@bookmark = user.bookmark(resource)
		redirect_to user
	end
	
	def destroy
		@unbookmark = user.unbookmark(resource)
		redirect_to user
	end

	private

	def user
		user = User.find(params[:user_id])
	end

	def resource
		resource = Resource.find(params[:resource_id])
	end

end	
