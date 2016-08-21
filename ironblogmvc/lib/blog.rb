class Blog
	def initialize
		@posts = []
	end

	def add_post post
		@posts.push post
	end

	def publish_front_page page = 1
		exit if page == 0
		init_index = (page * 3) - 3
		order_by_date
		posts_to_show = @posts[init_index, 3]
		if !posts_to_show.nil?
			posts_to_show.each_with_index do |post, index|
				post.print init_index + index + 1
			end
		end
		pagination page
	end

	def pagination page
		number_of_page = []
		if @posts.length > 3
			len = @posts.length
			pages = (len / 3)
			if len.modulo(3) != 0
				pages += 1
			end
			if pages > 1
				puts ''
				pages.times do |n_page|
					number_of_page.push (n_page + 1).to_s + (n_page == page -1 ? '*' : '')
				end
				puts number_of_page.join('   ')
				puts ''
				puts '0 = Exit!'
				puts ''
				print "> "
				new_page = gets.chomp.to_i
				if new_page <= -1 || new_page > pages
					new_page = 0
				end
				publish_front_page new_page
			end
		end
	end

	def order_by_date
		@posts.sort! { |pre, cur| cur.date <=> pre.date }
	end
end