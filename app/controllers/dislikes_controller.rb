class DislikesController < RatesController
	rate_action :dislike

	def index	
		@title = "Disikes"
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

