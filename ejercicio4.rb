def show(num, name, type)
	# puts "#{type}"
	if(type.eql? "Fire")
		puts "#{num}: #{name}"
	end
end

file = File.open "pokemons.txt"
data = file.readlines
data.each do |variable|
	variable.chomp!
end
file.close

# print data

data.each_slice(1) do |poke|
	poke=poke[0].split(",")
	# print poke
	if(!poke[0].nil? && !poke[1].nil? && !poke[2].nil?)
		show(poke[0].strip,poke[1].strip,poke[2].strip)
	end
end