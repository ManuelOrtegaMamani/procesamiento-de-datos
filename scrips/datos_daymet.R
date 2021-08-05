
# Manuel Ortega
# 02-08-2021

install.packages("daymetr")
install.packages("dplyr")
install.packages("ggplot2")
library(ggplot2)
library(daymetr)
library(dplyr)

##Descarga de la información

df <- download_daymet(site = "Oak Ridge National Laboratories",
                      lat = 36.0133,
                      lon = -84.2625,
                      start = 2000,
                      end = 2010,
                      internal = TRUE,
                      simplify = TRUE)
head(df)
dim(df)
str(df)
df$measurement<-as.factor(df$measurement)
summary(df$measurement)

##Graficas de la información descargada
df %>%
  mutate(date = as.Date(paste(year, yday, sep = "-"), "%Y-%j")) %>%
  filter(measurement == "tmax..deg.c.") %>%
  ggplot() +
  geom_line(aes(x = date, y = value)) +
  facet_wrap(~ measurement, ncol = 2)

write.csv(df,"basedatosclima.csv")

