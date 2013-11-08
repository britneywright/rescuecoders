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
  end

  describe "About page" do
    before { visit about_path }

    it_should_behave_like "all static pages"
    let(:heading) { 'About Rescue Coders' }
    it_should_behave_like "all static pages"
    let(:page_title){ 'About' }
  end

end