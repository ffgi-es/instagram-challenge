describe 'Session buttons', type: :feature do
  describe 'when not logged in' do
    it 'should show options to log in or sign up' do
      visit root_path

      expect(page).to have_selector 'a', text: 'Sign up'
      expect(page).to have_selector 'a', text: 'Sign in'

      expect(page).not_to have_selector 'a', text: 'Log out'
    end
  end

  describe 'when logged in' do
    it 'should show options to log out' do
      sign_up

      visit root_path

      expect(page).not_to have_selector 'a', text: 'Sign up'
      expect(page).not_to have_selector 'a', text: 'Sign in'

      expect(page).to have_selector 'a', text: 'Log out'
    end
  end
end
