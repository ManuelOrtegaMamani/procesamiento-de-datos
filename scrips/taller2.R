
# taller 2
# Manuel Ortega
# 23-07-2021

# PREGUNTA 1

edades <- c(40,45,78,78,48,51,54,34,59,59,46,41,60,57,34,50,50,28,50,73,46, 26,29,29,27,31,76,78,73,32)

grupo <- NULL

for(g in 1:length(edades)){
  edad <- edades[g]
  grupo[g] <-
    if (edad>50){
    "grupo 1"
    } else if(edad <=50 & edad >= 41){
    "grupo 2"
    } else if(edad <=40 & edad >= 31){
      "grupo 3"
    } else if(edad <= 30){
      "grupo 4"
    } 
}


grupo

# PREGUNTA 2

# Variable inicialización
n <- 0

square <- 0

# While loop

while (square <= 4000) {
  n <- n +1
  square <- n^2
  
}

# Resultado

n

square

# N y SQUARE valen cero (0)
# en while - SQUARE ES UN NUMERO QUE VALE MENOR IGUAL A 4000
# N toma el valor de (n+1)
# AQUARE toma el valor de N y lo eleva al cuadrado
## N, busca el menor valor que multiplicado por si mismo de un valor <= a 4000
## pero N, a ese número le suma 1,
## y SQUARE, eleva ese al cuadrado


# PREGUNTA 3


#x <- c(1,2,3,4,5,6,-1)
coef_var <- function(x){
  if (sum(x<0)!= 0){
   cv=sd(x)/mean(x)
    cv
  } else {
    
    print("Error")
  }
  
}
x <- c(1,2,3,4,5,-6,-1)
coef_var(x)



# otro método

x <- c(1,2,3,4,5,-6,-1)
dato <- which(x >= 0)
dato

coef_var <- function(x){
  if (dato <- which(x >= 0)){
    x <- dato
    cv=sd(x)/mean(x)
    cv
    
  } else {
    
    print("Error")
  }
}
coef_var(x)

