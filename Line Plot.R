library(tidyverse)

library(ggplot2)

data <- filter(
  read.csv("https://opendata.ecdc.europa.eu/covid19/casedistribution/csv", na.strings = "", fileEncoding = "UTF-8-BOM"),
  countriesAndTerritories =="United_States_of_America"|
    countriesAndTerritories =="United_Kingdom"|
    countriesAndTerritories == "South_Korea"|
    countriesAndTerritories == "China" &
    cases==1)

ggplot(data, aes(x=dateRep, y=cases, group=countriesAndTerritories, color=countriesAndTerritories)) +
    geom_smooth(aes(color=countriesAndTerritories))+
    labs(title = "Pandemic")+
    ylab("Cases")+
    xlab("Date")+
    scale_y_continuous(trans = 'log10')
   # scale_x_date()
