get '/user/:username' do
  @user = User.where(:username => params[:username]).first
  @posts = @user.posts
  erb :users
end