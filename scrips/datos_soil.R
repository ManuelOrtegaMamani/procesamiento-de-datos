
# Manuel Ortega
# 02-08-2021

library(rgdal)
library(raster)
install.packages("sp")
library(sp)
library(rgdal)


datos<-raster("out.tif")
datos


##Visualizacion de los datos
plot(datos)


##Extraccion de los valores
puntos<-rasterToPoints(datos)
head(puntos)