N <- 900000
Counter <- 0

for(i in rnorm(N)){
  if(i >=-1 & i<=1){
    Counter <- Counter + 1
  }
}
result = Counter/N
#Se aproxima a E(x) = 68.2% cumpliendo la ley de los numeros
#grandes