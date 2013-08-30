get '/tag/:id' do
  @tag = Tag.where(:id => params[:id]).first
  @posts = @tag.posts
  erb :tags
end