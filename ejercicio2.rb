

archivo1=File.open("fuente.txt","r")

i=0
# contenidoArchivo1 = Array.new(13) { Array.new(5) }
contenidoArchivo1=[]
auxArreglo2=[]

elementos=[]
lineas = archivo1.each do |variable|
	# print variable
	auxArreglo2=[]
	# j=0
	elementos=variable.split(" ")
	# print elementos
	elementos.each do |elemento|

		auxArreglo2.push(elemento.chomp)
		#contenidoArchivo1[i][j]=elemento
		# j=j+1	

	end
	contenidoArchivo1.push(auxArreglo2)
	i=i+1
end

# print contenidoArchivo1


print contenidoArchivo1

row=0
column=0
resultado=0
while row<contenidoArchivo1.length
	resultado+=contenidoArchivo1[row][2].to_f
	row+=1
end

resultado2=0

contenidoArchivo1.each do |x|
	resultado2+=x[2].to_f
end
puts resultado2
puts resultado