require_relative 'web_helpers.rb'

feature 'signing up', type: :feature do
  scenario 'filling in signing up form' do
    sign_up

    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end
