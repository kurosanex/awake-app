require 'spec_helper'

describe "Static pages" do
  
  subject { page }
  
  describe "Home page" do
    before { visit root_path }
    
    it { should have_content('Team Awake') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('| Home') }
  end
  
  describe "Help Page" do
    before { visit help_path }
    
    it { should have_content('Help') }
    it { should have_title(full_title('Help'))}
  end
  
  describe "About page" do
    before { visit about_path }
    
    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end
  
  describe "Contact page" do
    before { visit contact_path }
    
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end

