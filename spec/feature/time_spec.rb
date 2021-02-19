require "capybara/rspec"
require_relative '../../app.rb'
require 'date'

feature 'adding time of last update' do
  scenario 'include the time count last updated' do
    visit('/')
    click_button "Reset"
    time = Time.now.round
    expect(page).to have_content(time)
  end
end
