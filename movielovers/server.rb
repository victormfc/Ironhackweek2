require "sinatra"
require "pry"
require "imdb"
require_relative "./lib/movie.rb"

get "/movie" do
	erb(:movie)
end

post "/moviesearcher" do
	new_search = MovieSearcher.new
	first_movie = params[:movie_name]
	new_search.search_movie (movie)

end
