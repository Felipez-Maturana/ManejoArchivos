def inverse(x)
	raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric
	1.0 / x
	rescue
		puts "uff"
end




puts inverse(2)
puts inverse('not a number') 


