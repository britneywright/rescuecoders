class RatesController < ApplicationController

	def index
		@rates = user.send("#{rate_action}s".to_sym)
	end
	
	def create
		user.send(rate_action, resource)
	end

	def destroy
		user.send("un{rate_action}".to_sym, resource)
	end

	private

	def user
		user = User.find(params[:user_id])
	end

	def resource
		resource = Resource.find(params[:resource_id])
	end

	def self.rate_action(action = nil)
		@rate_action ||= action
	end

	def rate_action
		self.class.rate_action
	end
end