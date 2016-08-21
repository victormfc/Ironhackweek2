require "sinatra"
require "pry"
require "./lib/blog"
require "./lib/post"

blog = Blog.new
blog.add_post Post.new 'title 1', 'text'
blog.add_post Post.new 'title 2', 'text'
blog.add_post Post.new 'title 3', 'text', true
blog.add_post Post.new 'title 4', 'text'
blog.add_post Post.new 'title 5', 'text'
blog.add_post Post.new 'title 6', 'text'
blog.add_post Post.new 'title 7', 'text'
blog.add_post Post.new 'title 8', 'text'
blog.add_post Post.new 'title 9', 'text'
blog.add_post Post.new 'title 10', 'text', true
blog.add_post Post.new 'title 11', 'text'
blog.add_post Post.new 'title 12', 'text'
blog.add_post Post.new 'title 13', 'text'
blog.add_post Post.new 'title 14', 'text'
blog.order_by_date


get "/" do
	@posts = #TOOS LOSPOSTS
    erb :index
end