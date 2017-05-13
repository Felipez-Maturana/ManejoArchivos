def palabraEnArchivo (contenidoLineas,palabra)
	contenidoLineas.each do |linea|
		if(linea.eql? palabra)
			puts "La palabra #{palabra} se encuentra!"
			return
		end
	end
	puts "La palabra #{palabra} NO se encuentra :("
	puts "La palabra #{palabra} ha sido agregada"
	File.open("hola.txt", "a"){|f| f.puts("#{palabra}")}
	return
end

file = File.open("hola.txt", "r")
contenido = file.readlines
contenido.map { |e| e.chomp! } 
file.close

archivoPalabras = File.open("palabras.txt", "r")
palabras = archivoPalabras.readlines
palabras.map { |e| e.chomp! } 
archivoPalabras.close


palabras.each do |palabra|
	palabraEnArchivo(contenido,palabra)	
end
