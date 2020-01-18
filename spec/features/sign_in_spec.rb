feature 'signing in' do
  let(:user) { User.create(email: 'test@example.com',
                           password: '123456') }

  scenario 'entering correct details' do
    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: '123456'

    click_on 'Log in'

    expect(page).to have_content 'Signed in successfully'
  end
end
