require 'rails_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { expect have_content('Help') }
    it { expect have_title("| Help") }
  end

  describe "About page" do
    before { visit about_path }

    it { expect have_content('About Us') }
    it { expect have_title("| About Us") }
  end

  describe "Contact page" do
    before { visit contact_path }

    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
