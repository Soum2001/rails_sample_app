require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    # it "should have the title 'Home'" do
    #   visit '/static_pages/home'
    #   expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    # end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "HelpPages" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
end
