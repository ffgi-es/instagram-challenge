def sign_up(username: 'tester',
            email: 'test@example.com',
            password: '123456',
            password_confirmation: '123456')
  visit new_user_registration_path

  fill_in 'Username', with: username
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  fill_in 'Password confirmation', with: password_confirmation
  click_on 'Sign up'
end
