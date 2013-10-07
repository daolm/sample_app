require 'spec_helper'

describe "Static pages" do
  
  subject { page }
  
  # Home page test
  describe "Home page" do
    before { visit root_path }

    # it "should have the h1 'Sample App'" do
      # visit root_path
      # expect(page).to have_content('Sample App')
    # end

    # it "should have the base title" do
      # visit root_path
      # expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    # end

    # it "should not have a custom page title" do
      # visit root_path
      # expect(page).not_to have_title('| Home')
    # end
    
    it { should have_content('Sample App') }
    it { should have_title(full_title(''))}
    it { should have_title('| Home') }
    
  end

  # Help page test
  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  # About page test
  describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  # Contact page test
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
  
end