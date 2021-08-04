library(readxl)

Seoul_traffic_2015 <- read_excel('c:/Big Data Contest/Seoul_traffic_2015.xlsx')
Seoul_traffic_2016 <- read_excel('c:/Big Data Contest/Seoul_traffic_2016.xlsx')
Seoul_traffic_2017 <- read_excel('c:/Big Data Contest/Seoul_traffic_2017.xlsx')
Seoul_traffic_2018 <- read_excel('c:/Big Data Contest/Seoul_traffic_2018.xlsx')
Seoul_traffic_2019 <- read_excel('c:/Big Data Contest/Seoul_traffic_2019.xlsx')
Seoul_traffic_2020 <- read_excel('c:/Big Data Contest/Seoul_traffic_2020.xlsx')
Seoul_traffic_2021 <- read_excel('c:/Big Data Contest/Seoul_traffic_2021.xlsx')

Seoul_traffic <- rbind(Seoul_traffic_2015, Seoul_traffic_2016, Seoul_traffic_2017, Seoul_traffic_2018, Seoul_traffic_2019, Seoul_traffic_2020, Seoul_traffic_2021)

library(writexl)

write_xlsx(Seoul_traffic, 'c:/Big Data Contest/Seoul_traffic.xlsx')