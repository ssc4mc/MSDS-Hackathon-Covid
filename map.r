## Import necessary packages
library(tidyverse)

# Read data
df <- read.csv("https://opendata.ecdc.europa.eu/covid19/casedistribution/csv", na.strings = "", fileEncoding = "UTF-8-BOM")

# Manipulate data

## Practice
new2["new col"] <- df$cases
afgh_sum <- sum(new2)
print(afgh_sum)

countries <- data.frame(unique(df$countriesAndTerritories))
print(countries)
countries["total_cases"] <- NA
countries["countries"] <- countries$unique.df.countriesAndTerritories.



for (i in length(countries)){
  print(countries[i])
  
  
}

