library(tidyverse)

library(ggplot2)

data <- read.csv("https://opendata.ecdc.europa.eu/covid19/casedistribution/csv", na.strings = "", fileEncoding = "UTF-8-BOM")

df <- data.frame('dateRep','cases')

ggplot(data, aes(x=dateRep, y=cases, group=1)) +
  geom_line(color="red")+
  geom_point()

plt.show()
