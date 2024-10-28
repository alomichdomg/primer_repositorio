#CICLOS EN R#
for (i in 1:5) {
  print(i)
}
#i : es la variable que toma los valores del 1 al 5.
#print(i) : imprime el valor de i en cada iteración.
for (i in 1:100) {
  print(paste("alondra",i))
}
for (i in 1:100) {
  print("alondra") #sin la i ya no te marca la numeracion
}
for (i in 1:150) {#LA ETIQUETA i NO IMPORTA
  #TOMA EL VALOR EN ESE INTERVALO, VA CONTABILIZANDO LAS VECES QUE LO VA HACIENDO
  print("llevar a arreglar la lap")
}
vector <- c(3, 5, 7, 9)
vector_3 <- c(1:100)
suma <- 0
for (i in vector_3) { #LO RECONOCE COMO VECTOR, VALOR POR VALOR
  print(paste("la variable i ahora vale", i))
  suma <- suma + i
}
print(suma)
#SALE 24, PQ va de 0+3 y ahora eso es la suma y luego 3(suma)+5 y asi.
#se va sobreescribiendo los valores

#Ejemplo 3: Multiplicar cada elemento de un vector por 2
vector <- c(1, 2, 3, 4, 5)
for (i in 1:length(vector)) {
  vector[i] <- vector[i] * 2
}
print(vector)
#############################
#ejercicio:
#nombre,edades,color
salon <- data.frame(
  nombre = c("Melissa", "Ivan", "Xymena", "Alondra"),
  edad = c(20,20,20,19),
  color = c("morado","azul","lila","naranja")
)
salon[1,2]
for (contador in 1:3) {
  print(paste( salon[contador,1], "tiene", 
               salon[contador,2], "y su color favorito es", 
               salon[contador,3]))#va apegar la cadena nombres con el ocntador
  
}
