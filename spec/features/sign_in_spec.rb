feature 'signing in' do
  scenario 'entering correct details' do
    sign_up
    click_on 'Log out'

    visit new_user_session_path

    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: '123456'

    click_on 'Log in'

    expect(page).to have_content 'Signed in successfully'
  end
end
