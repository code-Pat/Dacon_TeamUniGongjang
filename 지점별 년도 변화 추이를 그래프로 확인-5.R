library(dplyr)
library(sqldf)
library(stringr)
library(ggplot2)

Seoul_traffic_no_tim <- read.csv('c:/Big Data Contest/Seoul_traffic_no_tim.csv')

Seoul_traffic_no_tim <- Seoul_traffic_no_tim %>% mutate(Year = str_extract(DATE, '[0-9]{1,4}'))

#2016년 유입/유출량 합계
STNT_2016 <- Seoul_traffic_no_tim %>% filter(DATE < 2017)

STNT_2016[is.na(STNT_2016)] <- 0
ISTNT_2016 <- STNT_2016 %>% filter(Inflow_Spill == '유입') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No) 
SSTNT_2016 <- STNT_2016 %>% filter(Inflow_Spill == '유출') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)

#2017년 유입/유출량 합계
STNT_2017 <- Seoul_traffic_no_tim %>% filter(2017 <= DATE, DATE < 2018)

STNT_2017[is.na(STNT_2017)] <- 0
ISTNT_2017 <- STNT_2017 %>% filter(Inflow_Spill == '유입') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)
SSTNT_2017 <- STNT_2017 %>% filter(Inflow_Spill == '유출') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)


#2018년 유입/유출량 합계
STNT_2018 <- Seoul_traffic_no_tim %>% filter(DATE < 2019 & DATE >= 2018)

STNT_2018[is.na(STNT_2018)] <- 0
ISTNT_2018 <- STNT_2018 %>% filter(Inflow_Spill == '유입') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)
SSTNT_2018 <- STNT_2018 %>% filter(Inflow_Spill == '유출') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)

#2019년 유입/유출량 합계
STNT_2019 <- Seoul_traffic_no_tim %>% filter( DATE < 2020 & 2019 <= DATE)

STNT_2019[is.na(STNT_2019)] <- 0
ISTNT_2019 <- STNT_2019 %>% filter(Inflow_Spill == '유입') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)
SSTNT_2019 <- STNT_2019 %>% filter(Inflow_Spill == '유출') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)

#2020년 유입/유출량 합계
STNT_2020 <- Seoul_traffic_no_tim %>% filter(DATE < 2021 & DATE >= 2020)

STNT_2020[is.na(STNT_2020)] <- 0
ISTNT_2020 <- STNT_2020 %>% filter(Inflow_Spill == '유입') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)
SSTNT_2020 <- STNT_2020 %>% filter(Inflow_Spill == '유출') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)

#2021년 유입/유출량 합계
STNT_2021 <- Seoul_traffic_no_tim %>% filter( DATE >= 2021)

STNT_2021[is.na(STNT_2021)] <- 0
ISTNT_2021 <- STNT_2021 %>% filter(Inflow_Spill == '유입') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)
SSTNT_2021 <- STNT_2021 %>% filter(Inflow_Spill == '유출') %>% group_by(Year, Point_Name, Point_No, Direction, Inflow_Spill) %>%  summarise(sum(traffic_num)) %>% arrange(Point_No)

I <- ISTNT_2016 %>% rbind(ISTNT_2017, ISTNT_2018, ISTNT_2019, ISTNT_2020, ISTNT_2021)
S <- SSTNT_2016 %>% rbind(SSTNT_2017, SSTNT_2018, SSTNT_2019, SSTNT_2020, SSTNT_2021)

I <- I %>% group_by(Point_No) %>% mutate(seq = row_number())
S <- S %>% group_by(Point_No) %>% mutate(seq = row_number())

# 원하는 지점을 n 값에 넣어서 년도별 그래프 확인가능
n = 'A-01'

I %>% filter(Point_No == n) %>% ggplot(aes(seq, `sum(traffic_num)`)) + geom_line()
S %>% filter(Point_No == n) %>% ggplot(aes(seq, `sum(traffic_num)`)) + geom_line()
