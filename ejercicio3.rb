def show(movie)
	puts "#{movie[0]}: #{movie[2]}"
end
file = File.open "movies.txt"
data = file.readlines
file.close

data.each_slice(5) do |movie|
	show(movie)
end

