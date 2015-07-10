def echo(a)
	p a
end

def shout(a)
	p a.upcase
end

def repeat(a, n=2)
	p [a] * n * ' '
end

def start_of_word(a, n)
	a[0..(n-1)]
end

def first_word(string)
	string.split(' ').first
end

def titleize(word)
	ignore_words = "and", "over", "the"
	word.split.each_with_index.map { |i, index| ignore_words.include?(i) && index > 0 ? i : i.capitalize }.join(" ") 
end