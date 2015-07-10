class Book

	def title=(word)
		ignore_words = "and", "over", "the", "in", "of", "a", "an"
		title = word.split.each_with_index.map { |i, index| ignore_words.include?(i) && index > 0 ? i : i.capitalize }
		@title = title.join(" ") 
	end

	def title
		@title
	end
end

