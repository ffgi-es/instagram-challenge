feature 'creating a new post' do
  scenario 'clicking on new post and completing a form' do
    sign_up
    visit root_path

    click_on 'New post'

    fill_in 'caption', with: 'Test caption'
    attach_file 'image', File.expand_path('files/test.png', fixture_path)

    click_on 'Submit'

    expect(page).to have_content 'Test caption'
    expect(page).to have_selector 'img'
  end
end
