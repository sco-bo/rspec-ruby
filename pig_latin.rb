

def translate (word)

	vowels = %w[a e i o u]
	aplha = ('a'..'z').to_a
	consonants = aplha - vowels
	the_qs = %w(qu squ)
	string = []

	multi_words = word.split.each do |words|
	
		find_first = words.index(/[aeiou]/)
	
		if words.start_with?(*the_qs)
			string << words[find_first + 1, words.length - find_first + 1] + words[0, find_first + 1] + "ay"
		elsif words.start_with?(*vowels)
			string << (words + "ay")
		elsif words.start_with?(*consonants)
			string << (words[find_first, words.length - find_first] + words[0,find_first] + "ay")
		end
	end
	string.join(" ")
end