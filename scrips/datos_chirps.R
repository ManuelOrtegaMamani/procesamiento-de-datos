
# Manuel Ortega
# 02-08-2021

install.packages("chirps")
install.packages("Rcpp")
library(chirps)
library(Rcpp)


##Ubicacion de los puntos para la extraccion de la informacion
lonlat <- data.frame(lon = c(-55.0281,-54.9857),
                     lat = c(-2.8094, -2.8756))
#Fechas de los datos
dates <- c("2017-12-15", "2017-12-31")


##Extraccion de los puntos
dt<-get_chirps(lonlat,dates)
dt


write.csv(dt,"basededatos_pp.csv")
