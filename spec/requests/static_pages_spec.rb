require 'spec_helper'

describe "Static pages" do
  
  subject { page }
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end
    
  describe "Home page" do
    before { visit root_path }

  	let(:heading) { 'Rescue Coders' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home')}

    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        sign_in user
        visit root_path
      end

      describe "follower/following counts" do
        let(:other_user) { FactoryGirl.create(:user) }
        before do
          other_user.follow!(user)
          visit root_path
        end
        
        it { should have_link("0 following", href: following_user_path(user)) }
        it { should have_link("1 followers", href: followers_user_path(user)) }
      end

      describe "like/dislikes counts" do
        let(:other_user) { FactoryGirl.create(:user) }        
        it { should have_link("0 likes", href: user_likes_path(user)) }
        it { should have_link("0 dislikes", href: user_dislikes_path(user)) }
      end  
    end            
  end

  describe "About page" do
    before { visit about_path }

    it_should_behave_like "all static pages"
    let(:heading) { 'About Rescue Coders' }
    it_should_behave_like "all static pages"
    let(:page_title){ 'About' }
  end

end
