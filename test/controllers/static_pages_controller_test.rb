require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should have the right title on home page" do
  	get :home
  	assert_select 'title', "Rescue Coders | Home"
  end

  test "should have the right title on the about page" do
  	get :about
  	assert_select 'title', "Rescue Coders | About"
  end	
end
