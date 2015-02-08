require 'spec_helper'

def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

describe "Static pages" do

  subject { page }

  describe "Home page" do
    #before { visit '/static_pages/home' }
    before { visit '/' }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit '/help' }

    it { expect have_content('Help') }
    it { expect have_title("| Help") }
  end

  describe "About page" do
    before { visit '/about' }

    it { expect have_content('About Us') }
    it { expect have_title("| About Us") }
  end

  describe "Contact page" do
    before { visit '/contact' }

    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end