describe PostsController, type: :controller do
  describe 'GET #new' do
    it 'redirects to log in if not logged in' do
      get :new
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe 'POST #create' do
    it 'creates a post with an image' do
      user = User.create email: 'postcreate@example.com', password: '123456'
      sign_in user

      image = fixture_file_upload('files/test.png', 'image/png')
      post :create, params: { caption: 'test caption',
                              image: image }

      expect(Post.last.caption).to eq 'test caption'
      expect(Post.last.image.attached?).to eq true

      sign_out user
    end
  end
end
