require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  subject { page }
  describe "home page" do
    before { visit home_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { 'Home' }
      it { should have_content(heading) }
      it { should_not have_title(page_title) }
  end

  describe "HelpPages" do
    before{ visit help_path}
    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }
    it "should have the content 'Help'" do
      expect(page).to have_content(heading)
    end
    it "should have the title 'Help'" do
      expect(page).to have_title(page_title)
    end
  end

  describe "ContactPages" do
    before {visit contact_path}
    let(:heading)    { 'Contact' }
    let(:page_title) { 'Contact' }
   
    it{should have_selector('h1',text: 'StaticPage contact')}
    it{should have_title("Contact")}
    # it "should have the content 'Contact'" do
    #   visit contact_path
    #   expect(page).to have_selector('h1')
    # end
    # it "should have the title 'Contact'" do
    #   visit contact_path
    #   expect(page).to have_title("Contact")
    # end
  end
  
  describe "AboutPages" do
    before {visit about_path}
    let(:heading)    { 'About' }
    let(:page_title) { 'About' }
    
    it{should have_content(heading)}
    it{should have_title(page_title)}
    # it{should have_content('About')}
    # it{should have_title('About')}
    # it "should have the content 'About'" do
    #   visit about_path
    #   expect(page).to have_content('About')
    # end
    # it "should have the title 'About'" do
    #   visit about_path
    #   expect(page).to have_title("About")
    # end
  end

  it "should have the right links on the layout" do
    visit home_path
    click_link "About"
    expect(page).to have_title(full_title('About'))
  end
end

