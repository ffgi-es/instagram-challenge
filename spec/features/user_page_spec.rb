feature 'user personal page' do
  scenario 'shows just that users posts' do
    sign_up username: 'Person1', email: 'person1@example.com'

    post_photo caption: 'Person1 photo1'
    
    click_on 'Log out'
    sign_up username: 'Person2', email: 'person2@example.com'

    post_photo caption: 'Person2 photo1'

    click_on 'Person2'

    expect(page).to have_content 'Person2 posted', count: 1
    expect(page).not_to have_content 'Person1 posted'

    expect(page).to have_content 'Person2 photo1'
    expect(page).not_to have_content 'Person1 photo1'
  end
end
