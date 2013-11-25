class LikesController < RecommendationsController
	rate_action :like

	def index	
		super
		@title = "Likes"
	end

	def create
		super
		redirect_to user
	end

	def destroy
		super
		redirect_to user
	end
end
