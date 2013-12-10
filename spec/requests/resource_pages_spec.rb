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
		it { should have_link('Edit') }
		it { should have_link('Back') }

		context "when user logged in" do
			before do
				user = User.first || User.create
				sign_in user
				visit resource_path(@resource)
			end

			it { should have_content('Bookmark') }
			it { should have_content('Dislike') }
			it { should have_content('Like') }
		end	
	end
end
