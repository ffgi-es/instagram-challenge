feature 'logging out' do
  scenario 'clicking on log out' do
    visit new_user_registration_path

    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'

    click_on 'Log out'

    expect(page).to have_content('Signed out successfully')
  end
end
