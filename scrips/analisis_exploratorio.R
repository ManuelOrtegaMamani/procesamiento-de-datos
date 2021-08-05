
# Analisis exploratorio
# Manuel Ortega
# 26-07-2021

m1 <- c(21,30,29,30,27,29)
m2 <- c(21,30,29,30,27,70)

# Media - Mediana
mean(m1);mean(m2)
median(m1);median(m2)
# Desviacion estandar
sd(m1);sd(m2)
# rango
range(m1)
# 
edad <- c(21,34,10,15,37)
estatura <- c(1.8,1.7,1.5,1.4,1.7)

sd(edad)/mean(edad)
sd(estatura)/mean(estatura)


# Graficos en R, paquete base

airquality
summary(airquality)
head(airquality)
complete.cases(airquality)

airq <- airquality[complete.cases(airquality),]

summary(airq)

dim(airquality)
dim(airq)

# Correlación entre variables
cor.data <- cor(airq)

?cor
cor.data

plot(airq)

windows()

plot(airq)

# Entre que variable tiene la correlacion mas alta?
# Entre que variable tiene la correlacion mas baja?
# Entre que variable tiene la correlacion negativa?

# Gráfico de dispersión
plot(airq$Temp,airq$Ozone, xlab = "Temperatura (°F)", ylab = "Ozono (ppb)",
     pch = 16, col="red", main = "Temp Vs Ozone")

# Histograma de frecuencias
png("resultados/hist_ozono.png",width =520, height = 480)

hist(airquality$Ozone, breaks = 13,xlim = c(0,200), ylim=c(0,30), col="skyblue", xlab="",
     main = "")
box()



# na.rm = quitar casos "na"
# linea punteada en el grafico
abline(v=mean(airquality$Ozone,na.rm = T),lty=2)
text(50,25,"Mu = 42.3")
rug(airquality$Ozone)

dev.off()

# boxplot o diagrama de cajas y bigotes

boxplot(airquality$Solar.R)
boxplot(airquality$Solar.R~airquality$Month)

#with(airquality,{boxplot(Solar.r~Month, col="blue"})

  
# Graficos con ggplot2
library(ggplot2)
trigo <- read.csv("datos/baseTrigo.csv",row.names = 1, stringsAsFactors = T)
str(trigo)
head(trigo,10)  
summary(trigo)    
brend <- ggplot(trigo,aes(x=Variedad, y=Rend))+ geom_boxplot()+
  facet_grid(.~ubicacion) + ylab("Rendimiento(ton/ha)")+ theme_bw()
ggsave("resultados/boxplotRend.png", brend,height=4,width=6)
?ggsave

# Histograma de frecuencias
ggplot(trigo,aes(x=Rend))+geom_histogram(bins = 15,colour="black",fill="skyblue")+
  ggtitle("Histograma de rendimiento")+theme_bw()

# Grafico de dispersion
ggplot(trigo,aes(x=tiemp,y=Rend))+geom_point()+geom_smooth()+
  facet_grid(ubicacion~.)

# Grafico de burbujas
iris
head(iris)
summary(iris)

p.iris <- ggplot(iris,aes(x=Sepal.Length,y=Petal.Length))+
  geom_point(aes(color=Species,size=Petal.Width), alpha=0.7) + theme_bw()

ggsave("resultados/plotiris.png",p.iris,height = 4, width = 5)

###########################################
# Library
install.packages("fmsb")
library(fmsb)

# Create data: note in High school for Jonathan:
data <- as.data.frame(matrix( sample( 2:20 , 10 , replace=T) , ncol=10))
colnames(data) <- c("math" , "english" , "biology" , "music" , "R-coding", "data-viz" , "french" , "physic", "statistic", "sport" )

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
data <- rbind(rep(20,10) , rep(0,10) , data)

# Check your data, it has to look like this!
# head(data)

# The default radar chart 
radarchart(data)


#############################################

airquality
summary(airq)
head(airquality)
dim(airquality)

plot(airq$Temp,airq$Wind, xlab = "Temperatura (°F)", ylab = "Viento",
     pch = 16, col="green", main = "Temp Vs Viento")

ggplot(airquality,aes(x=Day, y=Ozone))+geom_point()+geom_line()

ggplot(airquality,aes(x=Day, y=Ozone))+geom_point()+facet_grid(Month~.)

ggplot(airquality,aes(x=Day, y=Ozone))+geom_point()+facet_grid(Month~.)
