feature 'commenting on a photo' do
  scenario 'clicking comment and writing a comment appears under a photo' do
    sign_up username: 'person1', email: 'p1@example.com'
    post_photo
    click_on 'Log out'
    sign_up username: 'person2', email: 'p2@example.com'

    click_on 'Comment'

    fill_in 'comment', with: 'Test comment'
    click_on 'Submit'

    expect(page).to have_content 'person2 says Test comment'
  end
end
