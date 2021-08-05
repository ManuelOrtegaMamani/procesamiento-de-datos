
# Manuel Ortega
# 02-08-2021

# Librerias

# install.packages("raster")
# install.packages("sp")
library(raster)
library(sp)
?getData

# Descarga  de world clim. Recuerde revisar la documentacio con ?getdata
r <- getData("worldclim",var="bio",res=10)

r <- r[[c(1,12)]]
names(r) <- c("Temp","Prec")

##Ubicación de los puntos en un data frame
lats<-c(14.628434, 9.396111, 9.161417)
lons<-c(-90.5227, -11.72975, -11.709417)
coords<- data.frame(x=lons, y=lats)

##Extracción de los puntos
points<-SpatialPoints(coords, proj4string=r@crs)
values<-extract(r,points)
df<-cbind.data.frame(coordinates(points),values)
df

##Grafica de los puntos
par(bg=NA, mar=c(0,0,0,0),oma=c(0,0,0,0))
plot(r[[1]])
plot(points,add=T)
head(points)
