library(rvest)
library(tidyverse)

## BIRTH RATE OF STARTUPS 
url <- "https://www.pordata.pt/en/DB/Municipalities/Search+Environment/Table/5826467"
page <- read_html(url)
table <- page %>% html_nodes("table") %>%  .[4] %>% 
  html_table() %>% .[[1]]

names <- select(table, 1)
names <- names[105:117,]


values <- select(table,1:11)
values <- values[392:403,]

year <- slice(table,377)
year <- select(year,1:11)

data_startups <- rbind(year,values)
data_startups <- cbind(names,data_startups)

birth_startups <- data_startups
colnames(birth_startups) <- data_startups[1,]
birth_startups <- birth_startups[-1,]

birth_startups$'2020' <- birth_startups$'2019'
#write.csv(birth_startups,"birth_startups.csv")



## UNEMPLOYMENT RATE 
url <- "https://www.pordata.pt/en/DB/Municipalities/Search+Environment/Table/5826472"
page <- read_html(url)
table <- page %>% html_nodes("table") %>%  .[4] %>% 
  html_table() %>% .[[1]]

names <- select(table, 1)
names <- names[103:115,]


values <- select(table,1:13)
values <- values[392:403,]

year <- slice(table,377)
year <- select(year,1:13)

unemployment <- rbind(year,values)
unemployment <- cbind(names,unemployment)

unemployment_data <- unemployment
colnames(unemployment_data) <- unemployment[1,]
unemployment_data <- unemployment_data[-1,]

#write.csv(unemployment,"unemployment.csv")


## EMPLOYED IN TERTIARY SECTOR 
url <- "https://www.pordata.pt/en/DB/Municipalities/Search+Environment/Table/5826446 "
page <- read_html(url)
table <- page %>% html_nodes("table") %>%  .[4] %>% 
  html_table() %>% .[[1]]

names <- select(table, 1)
names <- names[103:115,]


values <- select(table,1:4)
values <- values[384:395,]

year <- slice(table,369)
year <- select(year,1:4)

tertiary_employ <- rbind(year,values)
tertiary_employ  <- cbind(names,tertiary_employ )

tertiary_employ2 <- tertiary_employ
colnames(tertiary_employ2) <- tertiary_employ[1,]
tertiary_employ2 <- tertiary_employ2[-1,]

tertiary_employ2$'2020' <- tertiary_employ2$'2011'
#write.csv(tertiary_employ ,"tertiary_employ .csv")


## CONNECTED TO PUBLIC WATER 
url <- "https://www.pordata.pt/en/DB/Municipalities/Search+Environment/Table/5825773 "
page <- read_html(url)
table <- page %>% html_nodes("table") %>%  .[4] %>% 
  html_table() %>% .[[1]]

names <- select(table, 1)
names <- names[478:490,]


values <- select(table,1:14)
values <- values[833:844,]

year <- slice(table,378)
year <- select(year,1:14)

public_water <- rbind(year,values)
public_water <- cbind(names,public_water)

public_water_data <- public_water
colnames(public_water_data) <- public_water_data[1,]
public_water_data <- public_water_data[-1,]


public_water_data$"2020" <- public_water_data$"2019"
#write.csv(public_water_data,"public_water_data.csv")



## WASTE MANAGEMENT HIERARCHY INDEX 
url <- "https://www.pordata.pt/en/DB/Municipalities/Search+Environment/Table/5826521"
page <- read_html(url)
table <- page %>% html_nodes("table") %>%  .[4] %>% 
  html_table() %>% .[[1]]

names <- select(table, 1)
names <- names[103:115,]


values <- select(table,1:13)
values <- values[392:403,]

year <- slice(table,377)
year <- select(year,1:13)

wasteindex <- rbind(year,values)
wasteindex <- cbind(names,wasteindex)

wasteindex2 <- wasteindex
colnames(wasteindex) <- wasteindex[1,]
wasteindex <- wasteindex[-1,]

#write.csv(wasteindex,"wasteindex.csv")


## % OF VOTERS IN LOCAL ELECTIONS
url <- "https://www.pordata.pt/en/DB/Municipalities/Search+Environment/Table/5826523"
page <- read_html(url)
table <- page %>% html_nodes("table") %>%  .[4] %>% 
  html_table() %>% .[[1]]

names <- select(table, 1)
names <- names[105:117,]


values <- select(table,1:13)
values <- values[395:406,]

year <- slice(table,380)
year <- select(year,1:13)

voters <- rbind(year,values)
voters <- cbind(names,voters)

voters2 <- voters
colnames(voters) <- voters[1,]
voters <- voters[-1,]

voters$"2020" <- voters$"2021"
voters <- select(voters,-"2021")
#write.csv(voters,"voters.csv")



