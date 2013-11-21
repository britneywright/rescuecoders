class RecommendationsController < ApplicationController

	def index
		@recommendations = user.send("#{recommendation_action}s".to_sym)
	end
	
	def create
		user.send(recommendation_action, resource)
	end

	def destroy
		user.send("un{recommendation_action}".to_sym, resource)
	end

	private

	def user
		user = User.find(params[:user_id])
	end

	def resource
		resource = Resource.find(params[:resource_id])
	end

	def self.recommendation_action(action = nil)
		@recommendation_action ||= action
	end

	def recommendation_action
		self.class.recommendation_action
	end
end