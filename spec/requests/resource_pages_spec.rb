require 'spec_helper'

describe "Resource pages" do

	subject { page }
	
	describe "index" do	
		before { visit resources_path }

		it { should have_title('Resources') }
		it { should have_content('Resources') }
		it { should have_link('Add a new resource', new_resource_path) }
	end

	describe "resource page" do
		before do
			@resource = Resource.first || Resource.create
			visit resource_path(@resource)
		end

		it { should have_selector('h2', text: @resource.name) }
		it { should click_link_or_button('Edit') }
		it { should click_link_or_button('Back') }
		it { should have_content(@resource.liked_by_count) }
		it { should have_content(@resource.disliked_by_count) }

		context "when user logged in" do
			let(:user) { FactoryGirl.create(:user) }

			before do
				sign_in user
				visit resource_path(@resource)
			end

			describe "liking a resource" do
				before do
					user.unlike(@resource)
					visit user_likes_path(user)
				end	

				it { should have_content('Like') }
			end	
		end	
	end
end
