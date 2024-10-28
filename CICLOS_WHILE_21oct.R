library("ggmsa")
###ciclos while###
#while() ejecuta comandos hasta que la condicion no se satisface
#while(condicion){
# prueba la conicion ; ejecuta; 
# } deja de ejecutar cuando ya no cumpla la condicion.
#errores comunes:
#no inicializar la condicion:
#se tiene que correr el ciclo inicial, todo desde el comienzo.
#se sigue corriendo hasta que se deje de cumplir la funcion y ahi se sale del ciclo.
num_mensaje <- 1
while (num_mensaje<=10) {
  print(paste("hoy es un dia nublado", num_mensaje)) #asi corre infinitamente
  num_mensaje<- num_mensaje+1 #aqui con esto para que cuando llegue a 10 se deje de repetir
}
#se usa para hacer más robustos los programas
readline(prompt = "escoge la opccion 1 o 2: ") -> variable
while (variable !=1 & variable !=2) { #los !es para que si algo es diferente de 
  readline(prompt = "escoge la opccion 1 o 2: ")->variable
  variable<- as.numeric(variable)
  #si se pone algo diferente sigue marcando el ciclo; cuando se ponga algo igual a 1 o 2
  #se sale del ciclo. 
}
#la suma inferior al 100:
#1+2=3 y 3+4 
suma <- 1 #valor incial 
numero <- 1
while (suma < 100) {
  print(suma) 
  suma <- suma + numero +1
  numero <- numero +1 #aqui hago que el numero valga 2 y asi sucesivamente 
}
#conteo de un numero inverso: 10 -1 y que de un mensaje.
inicial <- 100

while (inicial >= 1) { #la condicion tiene que ser cierta para que se ejecute el ciclo
  print(paste("hola", inicial))
 inicial <- inicial - 1
  print(inicial)
}
temperatura <- as.numeric(readline(prompt = "selecciona un valor de temperatura: "))
while (temperatura >= 0) {
print(paste("la temperatura es: ", temperatura))
  sample(-2:1, 1)-> aleatoria
  temperatura <- temperatura-aleatoria
  print(paste("la temperatura es:", temperatura))
}

#usando el archivo de las escusas.
var <- 10
while (var>=1) {
  intro <-excusas_2024[sample(1:dim(excusas_2024)[1],1),1]
  persona <- excusas_2024[sample(1:dim(excusas_2024)[1],1),2]
  mentira <- excusas_2024[sample(1:dim(excusas_2024)[1],1),3]
  print(paste(intro,persona,mentira))
  var<- var-1
}
library(BSgenome.Ecoli.NCBI.20080805)
insulinas_fasta <- readDNAStringSet("DATOS_SECUENCIAS/Insulinas.fasta")
secuencia_fasta <- readDNAStringSet("GCF_000005845.2_ASM584v2_genomic.fna")
sec1<-BSgenome.Ecoli.NCBI.20080805$NC_008253  
BSgenome.Ecoli.NCBI.20080805$NC_008253[1:300]

insulinas_fasta[1:300]
secuencia_fasta[[1]][1:300]
alphabetFrequency(secuencia_fasta)

sec1<-BSgenome.Ecoli.NCBI.20080805$NC_008253  
num_a <- 0
contador <- 1
while(num_a < 100){
  
  if (sec1[[1]][contador]==DNAString("A")){
    num_a <- num_a+1
  }
  contador <- contador+1
}
contador