## % COMPUTERS WITH INTERNET
url <- "https://www.pordata.pt/en/DB/Municipalities/Search+Environment/Table/5826524"
page <- read_html(url)
table <- page %>% html_nodes("table") %>%  .[4] %>% 
  html_table() %>% .[[1]]

names <- select(table, 1)
names <- names[107:119,]


values <- select(table,1:12)
values <- values[396:407,]

year <- slice(table,381)
year <- select(year,1:12)

internet_comp <- rbind(year,values)
internet_comp <- cbind(names,internet_comp)

internet_comp2 <- internet_comp
colnames(internet_comp) <- internet_comp[1,]
internet_comp <- internet_comp[-1,]

#write.csv(internet_comp,"internet_comp.csv")

## % CRIME 
url <- "https://www.pordata.pt/en/DB/Municipalities/Search+Environment/Table/5826442"
page <- read_html(url)
table <- page %>% html_nodes("table") %>%  .[4] %>% 
  html_table() %>% .[[1]]

names <- select(table, 1)
names <- names[103:115,]


values <- select(table,1:14)
values <- values[394:405,]

year <- slice(table,379)
year <- select(year,1:14)

crime <- rbind(year,values)
crime <- cbind(names,crime)

crime2 <- crime
colnames(crime) <- crime[1,]
crime <- crime[-1,]

#write.csv(crime,"crime.csv")


## MUSEUMS % OF NATIONAL 
url <- "https://www.pordata.pt/en/DB/Municipalities/Search+Environment/Table/5826485"
page <- read_html(url)
table <- page %>% html_nodes("table") %>%  .[4] %>% 
  html_table() %>% .[[1]]

names <- select(table, 1)
names <- names[103:115,]


values <- select(table,1:14)
values <- values[393:404,]

year <- slice(table,378)
year <- select(year,1:14)

museums <- rbind(year,values)
museums <- cbind(names,museums)

museums2 <- museums
colnames(museums) <- museums[1,]
museums <- museums[-1,]

museums <- str_remove(museums$`2001`,'┴')
#write.csv(museums,"museums.csv")




## % ROAD FATALITY 
url <- "https://www.pordata.pt/en/DB/Municipalities/Search+Environment/Table/5826486"
page <- read_html(url)
table <- page %>% html_nodes("table") %>%  .[4] %>% 
  html_table() %>% .[[1]]

names <- select(table, 1)
names <- names[104:116,]


values <- select(table,1:14)
values <- values[394:405,]

year <- slice(table,379)
year <- select(year,1:14)

fatality <- rbind(year,values)
fatality <- cbind(names,fatality)

fatality2 <- fatality
colnames(fatality) <- fatality[1,]
fatality <- fatality[-1,]

fatality$'2020' <- fatality$`2019`

#write.csv(fatality,"fatality.csv")


## SURVIVAL OF ICT FIRMS
data <- read.csv("C:/Users/Oluwole Olatoke/Desktop/SMART REGIONS/INPUT DATA/ICT SURVIVAL.csv")
ict_firms <- data[10:21,]
ict_firms <- select(ict_firms,"Oeste", X.1,X.3,X.5, X.7, X.9,X.11, X.13, X.15,X.17,X.19,X.21)
colnames(ict_firms) <- c('Oeste','2019','2018','2017', '2016', '2015', '2014','2013', '2012', '2011', '2010','2009')
ict_firms <- select(ict_firms,'Oeste', '2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019')

ict_firms$'2020' <- ict_firms$'2019'
#write.csv(ict_firms,"ict_firms.csv")

## FUEL CONSUMPTION
data <- read.csv("C:/Users/Oluwole Olatoke/Desktop/SMART REGIONS/INPUT DATA/FUEL CONSUMPTION PER RESIDENT.csv")
fuel_comsump <- data[8:19,]
fuel_comsump <- select(fuel_comsump,"Oeste", X.1,X.3,X.5, X.7, X.9,X.11, X.13, X.15,X.17)
colnames(fuel_comsump) <- c('Oeste','2019','2018','2017', '2016', '2015', '2014','2013', '2012', '2011')
fuel_comsump<- select(fuel_comsump,'Oeste', '2011','2012','2013','2014','2015','2016','2017','2018','2019')

fuel_comsump$"2020" <- fuel_comsump$`2019`
#write.csv(fuel_comsump,"fuel_comsump.csv")

## TRANSPARENCY INDEX
transparent <- read.csv("C:/Users/Oluwole Olatoke/Desktop/SMART REGIONS/INPUT DATA/TRANSPARENCY INDEX.csv")
transparent <- rename(transparent, "2013"= "X2013")
transparent$'2020' <- transparent$'2013'
#write.csv(transparent,"transparent.csv")