require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  it 'should not have a new post button if not logged in' do
    assign(:posts, [])
    allow(view).to receive(:user_signed_in?).and_return false

    render

    expect(rendered).not_to have_selector 'a', text: 'New post'
  end
end
