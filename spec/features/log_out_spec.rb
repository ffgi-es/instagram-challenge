feature 'logging out' do
  scenario 'clicking on log out' do
    sign_up

    click_on 'Log out'

    expect(page).to have_content('Signed out successfully')
  end
end
