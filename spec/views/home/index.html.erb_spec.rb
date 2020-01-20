require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  it 'should not have a new post button if not logged in' do
    assign(:posts, [])
    allow(view).to receive(:user_signed_in?).and_return false

    render

    expect(rendered).not_to have_selector 'a', text: 'New post'
  end

  it 'should render a post with its username and created date' do
    image = double :image, attached?: true
    user = double :user, username: 'Tester'
    post = double(:post,
                  id: 1,
                  image: image,
                  caption: 'Test caption',
                  created_at: Time.zone.parse('2020-01-01 12:30:23'),
                  user: user)

    assign(:posts, [post])
    assign(:comments, [])
    allow(view).to receive(:url_for) { |x| x }

    render

    expect(rendered).to have_content 'Test caption'
    expect(rendered).to have_content 'Tester posted'
    expect(rendered).to have_content '12:30 01/01/20'
  end
end
