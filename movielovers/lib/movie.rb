class MovieSearcher
	def search_movie movie
		searched = Imdb::Search.new (movie)
		film = searched.movies[0]
		film.title
	end
end
