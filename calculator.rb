def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	total = 0
	if array.length > 0 then
		array.each do |item|
			total += item
		end
		return total
	else
		return 0
	end
end

def multiply(*numbers)
	numbers.inject {|sum, n| sum * n}
end

def power(a, b)
	a**b
end

def factorial(n)
	(1..n).inject(:*) || 1
end
