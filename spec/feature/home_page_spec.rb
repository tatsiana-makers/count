require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = CounterApp

feature "serve web app" do
  scenario "should serve home page" do
    visit("/")
    expect(page).to have_content 'Increment'
    expect(page).to have_content 0
  end
end
