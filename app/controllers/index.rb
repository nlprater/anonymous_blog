get '/' do
  @posts = Post.last(5).reverse
  erb :index
end

get 'user/:username' do
  "hello world"
end


