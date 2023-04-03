require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  subject { page }
  describe "home page" do
    before { visit home_path }
    
    it "should have the content 'Sample App'" do
      
      it { should have_content('Sample App') }
    end
    # it "should have the title 'Home'" do
    #   
    #   it { should have_title("Ruby on Rails Tutorial Sample App") }
    # end
    it "should not have a custom page title" do
  
      it { should_not have_title('| Home') }
    end
  end

  describe "HelpPages" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end


end
