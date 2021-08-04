library(readxl)
library(dplyr)
library(sqldf)
library(writexl)

Seoul_traffic <- read_excel('c:/Big Data Contest/Seoul_traffic.xlsx')

# Seoul_traffic에서 Date 속성이 character이라서 새로운 new_date 컬럼을 만들고 as.date를 통해 DATE 속성 부여
Seoul_traffic <- Seoul_traffic %>% mutate(DATE = as.Date(Date, format='%Y%m%d')) 

Seoul_traffic <- Seoul_traffic[,c(31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30)]

Seoul_traffic <- Seoul_traffic %>% select(-Date)

write_xlsx(Seoul_traffic, 'c:/Big Data Contest/Seoul_traffic_final.xlsx')