get '/post/:id' do	
  @post = Post.where(:id => params[:id]).first
  @tags = @post.tags
  erb :posts
end

