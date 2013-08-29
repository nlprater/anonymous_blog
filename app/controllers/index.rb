get '/' do
  @posts = Post.last(5)
  p @posts
  erb :index
end
