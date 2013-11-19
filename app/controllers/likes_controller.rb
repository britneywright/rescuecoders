class LikesController < RecommendationsController
	recommendation_action :like

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
