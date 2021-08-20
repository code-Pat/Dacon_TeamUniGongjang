library(dplyr)
library(readxl)
library(ggplot2)
library(sqldf)
library(stringr)
library(writexl)
library(kimisc)
library(tidyr)

# < 각 년도의 월별 데이터가 따로따로 있어서 같은 년도끼리 묶기>

Seoul_traffic_201501 <- read_excel('C:/Users/82105/Downloads/2015_1월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201502 <- read_excel('C:/Users/82105/Downloads/2015_2월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201503 <- read_excel('C:/Users/82105/Downloads/2015_3월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201504 <- read_excel('C:/Users/82105/Downloads/2015_4월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201505 <- read_excel('C:/Users/82105/Downloads/2015_5월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201506 <- read_excel('C:/Users/82105/Downloads/2015_6월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201507 <- read_excel('C:/Users/82105/Downloads/2015_7월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201508 <- read_excel('C:/Users/82105/Downloads/2015_8월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201509 <- read_excel('C:/Users/82105/Downloads/2015_9월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201510 <- read_excel('C:/Users/82105/Downloads/2015_10월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201511 <- read_excel('C:/Users/82105/Downloads/2015_11월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201512 <- read_excel('C:/Users/82105/Downloads/2015_12월 서울시 교통량 조사자료.xlsx')

Seoul_traffic_2015 <- rbind(Seoul_traffic_201501, Seoul_traffic_201502, Seoul_traffic_201503, Seoul_traffic_201504, Seoul_traffic_201505, Seoul_traffic_201506, Seoul_traffic_201507, Seoul_traffic_201508, Seoul_traffic_201509, Seoul_traffic_201510, Seoul_traffic_201511, Seoul_traffic_201512)

Seoul_traffic_201601 <- read_excel('C:/Users/82105/Downloads/2016년 01월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201602 <- read_excel('C:/Users/82105/Downloads/2016년 02월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201603 <- read_excel('C:/Users/82105/Downloads/2016년 03월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201604 <- read_excel('C:/Users/82105/Downloads/2016년 04월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201605 <- read_excel('C:/Users/82105/Downloads/2016년 05월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201606 <- read_excel('C:/Users/82105/Downloads/2016년 06월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201607 <- read_excel('C:/Users/82105/Downloads/2016년 07월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201608 <- read_excel('C:/Users/82105/Downloads/2016년 08월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201609 <- read_excel('C:/Users/82105/Downloads/2016년 09월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201610 <- read_excel('C:/Users/82105/Downloads/2016년 10월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201611 <- read_excel('C:/Users/82105/Downloads/2016년 11월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201612 <- read_excel('C:/Users/82105/Downloads/2016년 12월 서울시 교통량 조사자료.xlsx')

Seoul_traffic_2016 <- rbind(Seoul_traffic_201601, Seoul_traffic_201602, Seoul_traffic_201603, Seoul_traffic_201604, Seoul_traffic_201605, Seoul_traffic_201606, Seoul_traffic_201607, Seoul_traffic_201608, Seoul_traffic_201609, Seoul_traffic_201610, Seoul_traffic_201611, Seoul_traffic_201612)

Seoul_traffic_201701 <- read_excel('C:/Users/82105/Downloads/2017_1월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201702 <- read_excel('C:/Users/82105/Downloads/2017_2월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201703 <- read_excel('C:/Users/82105/Downloads/2017_3월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201704 <- read_excel('C:/Users/82105/Downloads/2017_4월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201705 <- read_excel('C:/Users/82105/Downloads/2017_5월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201706 <- read_excel('C:/Users/82105/Downloads/2017_6월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201707 <- read_excel('C:/Users/82105/Downloads/2017_7월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201708 <- read_excel('C:/Users/82105/Downloads/2017_8월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201709 <- read_excel('C:/Users/82105/Downloads/2017_9월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201710 <- read_excel('C:/Users/82105/Downloads/2017_10월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201711 <- read_excel('C:/Users/82105/Downloads/2017_11월 서울시 교통량 조사자료.xlsx')
Seoul_traffic_201712 <- read_excel('C:/Users/82105/Downloads/2017_12월 서울시 교통량 조사자료.xlsx')

Seoul_traffic_2017 <- rbind(Seoul_traffic_201701, Seoul_traffic_201702, Seoul_traffic_201703, Seoul_traffic_201704, Seoul_traffic_201705, Seoul_traffic_201706, Seoul_traffic_201707, Seoul_traffic_201708, Seoul_traffic_201709, Seoul_traffic_201710, Seoul_traffic_201711, Seoul_traffic_201712)

Seoul_traffic_201801 <- read_excel('C:/Users/82105/Downloads/2018_1월 서울시 교통량 조사자료.xlsx', sheet='2018년 1월')
Seoul_traffic_201802 <- read_excel('C:/Users/82105/Downloads/2018_2월 서울시 교통량 조사자료.xlsx', sheet='2018년 2월')
Seoul_traffic_201803 <- read_excel('C:/Users/82105/Downloads/2018_3월 서울시 교통량 조사자료.xlsx', sheet='2018년 3월')
Seoul_traffic_201804 <- read_excel('C:/Users/82105/Downloads/2018_4월 서울시 교통량 조사자료.xlsx', sheet='2018년 4월')
Seoul_traffic_201805 <- read_excel('C:/Users/82105/Downloads/2018_5월 서울시 교통량 조사자료.xlsx', sheet='2018년 5월')
Seoul_traffic_201806 <- read_excel('C:/Users/82105/Downloads/2018_6월 서울시 교통량 조사자료.xlsx', sheet='2018년 6월')
Seoul_traffic_201807 <- read_excel('C:/Users/82105/Downloads/2018_7월 서울시 교통량 조사자료.xlsx', sheet='2018년 7월')
Seoul_traffic_201808 <- read_excel('C:/Users/82105/Downloads/2018_8월 서울시 교통량 조사자료.xlsx', sheet='2018년 8월')
Seoul_traffic_201809 <- read_excel('C:/Users/82105/Downloads/2018_9월 서울시 교통량 조사자료.xlsx', sheet='2018년 9월')
Seoul_traffic_201810 <- read_excel('C:/Users/82105/Downloads/2018_10월 서울시 교통량 조사자료.xlsx', sheet='2018년 10월')
Seoul_traffic_201811 <- read_excel('C:/Users/82105/Downloads/2018_11월 서울시 교통량 조사자료.xlsx', sheet='2018년 11월')
Seoul_traffic_201812 <- read_excel('C:/Users/82105/Downloads/2018_12월 서울시 교통량 조사자료.xlsx', sheet='2018년 12월')

Seoul_traffic_2018 <- rbind(Seoul_traffic_201801, Seoul_traffic_201802, Seoul_traffic_201803, Seoul_traffic_201804, Seoul_traffic_201805, Seoul_traffic_201806, Seoul_traffic_201807, Seoul_traffic_201808, Seoul_traffic_201809, Seoul_traffic_201810, Seoul_traffic_201811, Seoul_traffic_201812)

Seoul_traffic_201901 <- read_excel('C:/Users/82105/Downloads/2019_1월 서울시 교통량 조사자료.xlsx', sheet='2019년 1월')
Seoul_traffic_201902 <- read_excel('C:/Users/82105/Downloads/2019_2월 서울시 교통량 조사자료.xlsx', sheet='2019년 2월')
Seoul_traffic_201903 <- read_excel('C:/Users/82105/Downloads/2019_3월 서울시 교통량 조사자료.xlsx', sheet='2019년 3월')
Seoul_traffic_201904 <- read_excel('C:/Users/82105/Downloads/2019_4월 서울시 교통량 조사자료.xlsx', sheet='2019년 4월')
Seoul_traffic_201905 <- read_excel('C:/Users/82105/Downloads/2019_5월 서울시 교통량 조사자료.xlsx', sheet='2019년 5월')
Seoul_traffic_201906 <- read_excel('C:/Users/82105/Downloads/2019_6월 서울시 교통량 조사자료.xlsx', sheet='2019년 6월')
Seoul_traffic_201907 <- read_excel('C:/Users/82105/Downloads/2019_7월 서울시 교통량 조사자료.xlsx', sheet='2019년 7월')
Seoul_traffic_201908 <- read_excel('C:/Users/82105/Downloads/2019_8월 서울시 교통량 조사자료.xlsx', sheet='2019년 8월')
Seoul_traffic_201909 <- read_excel('C:/Users/82105/Downloads/2019_9월 서울시 교통량 조사자료.xlsx', sheet='2019년 9월')
Seoul_traffic_201910 <- read_excel('C:/Users/82105/Downloads/2019_10월 서울시 교통량 조사자료.xlsx', sheet='2019년 10월')
Seoul_traffic_201911 <- read_excel('C:/Users/82105/Downloads/2019_11월 서울시 교통량 조사자료.xlsx', sheet='2019년 11월')
Seoul_traffic_201912 <- read_excel('C:/Users/82105/Downloads/2019_12월 서울시 교통량 조사자료.xlsx', sheet='2019년 12월')

Seoul_traffic_2019 <- rbind(Seoul_traffic_201901, Seoul_traffic_201902, Seoul_traffic_201903, Seoul_traffic_201904, Seoul_traffic_201905, Seoul_traffic_201906, Seoul_traffic_201907, Seoul_traffic_201908, Seoul_traffic_201909, Seoul_traffic_201910, Seoul_traffic_201911, Seoul_traffic_201912)

Seoul_traffic_202001 <- read_excel('C:/Users/82105/Downloads/2020_1월 서울시 교통량 조사자료.xlsx', sheet='2020년 01월')
Seoul_traffic_202002 <- read_excel('C:/Users/82105/Downloads/2020_2월 서울시 교통량 조사자료.xlsx', sheet='2020년 02월')
Seoul_traffic_202003 <- read_excel('C:/Users/82105/Downloads/2020_3월 서울시 교통량 조사자료.xlsx', sheet='2020년 03월')
Seoul_traffic_202004 <- read_excel('C:/Users/82105/Downloads/2020_4월 서울시 교통량 조사자료.xlsx', sheet='2020년 04월')
Seoul_traffic_202005 <- read_excel('C:/Users/82105/Downloads/2020_5월 서울시 교통량 조사자료.xlsx', sheet='2020년 05월')
Seoul_traffic_202006 <- read_excel('C:/Users/82105/Downloads/2020_6월 서울시 교통량 조사자료.xlsx', sheet='2020년 06월')
Seoul_traffic_202007 <- read_excel('C:/Users/82105/Downloads/2020_7월 서울시 교통량 조사자료.xlsx', sheet='2020년 07월')
Seoul_traffic_202008 <- read_excel('C:/Users/82105/Downloads/2020_8월 서울시 교통량 조사자료.xlsx', sheet='2020년 08월')
Seoul_traffic_202009 <- read_excel('C:/Users/82105/Downloads/2020_9월 서울시 교통량 조사자료.xlsx', sheet='2020년 09월')
Seoul_traffic_202010 <- read_excel('C:/Users/82105/Downloads/2020_10월 서울시 교통량 조사자료.xlsx', sheet='2020년 10월')
Seoul_traffic_202011 <- read_excel('C:/Users/82105/Downloads/2020_11월 서울시 교통량 조사자료.xlsx', sheet='2020년 11월')
Seoul_traffic_202012 <- read_excel('C:/Users/82105/Downloads/2020_12월 서울시 교통량 조사자료.xlsx', sheet='2020년 12월')

Seoul_traffic_2020 <- rbind(Seoul_traffic_202001, Seoul_traffic_202002, Seoul_traffic_202003, Seoul_traffic_202004, Seoul_traffic_202005, Seoul_traffic_202006, Seoul_traffic_202007, Seoul_traffic_202008, Seoul_traffic_202009, Seoul_traffic_202010, Seoul_traffic_202011, Seoul_traffic_202012)

Seoul_traffic_202101 <- read_excel('C:/Users/82105/Downloads/2021_1월 서울시 교통량 조사자료.xlsx', sheet='2021년 01월')
Seoul_traffic_202102 <- read_excel('C:/Users/82105/Downloads/2021_2월 서울시 교통량 조사자료.xlsx', sheet='2021년 02월')
Seoul_traffic_202103 <- read_excel('C:/Users/82105/Downloads/2021_3월 서울시 교통량 조사자료.xlsx', sheet='2021년 03월')
Seoul_traffic_202104 <- read_excel('C:/Users/82105/Downloads/2021_4월 서울시 교통량 조사자료.xlsx', sheet='2021년 04월')
Seoul_traffic_202105 <- read_excel('C:/Users/82105/Downloads/2021_5월 서울시 교통량 조사자료.xlsx', sheet='2021년 05월')
Seoul_traffic_202106 <- read_excel('C:/Users/82105/Downloads/2021_6월 서울시 교통량 조사자료.xlsx', sheet='2021년 06월')

Seoul_traffic_2021 <- rbind(Seoul_traffic_202101, Seoul_traffic_202102, Seoul_traffic_202103, Seoul_traffic_202104, Seoul_traffic_202105, Seoul_traffic_202106)

# 저장 후 주석처리
# writexl::write_xlsx(Seoul_traffic_2015, 'c:/Big Data Contest/Seoul_traffic_2015.xlsx')
# writexl::write_xlsx(Seoul_traffic_2016, 'c:/Big Data Contest/Seoul_traffic_2016.xlsx')
# writexl::write_xlsx(Seoul_traffic_2017, 'c:/Big Data Contest/Seoul_traffic_2017.xlsx')
# writexl::write_xlsx(Seoul_traffic_2018, 'c:/Big Data Contest/Seoul_traffic_2018.xlsx')
# writexl::write_xlsx(Seoul_traffic_2019, 'c:/Big Data Contest/Seoul_traffic_2019.xlsx')
# writexl::write_xlsx(Seoul_traffic_2020, 'c:/Big Data Contest/Seoul_traffic_2020.xlsx')
# writexl::write_xlsx(Seoul_traffic_2021, 'c:/Big Data Contest/Seoul_traffic_2021.xlsx')


#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
# 저장 후 엑셀로 컬럼명을 맞춰주는 작업을 했기에 새롭게 불러주기
rm(list=ls())
Seoul_traffic_2015 <- read_excel('c:/Big Data Contest/Seoul_traffic_2015.xlsx')
Seoul_traffic_2016 <- read_excel('c:/Big Data Contest/Seoul_traffic_2016.xlsx')
Seoul_traffic_2017 <- read_excel('c:/Big Data Contest/Seoul_traffic_2017.xlsx')
Seoul_traffic_2018 <- read_excel('c:/Big Data Contest/Seoul_traffic_2018.xlsx')
Seoul_traffic_2019 <- read_excel('c:/Big Data Contest/Seoul_traffic_2019.xlsx')
Seoul_traffic_2020 <- read_excel('c:/Big Data Contest/Seoul_traffic_2020.xlsx')
Seoul_traffic_2021 <- read_excel('c:/Big Data Contest/Seoul_traffic_2021.xlsx')

# 년도별로 합친 데이터를 하나의 통합데이터로 담기
Seoul_traffic_R <- rbind(Seoul_traffic_2015, Seoul_traffic_2016, Seoul_traffic_2017, Seoul_traffic_2018, Seoul_traffic_2019, Seoul_traffic_2020, Seoul_traffic_2021)
#합친 후 저장 and 주석처리로 변환
# write_xlsx(Seoul_traffic_R, 'c:/Big Data Contest/Seoul_traffic_R.xlsx')

#데이터를 저장 후 엑셀로 일부 수정해서 새로 불러와야하기에 제거 
rm(list=ls())

Seoul_traffic <- read_excel('c:/Big Data Contest/Seoul_traffic_R.xlsx')

# Seoul_traffic에서 Date 속성이 character이라서 새로운 new_date 컬럼을 만들고 as.date를 통해 DATE 속성 부여
Seoul_traffic <- Seoul_traffic %>% mutate(DATE = as.Date(Date, format='%Y%m%d')) 
Seoul_traffic <- Seoul_traffic[,c(31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30)]
Seoul_traffic <- Seoul_traffic %>% select(-Date)
# 중간 저장 후 주석처리로 변환
# write_xlsx(Seoul_traffic, 'c:/Big Data Contest/Seoul_traffic_R_final.xlsx')

#데이터를 저장 후 엑셀로 일부 수정해서 새로 불러와야하기에 제거 
rm(list=ls())

Seoul_traffic <- read_excel('c:/Big Data Contest/Seoul_traffic_R_final.xlsx')

#2016년 1월 1일 이후 사용할 데이터만 가져오기
Seoul_traffic <- Seoul_traffic %>% filter(DATE >= '2016-01-01')

Seoul_traffic <- Seoul_traffic %>% mutate(a_check = str_detect(Point_No, 'A', FALSE)) %>% filter(a_check != TRUE)

Seoul_traffic <- Seoul_traffic %>% mutate(code = row_number())

Seoul_traffic <- Seoul_traffic %>% select(-Time_0, -Time_1, -Time_2, -Time_3, -Time_4, -Time_5, -Time_23, -Direction)

#na값을 0으로 변환
Seoul_traffic[is.na(Seoul_traffic)] <- 0

#모든 시간대에 값이 없는 row들을 제거하기 위해 필터링하기
Seoul_traffic <- Seoul_traffic %>% mutate(delete_TF = if_else(Time_6 == 0 &
                                                                Time_7 == 0 &
                                                                Time_8 == 0 &
                                                                Time_9 == 0 &
                                                                Time_10 == 0 &
                                                                Time_11 == 0 &
                                                                Time_12 == 0 &
                                                                Time_13 == 0 &
                                                                Time_14 == 0 &
                                                                Time_15 == 0 &
                                                                Time_16 == 0 &
                                                                Time_17 == 0 &
                                                                Time_18 == 0 &
                                                                Time_19 == 0 &
                                                                Time_20 == 0 &
                                                                Time_21 == 0 &
                                                                Time_22 == 0, TRUE, FALSE))

Seoul_traffic <- Seoul_traffic %>% filter(delete_TF == FALSE)
Seoul_traffic <- Seoul_traffic %>% select(-a_check, -delete_TF, -code)

# 바뀐 데이터 저장
# write.csv(Seoul_traffic, 'c:/Big Data Contest/Seoul_traffic_08_11.csv')

# 저장된 Seoul_traffic_R_final 데이터를 엑셀로 일부 수정했기에 새로 불러오기
Seoul_traffic <- read.csv('c:/Big Data Contest/Seoul_traffic_08_11.csv')

# 시간대별로 각 row의 0의 유무 체크하기(위에서 na를 0으로 변환했기에 여기서 0값은 na값)
Seoul_traffic <- Seoul_traffic %>% mutate(T6 = if_else(Time_6 == 0, TRUE, FALSE)) %>% 
  mutate(T7 = if_else(Time_7 == 0, TRUE, FALSE)) %>%
  mutate(T8 = if_else(Time_8 == 0, TRUE, FALSE)) %>%
  mutate(T9 = if_else(Time_9 == 0, TRUE, FALSE)) %>%
  mutate(T10 = if_else(Time_10 == 0, TRUE, FALSE)) %>%
  mutate(T11 = if_else(Time_11 == 0, TRUE, FALSE)) %>%
  mutate(T12 = if_else(Time_12 == 0, TRUE, FALSE)) %>%
  mutate(T13 = if_else(Time_13 == 0, TRUE, FALSE)) %>%
  mutate(T14 = if_else(Time_14 == 0, TRUE, FALSE)) %>%
  mutate(T15 = if_else(Time_15 == 0, TRUE, FALSE)) %>%
  mutate(T16 = if_else(Time_16 == 0, TRUE, FALSE)) %>%
  mutate(T17 = if_else(Time_17 == 0, TRUE, FALSE)) %>%
  mutate(T18 = if_else(Time_18 == 0, TRUE, FALSE)) %>%
  mutate(T19 = if_else(Time_19 == 0, TRUE, FALSE)) %>%
  mutate(T20 = if_else(Time_20 == 0, TRUE, FALSE)) %>%
  mutate(T21 = if_else(Time_21 == 0, TRUE, FALSE)) %>%
  mutate(T22 = if_else(Time_22 == 0, TRUE, FALSE))

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_6ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist6 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_6, T6) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst6 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_6, T6) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)


# 해당 컬럼의 값이 0인지 T/F로 체크 -> 값이 없는 칸을 채워주기 위해 n칸 끌어내려서 데이터값 입력 -> 이후 n칸 끌어내린 데이터의 값이 0이면 n+1칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복(결측값에 데이터를 넣어주기 위함// 단, Point_No별로 요일별 값을 넣어주기)
ist6 <- ist6 %>% mutate(T6_lag1 = lag(Time_6, 1)) %>%
  mutate(NT6_1 = if_else(T6 == TRUE, print(T6_lag1), print(Time_6))) %>%
  mutate(check_NT6_1 = if_else(NT6_1 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag2 = lag(Time_6, 2)) %>% 
  mutate(NT6_2 = if_else(check_NT6_1 == TRUE, print(T6_lag2), print(NT6_1))) %>% 
  mutate(check_NT6_2 = if_else(NT6_2 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag3 = lag(Time_6, 3)) %>% 
  mutate(NT6_3 = if_else(check_NT6_2 == TRUE, print(T6_lag3), print(NT6_2))) %>% 
  mutate(check_NT6_3 = if_else(NT6_3 == 0, TRUE, FALSE)) %>%
  mutate(T6_lag4 = lag(Time_6, 4)) %>% 
  mutate(NT6_4 = if_else(check_NT6_3 == TRUE, print(T6_lag4), print(NT6_3))) %>% 
  mutate(check_NT6_4 = if_else(NT6_4 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag5 = lag(Time_6, 5)) %>% 
  mutate(NT6_5 = if_else(check_NT6_4 == TRUE, print(T6_lag5), print(NT6_4))) %>% 
  mutate(check_NT6_5 = if_else(NT6_5 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag6 = lag(Time_6, 6)) %>%
  mutate(NT6_6 = if_else(check_NT6_5 == TRUE, print(T6_lag6), print(NT6_5))) %>% 
  mutate(check_NT6_6 = if_else(NT6_6 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag7 = lag(Time_6, 7)) %>%
  mutate(NT6_7 = if_else(check_NT6_6 == TRUE, print(T6_lag7), print(NT6_6))) %>% 
  mutate(check_NT6_7 = if_else(NT6_7 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag8 = lag(Time_6, 8)) %>%
  mutate(NT6_8 = if_else(check_NT6_7 == TRUE, print(T6_lag8), print(NT6_7)))

ist6 <- ist6 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT6_8)



sst6 <- sst6 %>% mutate(T6_lag1 = lag(Time_6, 1)) %>%
  mutate(NT6_1 = if_else(T6 == TRUE, print(T6_lag1), print(Time_6))) %>%
  mutate(check_NT6_1 = if_else(NT6_1 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag2 = lag(Time_6, 2)) %>% 
  mutate(NT6_2 = if_else(check_NT6_1 == TRUE, print(T6_lag2), print(NT6_1))) %>% 
  mutate(check_NT6_2 = if_else(NT6_2 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag3 = lag(Time_6, 3)) %>% 
  mutate(NT6_3 = if_else(check_NT6_2 == TRUE, print(T6_lag3), print(NT6_2))) %>% 
  mutate(check_NT6_3 = if_else(NT6_3 == 0, TRUE, FALSE)) %>%
  mutate(T6_lag4 = lag(Time_6, 4)) %>% 
  mutate(NT6_4 = if_else(check_NT6_3 == TRUE, print(T6_lag4), print(NT6_3))) %>% 
  mutate(check_NT6_4 = if_else(NT6_4 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag5 = lag(Time_6, 5)) %>% 
  mutate(NT6_5 = if_else(check_NT6_4 == TRUE, print(T6_lag5), print(NT6_4))) %>% 
  mutate(check_NT6_5 = if_else(NT6_5 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag6 = lag(Time_6, 6)) %>%
  mutate(NT6_6 = if_else(check_NT6_5 == TRUE, print(T6_lag6), print(NT6_5))) %>% 
  mutate(check_NT6_6 = if_else(NT6_6 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag7 = lag(Time_6, 7)) %>%
  mutate(NT6_7 = if_else(check_NT6_6 == TRUE, print(T6_lag7), print(NT6_6))) %>% 
  mutate(check_NT6_7 = if_else(NT6_7 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag8 = lag(Time_6, 8)) %>%
  mutate(NT6_8 = if_else(check_NT6_7 == TRUE, print(T6_lag8), print(NT6_7))) %>% 
  mutate(check_NT6_8 = if_else(NT6_8 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag9 = lag(Time_6, 9)) %>%
  mutate(NT6_9 = if_else(check_NT6_8 == TRUE, print(T6_lag9), print(NT6_8))) %>% 
  mutate(check_NT6_9 = if_else(NT6_9 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag10 = lag(Time_6, 10)) %>%
  mutate(NT6_10 = if_else(check_NT6_9 == TRUE, print(T6_lag10), print(NT6_9))) %>%
  mutate(check_NT6_10 = if_else(NT6_10 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag11 = lag(Time_6, 11)) %>%
  mutate(NT6_11 = if_else(check_NT6_10 == TRUE, print(T6_lag11), print(NT6_10))) %>% 
  mutate(check_NT6_11 = if_else(NT6_11 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag12 = lag(Time_6, 12)) %>%
  mutate(NT6_12 = if_else(check_NT6_11 == TRUE, print(T6_lag12), print(NT6_11))) %>% 
  mutate(check_NT6_12 = if_else(NT6_12 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag13 = lag(Time_6, 13)) %>%
  mutate(NT6_13 = if_else(check_NT6_12 == TRUE, print(T6_lag13), print(NT6_12))) %>% 
  mutate(check_NT6_13 = if_else(NT6_13 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag14 = lag(Time_6, 14)) %>%
  mutate(NT6_14 = if_else(check_NT6_13 == TRUE, print(T6_lag14), print(NT6_13))) %>% 
  mutate(check_NT6_14 = if_else(NT6_14 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag15 = lag(Time_6, 15)) %>%
  mutate(NT6_15 = if_else(check_NT6_14 == TRUE, print(T6_lag15), print(NT6_14))) %>% 
  mutate(check_NT6_15 = if_else(NT6_15 == 0, TRUE, FALSE)) %>% 
  mutate(T6_lag16 = lag(Time_6, 16)) %>%
  mutate(NT6_16 = if_else(check_NT6_15 == TRUE, print(T6_lag16), print(NT6_15)))

sst6 <- sst6 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT6_16)


#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_7ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist7 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_7, T7) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst7 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_7, T7) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist7 <- ist7 %>% mutate(T7_lag1 = lag(Time_7, 1)) %>%
  mutate(NT7_1 = if_else(T7 == TRUE, print(T7_lag1), print(Time_7))) %>%
  mutate(check_NT7_1 = if_else(NT7_1 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag2 = lag(Time_7, 2)) %>% 
  mutate(NT7_2 = if_else(check_NT7_1 == TRUE, print(T7_lag2), print(NT7_1))) %>% 
  mutate(check_NT7_2 = if_else(NT7_2 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag3 = lag(Time_7, 3)) %>% 
  mutate(NT7_3 = if_else(check_NT7_2 == TRUE, print(T7_lag3), print(NT7_2))) %>% 
  mutate(check_NT7_3 = if_else(NT7_3 == 0, TRUE, FALSE)) %>%
  mutate(T7_lag4 = lag(Time_7, 4)) %>% 
  mutate(NT7_4 = if_else(check_NT7_3 == TRUE, print(T7_lag4), print(NT7_3))) %>% 
  mutate(check_NT7_4 = if_else(NT7_4 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag5 = lag(Time_7, 5)) %>% 
  mutate(NT7_5 = if_else(check_NT7_4 == TRUE, print(T7_lag5), print(NT7_4))) %>% 
  mutate(check_NT7_5 = if_else(NT7_5 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag6 = lag(Time_7, 6)) %>%
  mutate(NT7_6 = if_else(check_NT7_5 == TRUE, print(T7_lag6), print(NT7_5))) %>% 
  mutate(check_NT7_6 = if_else(NT7_6 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag7 = lag(Time_7, 7)) %>%
  mutate(NT7_7 = if_else(check_NT7_6 == TRUE, print(T7_lag7), print(NT7_6))) %>% 
  mutate(check_NT7_7 = if_else(NT7_7 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag8 = lag(Time_7, 8)) %>%
  mutate(NT7_8 = if_else(check_NT7_7 == TRUE, print(T7_lag8), print(NT7_7))) %>% 
  mutate(check_NT7_8 = if_else(NT7_8 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag9 = lag(Time_7, 9)) %>%
  mutate(NT7_9 = if_else(check_NT7_8 == TRUE, print(T7_lag9), print(NT7_8))) %>% 
  mutate(check_NT7_9 = if_else(NT7_9 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag10 = lag(Time_7, 10)) %>%
  mutate(NT7_10 = if_else(check_NT7_9 == TRUE, print(T7_lag10), print(NT7_9)))

ist7 <- ist7 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT7_10)


sst7 <- sst7 %>% mutate(T7_lag1 = lag(Time_7, 1)) %>%
  mutate(NT7_1 = if_else(T7 == TRUE, print(T7_lag1), print(Time_7))) %>%
  mutate(check_NT7_1 = if_else(NT7_1 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag2 = lag(Time_7, 2)) %>% 
  mutate(NT7_2 = if_else(check_NT7_1 == TRUE, print(T7_lag2), print(NT7_1))) %>% 
  mutate(check_NT7_2 = if_else(NT7_2 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag3 = lag(Time_7, 3)) %>% 
  mutate(NT7_3 = if_else(check_NT7_2 == TRUE, print(T7_lag3), print(NT7_2))) %>% 
  mutate(check_NT7_3 = if_else(NT7_3 == 0, TRUE, FALSE)) %>%
  mutate(T7_lag4 = lag(Time_7, 4)) %>% 
  mutate(NT7_4 = if_else(check_NT7_3 == TRUE, print(T7_lag4), print(NT7_3))) %>% 
  mutate(check_NT7_4 = if_else(NT7_4 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag5 = lag(Time_7, 5)) %>% 
  mutate(NT7_5 = if_else(check_NT7_4 == TRUE, print(T7_lag5), print(NT7_4))) %>% 
  mutate(check_NT7_5 = if_else(NT7_5 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag6 = lag(Time_7, 6)) %>%
  mutate(NT7_6 = if_else(check_NT7_5 == TRUE, print(T7_lag6), print(NT7_5))) %>% 
  mutate(check_NT7_6 = if_else(NT7_6 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag7 = lag(Time_7, 7)) %>%
  mutate(NT7_7 = if_else(check_NT7_6 == TRUE, print(T7_lag7), print(NT7_6))) %>% 
  mutate(check_NT7_7 = if_else(NT7_7 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag8 = lag(Time_7, 8)) %>%
  mutate(NT7_8 = if_else(check_NT7_7 == TRUE, print(T7_lag8), print(NT7_7))) %>% 
  mutate(check_NT7_8 = if_else(NT7_8 == 0, TRUE, FALSE)) %>% 
  mutate(T7_lag9 = lag(Time_7, 9)) %>%
  mutate(NT7_9 = if_else(check_NT7_8 == TRUE, print(T7_lag9), print(NT7_8)))

sst7 <- sst7 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT7_9)



#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_8ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist8 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_8, T8) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst8 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_8, T8) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist8 <- ist8 %>% mutate(T8_lag1 = lag(Time_8, 1)) %>%
  mutate(NT8_1 = if_else(T8 == TRUE, print(T8_lag1), print(Time_8))) %>%
  mutate(check_NT8_1 = if_else(NT8_1 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag2 = lag(Time_8, 2)) %>% 
  mutate(NT8_2 = if_else(check_NT8_1 == TRUE, print(T8_lag2), print(NT8_1))) %>% 
  mutate(check_NT8_2 = if_else(NT8_2 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag3 = lag(Time_8, 3)) %>% 
  mutate(NT8_3 = if_else(check_NT8_2 == TRUE, print(T8_lag3), print(NT8_2))) %>% 
  mutate(check_NT8_3 = if_else(NT8_3 == 0, TRUE, FALSE)) %>%
  mutate(T8_lag4 = lag(Time_8, 4)) %>% 
  mutate(NT8_4 = if_else(check_NT8_3 == TRUE, print(T8_lag4), print(NT8_3))) %>% 
  mutate(check_NT8_4 = if_else(NT8_4 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag5 = lag(Time_8, 5)) %>% 
  mutate(NT8_5 = if_else(check_NT8_4 == TRUE, print(T8_lag5), print(NT8_4))) %>% 
  mutate(check_NT8_5 = if_else(NT8_5 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag6 = lag(Time_8, 6)) %>%
  mutate(NT8_6 = if_else(check_NT8_5 == TRUE, print(T8_lag6), print(NT8_5))) %>% 
  mutate(check_NT8_6 = if_else(NT8_6 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag7 = lag(Time_8, 7)) %>%
  mutate(NT8_7 = if_else(check_NT8_6 == TRUE, print(T8_lag7), print(NT8_6))) %>% 
  mutate(check_NT8_7 = if_else(NT8_7 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag8 = lag(Time_8, 8)) %>%
  mutate(NT8_8 = if_else(check_NT8_7 == TRUE, print(T8_lag8), print(NT8_7))) %>% 
  mutate(check_NT8_8 = if_else(NT8_8 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag9 = lag(Time_8, 9)) %>%
  mutate(NT8_9 = if_else(check_NT8_8 == TRUE, print(T8_lag9), print(NT8_8))) %>% 
  mutate(check_NT8_9 = if_else(NT8_9 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag10 = lag(Time_8, 10)) %>%
  mutate(NT8_10 = if_else(check_NT8_9 == TRUE, print(T8_lag10), print(NT8_9))) %>% 
  mutate(check_NT8_10 = if_else(NT8_10 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag11 = lag(Time_8, 11)) %>%
  mutate(NT8_11 = if_else(check_NT8_10 == TRUE, print(T8_lag11), print(NT8_10)))


ist8 <- ist8 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT8_11)



sst8 <- sst8 %>% mutate(T8_lag1 = lag(Time_8, 1)) %>%
  mutate(NT8_1 = if_else(T8 == TRUE, print(T8_lag1), print(Time_8))) %>%
  mutate(check_NT8_1 = if_else(NT8_1 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag2 = lag(Time_8, 2)) %>% 
  mutate(NT8_2 = if_else(check_NT8_1 == TRUE, print(T8_lag2), print(NT8_1))) %>% 
  mutate(check_NT8_2 = if_else(NT8_2 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag3 = lag(Time_8, 3)) %>% 
  mutate(NT8_3 = if_else(check_NT8_2 == TRUE, print(T8_lag3), print(NT8_2))) %>% 
  mutate(check_NT8_3 = if_else(NT8_3 == 0, TRUE, FALSE)) %>%
  mutate(T8_lag4 = lag(Time_8, 4)) %>% 
  mutate(NT8_4 = if_else(check_NT8_3 == TRUE, print(T8_lag4), print(NT8_3))) %>% 
  mutate(check_NT8_4 = if_else(NT8_4 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag5 = lag(Time_8, 5)) %>% 
  mutate(NT8_5 = if_else(check_NT8_4 == TRUE, print(T8_lag5), print(NT8_4))) %>% 
  mutate(check_NT8_5 = if_else(NT8_5 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag6 = lag(Time_8, 6)) %>%
  mutate(NT8_6 = if_else(check_NT8_5 == TRUE, print(T8_lag6), print(NT8_5))) %>% 
  mutate(check_NT8_6 = if_else(NT8_6 == 0, TRUE, FALSE)) %>% 
  mutate(T8_lag7 = lag(Time_8, 7)) %>%
  mutate(NT8_7 = if_else(check_NT8_6 == TRUE, print(T8_lag7), print(NT8_6)))


sst8 <- sst8 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT8_7)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_9ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist9 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_9, T9) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst9 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_9, T9) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist9 <- ist9 %>% mutate(T9_lag1 = lag(Time_9, 1)) %>%
  mutate(NT9_1 = if_else(T9 == TRUE, print(T9_lag1), print(Time_9))) %>%
  mutate(check_NT9_1 = if_else(NT9_1 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag2 = lag(Time_9, 2)) %>% 
  mutate(NT9_2 = if_else(check_NT9_1 == TRUE, print(T9_lag2), print(NT9_1))) %>% 
  mutate(check_NT9_2 = if_else(NT9_2 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag3 = lag(Time_9, 3)) %>% 
  mutate(NT9_3 = if_else(check_NT9_2 == TRUE, print(T9_lag3), print(NT9_2))) %>% 
  mutate(check_NT9_3 = if_else(NT9_3 == 0, TRUE, FALSE)) %>%
  mutate(T9_lag4 = lag(Time_9, 4)) %>% 
  mutate(NT9_4 = if_else(check_NT9_3 == TRUE, print(T9_lag4), print(NT9_3))) %>% 
  mutate(check_NT9_4 = if_else(NT9_4 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag5 = lag(Time_9, 5)) %>% 
  mutate(NT9_5 = if_else(check_NT9_4 == TRUE, print(T9_lag5), print(NT9_4))) %>% 
  mutate(check_NT9_5 = if_else(NT9_5 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag6 = lag(Time_9, 6)) %>%
  mutate(NT9_6 = if_else(check_NT9_5 == TRUE, print(T9_lag6), print(NT9_5))) %>% 
  mutate(check_NT9_6 = if_else(NT9_6 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag7 = lag(Time_9, 7)) %>%
  mutate(NT9_7 = if_else(check_NT9_6 == TRUE, print(T9_lag7), print(NT9_6))) %>% 
  mutate(check_NT9_7 = if_else(NT9_7 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag8 = lag(Time_9, 8)) %>%
  mutate(NT9_8 = if_else(check_NT9_7 == TRUE, print(T9_lag8), print(NT9_7))) %>% 
  mutate(check_NT9_8 = if_else(NT9_8 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag9 = lag(Time_9, 9)) %>%
  mutate(NT9_9 = if_else(check_NT9_8 == TRUE, print(T9_lag9), print(NT9_8))) %>% 
  mutate(check_NT9_9 = if_else(NT9_9 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag10 = lag(Time_9, 10)) %>%
  mutate(NT9_10 = if_else(check_NT9_9 == TRUE, print(T9_lag10), print(NT9_9))) %>% 
  mutate(check_NT9_10 = if_else(NT9_10 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag11 = lag(Time_9, 11)) %>%
  mutate(NT9_11 = if_else(check_NT9_10 == TRUE, print(T9_lag11), print(NT9_10)))

ist9 <- ist9 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT9_11)


sst9 <- sst9 %>% mutate(T9_lag1 = lag(Time_9, 1)) %>%
  mutate(NT9_1 = if_else(T9 == TRUE, print(T9_lag1), print(Time_9))) %>%
  mutate(check_NT9_1 = if_else(NT9_1 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag2 = lag(Time_9, 2)) %>% 
  mutate(NT9_2 = if_else(check_NT9_1 == TRUE, print(T9_lag2), print(NT9_1))) %>% 
  mutate(check_NT9_2 = if_else(NT9_2 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag3 = lag(Time_9, 3)) %>% 
  mutate(NT9_3 = if_else(check_NT9_2 == TRUE, print(T9_lag3), print(NT9_2))) %>% 
  mutate(check_NT9_3 = if_else(NT9_3 == 0, TRUE, FALSE)) %>%
  mutate(T9_lag4 = lag(Time_9, 4)) %>% 
  mutate(NT9_4 = if_else(check_NT9_3 == TRUE, print(T9_lag4), print(NT9_3))) %>% 
  mutate(check_NT9_4 = if_else(NT9_4 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag5 = lag(Time_9, 5)) %>% 
  mutate(NT9_5 = if_else(check_NT9_4 == TRUE, print(T9_lag5), print(NT9_4))) %>% 
  mutate(check_NT9_5 = if_else(NT9_5 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag6 = lag(Time_9, 6)) %>%
  mutate(NT9_6 = if_else(check_NT9_5 == TRUE, print(T9_lag6), print(NT9_5))) %>% 
  mutate(check_NT9_6 = if_else(NT9_6 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag7 = lag(Time_9, 7)) %>%
  mutate(NT9_7 = if_else(check_NT9_6 == TRUE, print(T9_lag7), print(NT9_6))) %>% 
  mutate(check_NT9_7 = if_else(NT9_7 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag8 = lag(Time_9, 8)) %>%
  mutate(NT9_8 = if_else(check_NT9_7 == TRUE, print(T9_lag8), print(NT9_7))) %>% 
  mutate(check_NT9_8 = if_else(NT9_8 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag9 = lag(Time_9, 9)) %>%
  mutate(NT9_9 = if_else(check_NT9_8 == TRUE, print(T9_lag9), print(NT9_8))) %>% 
  mutate(check_NT9_9 = if_else(NT9_9 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag10 = lag(Time_9, 10)) %>%
  mutate(NT9_10 = if_else(check_NT9_9 == TRUE, print(T9_lag10), print(NT9_9))) %>% 
  mutate(check_NT9_10 = if_else(NT9_10 == 0, TRUE, FALSE)) %>% 
  mutate(T9_lag11 = lag(Time_9, 11)) %>%
  mutate(NT9_11 = if_else(check_NT9_10 == TRUE, print(T9_lag11), print(NT9_10)))

sst9 <- sst9 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT9_11)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_10ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist10 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_10, T10) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst10 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_10, T10) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist10 <- ist10 %>% mutate(T10_lag1 = lag(Time_10, 1)) %>%
  mutate(NT10_1 = if_else(T10 == TRUE, print(T10_lag1), print(Time_10))) %>%
  mutate(check_NT10_1 = if_else(NT10_1 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag2 = lag(Time_10, 2)) %>% 
  mutate(NT10_2 = if_else(check_NT10_1 == TRUE, print(T10_lag2), print(NT10_1))) %>% 
  mutate(check_NT10_2 = if_else(NT10_2 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag3 = lag(Time_10, 3)) %>% 
  mutate(NT10_3 = if_else(check_NT10_2 == TRUE, print(T10_lag3), print(NT10_2))) %>% 
  mutate(check_NT10_3 = if_else(NT10_3 == 0, TRUE, FALSE)) %>%
  mutate(T10_lag4 = lag(Time_10, 4)) %>% 
  mutate(NT10_4 = if_else(check_NT10_3 == TRUE, print(T10_lag4), print(NT10_3))) %>% 
  mutate(check_NT10_4 = if_else(NT10_4 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag5 = lag(Time_10, 5)) %>% 
  mutate(NT10_5 = if_else(check_NT10_4 == TRUE, print(T10_lag5), print(NT10_4))) %>% 
  mutate(check_NT10_5 = if_else(NT10_5 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag6 = lag(Time_10, 6)) %>%
  mutate(NT10_6 = if_else(check_NT10_5 == TRUE, print(T10_lag6), print(NT10_5))) %>% 
  mutate(check_NT10_6 = if_else(NT10_6 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag7 = lag(Time_10, 7)) %>%
  mutate(NT10_7 = if_else(check_NT10_6 == TRUE, print(T10_lag7), print(NT10_6))) %>% 
  mutate(check_NT10_7 = if_else(NT10_7 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag8 = lag(Time_10, 8)) %>%
  mutate(NT10_8 = if_else(check_NT10_7 == TRUE, print(T10_lag8), print(NT10_7))) %>% 
  mutate(check_NT10_8 = if_else(NT10_8 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag9 = lag(Time_10, 9)) %>%
  mutate(NT10_9 = if_else(check_NT10_8 == TRUE, print(T10_lag9), print(NT10_8))) %>% 
  mutate(check_NT10_9 = if_else(NT10_9 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag10 = lag(Time_10, 10)) %>%
  mutate(NT10_10 = if_else(check_NT10_9 == TRUE, print(T10_lag10), print(NT10_9))) %>% 
  mutate(check_NT10_10 = if_else(NT10_10 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag11 = lag(Time_10, 11)) %>%
  mutate(NT10_11 = if_else(check_NT10_10 == TRUE, print(T10_lag11), print(NT10_10)))

ist10 <- ist10 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT10_11)


sst10 <- sst10 %>% mutate(T10_lag1 = lag(Time_10, 1)) %>%
  mutate(NT10_1 = if_else(T10 == TRUE, print(T10_lag1), print(Time_10))) %>%
  mutate(check_NT10_1 = if_else(NT10_1 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag2 = lag(Time_10, 2)) %>% 
  mutate(NT10_2 = if_else(check_NT10_1 == TRUE, print(T10_lag2), print(NT10_1))) %>% 
  mutate(check_NT10_2 = if_else(NT10_2 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag3 = lag(Time_10, 3)) %>% 
  mutate(NT10_3 = if_else(check_NT10_2 == TRUE, print(T10_lag3), print(NT10_2))) %>% 
  mutate(check_NT10_3 = if_else(NT10_3 == 0, TRUE, FALSE)) %>%
  mutate(T10_lag4 = lag(Time_10, 4)) %>% 
  mutate(NT10_4 = if_else(check_NT10_3 == TRUE, print(T10_lag4), print(NT10_3))) %>% 
  mutate(check_NT10_4 = if_else(NT10_4 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag5 = lag(Time_10, 5)) %>% 
  mutate(NT10_5 = if_else(check_NT10_4 == TRUE, print(T10_lag5), print(NT10_4))) %>% 
  mutate(check_NT10_5 = if_else(NT10_5 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag6 = lag(Time_10, 6)) %>%
  mutate(NT10_6 = if_else(check_NT10_5 == TRUE, print(T10_lag6), print(NT10_5))) %>% 
  mutate(check_NT10_6 = if_else(NT10_6 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag7 = lag(Time_10, 7)) %>%
  mutate(NT10_7 = if_else(check_NT10_6 == TRUE, print(T10_lag7), print(NT10_6))) %>% 
  mutate(check_NT10_7 = if_else(NT10_7 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag8 = lag(Time_10, 8)) %>%
  mutate(NT10_8 = if_else(check_NT10_7 == TRUE, print(T10_lag8), print(NT10_7))) %>% 
  mutate(check_NT10_8 = if_else(NT10_8 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag9 = lag(Time_10, 9)) %>%
  mutate(NT10_9 = if_else(check_NT10_8 == TRUE, print(T10_lag9), print(NT10_8))) %>% 
  mutate(check_NT10_9 = if_else(NT10_9 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag10 = lag(Time_10, 10)) %>%
  mutate(NT10_10 = if_else(check_NT10_9 == TRUE, print(T10_lag10), print(NT10_9))) %>% 
  mutate(check_NT10_10 = if_else(NT10_10 == 0, TRUE, FALSE)) %>% 
  mutate(T10_lag11 = lag(Time_10, 11)) %>%
  mutate(NT10_11 = if_else(check_NT10_10 == TRUE, print(T10_lag11), print(NT10_10)))

sst10 <- sst10 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT10_11)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_11ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist11 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_11, T11) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst11 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_11, T11) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist11 <- ist11 %>% mutate(T11_lag1 = lag(Time_11, 1)) %>%
  mutate(NT11_1 = if_else(T11 == TRUE, print(T11_lag1), print(Time_11))) %>%
  mutate(check_NT11_1 = if_else(NT11_1 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag2 = lag(Time_11, 2)) %>% 
  mutate(NT11_2 = if_else(check_NT11_1 == TRUE, print(T11_lag2), print(NT11_1))) %>% 
  mutate(check_NT11_2 = if_else(NT11_2 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag3 = lag(Time_11, 3)) %>% 
  mutate(NT11_3 = if_else(check_NT11_2 == TRUE, print(T11_lag3), print(NT11_2))) %>% 
  mutate(check_NT11_3 = if_else(NT11_3 == 0, TRUE, FALSE)) %>%
  mutate(T11_lag4 = lag(Time_11, 4)) %>% 
  mutate(NT11_4 = if_else(check_NT11_3 == TRUE, print(T11_lag4), print(NT11_3))) %>% 
  mutate(check_NT11_4 = if_else(NT11_4 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag5 = lag(Time_11, 5)) %>% 
  mutate(NT11_5 = if_else(check_NT11_4 == TRUE, print(T11_lag5), print(NT11_4))) %>% 
  mutate(check_NT11_5 = if_else(NT11_5 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag6 = lag(Time_11, 6)) %>%
  mutate(NT11_6 = if_else(check_NT11_5 == TRUE, print(T11_lag6), print(NT11_5))) %>% 
  mutate(check_NT11_6 = if_else(NT11_6 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag7 = lag(Time_11, 7)) %>%
  mutate(NT11_7 = if_else(check_NT11_6 == TRUE, print(T11_lag7), print(NT11_6))) %>% 
  mutate(check_NT11_7 = if_else(NT11_7 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag8 = lag(Time_11, 8)) %>%
  mutate(NT11_8 = if_else(check_NT11_7 == TRUE, print(T11_lag8), print(NT11_7))) %>% 
  mutate(check_NT11_8 = if_else(NT11_8 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag9 = lag(Time_11, 9)) %>%
  mutate(NT11_9 = if_else(check_NT11_8 == TRUE, print(T11_lag9), print(NT11_8))) %>% 
  mutate(check_NT11_9 = if_else(NT11_9 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag10 = lag(Time_11, 10)) %>%
  mutate(NT11_10 = if_else(check_NT11_9 == TRUE, print(T11_lag10), print(NT11_9))) %>% 
  mutate(check_NT11_10 = if_else(NT11_10 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag11 = lag(Time_11, 11)) %>%
  mutate(NT11_11 = if_else(check_NT11_10 == TRUE, print(T11_lag11), print(NT11_10)))

ist11 <- ist11 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT11_11)


sst11 <- sst11 %>% mutate(T11_lag1 = lag(Time_11, 1)) %>%
  mutate(NT11_1 = if_else(T11 == TRUE, print(T11_lag1), print(Time_11))) %>%
  mutate(check_NT11_1 = if_else(NT11_1 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag2 = lag(Time_11, 2)) %>% 
  mutate(NT11_2 = if_else(check_NT11_1 == TRUE, print(T11_lag2), print(NT11_1))) %>% 
  mutate(check_NT11_2 = if_else(NT11_2 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag3 = lag(Time_11, 3)) %>% 
  mutate(NT11_3 = if_else(check_NT11_2 == TRUE, print(T11_lag3), print(NT11_2))) %>% 
  mutate(check_NT11_3 = if_else(NT11_3 == 0, TRUE, FALSE)) %>%
  mutate(T11_lag4 = lag(Time_11, 4)) %>% 
  mutate(NT11_4 = if_else(check_NT11_3 == TRUE, print(T11_lag4), print(NT11_3))) %>% 
  mutate(check_NT11_4 = if_else(NT11_4 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag5 = lag(Time_11, 5)) %>% 
  mutate(NT11_5 = if_else(check_NT11_4 == TRUE, print(T11_lag5), print(NT11_4))) %>% 
  mutate(check_NT11_5 = if_else(NT11_5 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag6 = lag(Time_11, 6)) %>%
  mutate(NT11_6 = if_else(check_NT11_5 == TRUE, print(T11_lag6), print(NT11_5))) %>% 
  mutate(check_NT11_6 = if_else(NT11_6 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag7 = lag(Time_11, 7)) %>%
  mutate(NT11_7 = if_else(check_NT11_6 == TRUE, print(T11_lag7), print(NT11_6))) %>% 
  mutate(check_NT11_7 = if_else(NT11_7 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag8 = lag(Time_11, 8)) %>%
  mutate(NT11_8 = if_else(check_NT11_7 == TRUE, print(T11_lag8), print(NT11_7))) %>% 
  mutate(check_NT11_8 = if_else(NT11_8 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag9 = lag(Time_11, 9)) %>%
  mutate(NT11_9 = if_else(check_NT11_8 == TRUE, print(T11_lag9), print(NT11_8))) %>% 
  mutate(check_NT11_9 = if_else(NT11_9 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag10 = lag(Time_11, 10)) %>%
  mutate(NT11_10 = if_else(check_NT11_9 == TRUE, print(T11_lag10), print(NT11_9))) %>% 
  mutate(check_NT11_10 = if_else(NT11_10 == 0, TRUE, FALSE)) %>% 
  mutate(T11_lag11 = lag(Time_11, 11)) %>%
  mutate(NT11_11 = if_else(check_NT11_10 == TRUE, print(T11_lag11), print(NT11_10)))

sst11 <- sst11 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT11_11)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_12ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist12 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_12, T12) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst12 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_12, T12) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist12 <- ist12 %>% mutate(T12_lag1 = lag(Time_12, 1)) %>%
  mutate(NT12_1 = if_else(T12 == TRUE, print(T12_lag1), print(Time_12))) %>%
  mutate(check_NT12_1 = if_else(NT12_1 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag2 = lag(Time_12, 2)) %>% 
  mutate(NT12_2 = if_else(check_NT12_1 == TRUE, print(T12_lag2), print(NT12_1))) %>% 
  mutate(check_NT12_2 = if_else(NT12_2 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag3 = lag(Time_12, 3)) %>% 
  mutate(NT12_3 = if_else(check_NT12_2 == TRUE, print(T12_lag3), print(NT12_2))) %>% 
  mutate(check_NT12_3 = if_else(NT12_3 == 0, TRUE, FALSE)) %>%
  mutate(T12_lag4 = lag(Time_12, 4)) %>% 
  mutate(NT12_4 = if_else(check_NT12_3 == TRUE, print(T12_lag4), print(NT12_3))) %>% 
  mutate(check_NT12_4 = if_else(NT12_4 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag5 = lag(Time_12, 5)) %>% 
  mutate(NT12_5 = if_else(check_NT12_4 == TRUE, print(T12_lag5), print(NT12_4))) %>% 
  mutate(check_NT12_5 = if_else(NT12_5 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag6 = lag(Time_12, 6)) %>%
  mutate(NT12_6 = if_else(check_NT12_5 == TRUE, print(T12_lag6), print(NT12_5))) %>% 
  mutate(check_NT12_6 = if_else(NT12_6 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag7 = lag(Time_12, 7)) %>%
  mutate(NT12_7 = if_else(check_NT12_6 == TRUE, print(T12_lag7), print(NT12_6))) %>% 
  mutate(check_NT12_7 = if_else(NT12_7 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag8 = lag(Time_12, 8)) %>%
  mutate(NT12_8 = if_else(check_NT12_7 == TRUE, print(T12_lag8), print(NT12_7))) %>% 
  mutate(check_NT12_8 = if_else(NT12_8 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag9 = lag(Time_12, 9)) %>%
  mutate(NT12_9 = if_else(check_NT12_8 == TRUE, print(T12_lag9), print(NT12_8))) %>% 
  mutate(check_NT12_9 = if_else(NT12_9 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag10 = lag(Time_12, 10)) %>%
  mutate(NT12_10 = if_else(check_NT12_9 == TRUE, print(T12_lag10), print(NT12_9))) %>% 
  mutate(check_NT12_10 = if_else(NT12_10 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag11 = lag(Time_12, 11)) %>%
  mutate(NT12_11 = if_else(check_NT12_10 == TRUE, print(T12_lag11), print(NT12_10))) %>% 
  mutate(check_NT12_11 = if_else(NT12_11 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag12 = lag(Time_12, 12)) %>%
  mutate(NT12_12 = if_else(check_NT12_11 == TRUE, print(T12_lag12), print(NT12_11)))

ist12 <- ist12 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT12_12)


sst12 <- sst12 %>% mutate(T12_lag1 = lag(Time_12, 1)) %>%
  mutate(NT12_1 = if_else(T12 == TRUE, print(T12_lag1), print(Time_12))) %>%
  mutate(check_NT12_1 = if_else(NT12_1 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag2 = lag(Time_12, 2)) %>% 
  mutate(NT12_2 = if_else(check_NT12_1 == TRUE, print(T12_lag2), print(NT12_1))) %>% 
  mutate(check_NT12_2 = if_else(NT12_2 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag3 = lag(Time_12, 3)) %>% 
  mutate(NT12_3 = if_else(check_NT12_2 == TRUE, print(T12_lag3), print(NT12_2))) %>% 
  mutate(check_NT12_3 = if_else(NT12_3 == 0, TRUE, FALSE)) %>%
  mutate(T12_lag4 = lag(Time_12, 4)) %>% 
  mutate(NT12_4 = if_else(check_NT12_3 == TRUE, print(T12_lag4), print(NT12_3))) %>% 
  mutate(check_NT12_4 = if_else(NT12_4 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag5 = lag(Time_12, 5)) %>% 
  mutate(NT12_5 = if_else(check_NT12_4 == TRUE, print(T12_lag5), print(NT12_4))) %>% 
  mutate(check_NT12_5 = if_else(NT12_5 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag6 = lag(Time_12, 6)) %>%
  mutate(NT12_6 = if_else(check_NT12_5 == TRUE, print(T12_lag6), print(NT12_5))) %>% 
  mutate(check_NT12_6 = if_else(NT12_6 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag7 = lag(Time_12, 7)) %>%
  mutate(NT12_7 = if_else(check_NT12_6 == TRUE, print(T12_lag7), print(NT12_6))) %>% 
  mutate(check_NT12_7 = if_else(NT12_7 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag8 = lag(Time_12, 8)) %>%
  mutate(NT12_8 = if_else(check_NT12_7 == TRUE, print(T12_lag8), print(NT12_7))) %>% 
  mutate(check_NT12_8 = if_else(NT12_8 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag9 = lag(Time_12, 9)) %>%
  mutate(NT12_9 = if_else(check_NT12_8 == TRUE, print(T12_lag9), print(NT12_8))) %>% 
  mutate(check_NT12_9 = if_else(NT12_9 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag10 = lag(Time_12, 10)) %>%
  mutate(NT12_10 = if_else(check_NT12_9 == TRUE, print(T12_lag10), print(NT12_9))) %>% 
  mutate(check_NT12_10 = if_else(NT12_10 == 0, TRUE, FALSE)) %>% 
  mutate(T12_lag11 = lag(Time_12, 11)) %>%
  mutate(NT12_11 = if_else(check_NT12_10 == TRUE, print(T12_lag11), print(NT12_10)))

sst12 <- sst12 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT12_11)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_13ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist13 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_13, T13) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst13 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_13, T13) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist13 <- ist13 %>% mutate(T13_lag1 = lag(Time_13, 1)) %>%
  mutate(NT13_1 = if_else(T13 == TRUE, print(T13_lag1), print(Time_13))) %>%
  mutate(check_NT13_1 = if_else(NT13_1 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag2 = lag(Time_13, 2)) %>% 
  mutate(NT13_2 = if_else(check_NT13_1 == TRUE, print(T13_lag2), print(NT13_1))) %>% 
  mutate(check_NT13_2 = if_else(NT13_2 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag3 = lag(Time_13, 3)) %>% 
  mutate(NT13_3 = if_else(check_NT13_2 == TRUE, print(T13_lag3), print(NT13_2))) %>% 
  mutate(check_NT13_3 = if_else(NT13_3 == 0, TRUE, FALSE)) %>%
  mutate(T13_lag4 = lag(Time_13, 4)) %>% 
  mutate(NT13_4 = if_else(check_NT13_3 == TRUE, print(T13_lag4), print(NT13_3))) %>% 
  mutate(check_NT13_4 = if_else(NT13_4 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag5 = lag(Time_13, 5)) %>% 
  mutate(NT13_5 = if_else(check_NT13_4 == TRUE, print(T13_lag5), print(NT13_4))) %>% 
  mutate(check_NT13_5 = if_else(NT13_5 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag6 = lag(Time_13, 6)) %>%
  mutate(NT13_6 = if_else(check_NT13_5 == TRUE, print(T13_lag6), print(NT13_5))) %>% 
  mutate(check_NT13_6 = if_else(NT13_6 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag7 = lag(Time_13, 7)) %>%
  mutate(NT13_7 = if_else(check_NT13_6 == TRUE, print(T13_lag7), print(NT13_6))) %>% 
  mutate(check_NT13_7 = if_else(NT13_7 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag8 = lag(Time_13, 8)) %>%
  mutate(NT13_8 = if_else(check_NT13_7 == TRUE, print(T13_lag8), print(NT13_7))) %>% 
  mutate(check_NT13_8 = if_else(NT13_8 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag9 = lag(Time_13, 9)) %>%
  mutate(NT13_9 = if_else(check_NT13_8 == TRUE, print(T13_lag9), print(NT13_8))) %>% 
  mutate(check_NT13_9 = if_else(NT13_9 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag10 = lag(Time_13, 10)) %>%
  mutate(NT13_10 = if_else(check_NT13_9 == TRUE, print(T13_lag10), print(NT13_9))) %>% 
  mutate(check_NT13_10 = if_else(NT13_10 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag11 = lag(Time_13, 11)) %>%
  mutate(NT13_11 = if_else(check_NT13_10 == TRUE, print(T13_lag11), print(NT13_10)))

ist13 <- ist13 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT13_11)


sst13 <- sst13 %>% mutate(T13_lag1 = lag(Time_13, 1)) %>%
  mutate(NT13_1 = if_else(T13 == TRUE, print(T13_lag1), print(Time_13))) %>%
  mutate(check_NT13_1 = if_else(NT13_1 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag2 = lag(Time_13, 2)) %>% 
  mutate(NT13_2 = if_else(check_NT13_1 == TRUE, print(T13_lag2), print(NT13_1))) %>% 
  mutate(check_NT13_2 = if_else(NT13_2 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag3 = lag(Time_13, 3)) %>% 
  mutate(NT13_3 = if_else(check_NT13_2 == TRUE, print(T13_lag3), print(NT13_2))) %>% 
  mutate(check_NT13_3 = if_else(NT13_3 == 0, TRUE, FALSE)) %>%
  mutate(T13_lag4 = lag(Time_13, 4)) %>% 
  mutate(NT13_4 = if_else(check_NT13_3 == TRUE, print(T13_lag4), print(NT13_3))) %>% 
  mutate(check_NT13_4 = if_else(NT13_4 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag5 = lag(Time_13, 5)) %>% 
  mutate(NT13_5 = if_else(check_NT13_4 == TRUE, print(T13_lag5), print(NT13_4))) %>% 
  mutate(check_NT13_5 = if_else(NT13_5 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag6 = lag(Time_13, 6)) %>%
  mutate(NT13_6 = if_else(check_NT13_5 == TRUE, print(T13_lag6), print(NT13_5))) %>% 
  mutate(check_NT13_6 = if_else(NT13_6 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag7 = lag(Time_13, 7)) %>%
  mutate(NT13_7 = if_else(check_NT13_6 == TRUE, print(T13_lag7), print(NT13_6))) %>% 
  mutate(check_NT13_7 = if_else(NT13_7 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag8 = lag(Time_13, 8)) %>%
  mutate(NT13_8 = if_else(check_NT13_7 == TRUE, print(T13_lag8), print(NT13_7))) %>% 
  mutate(check_NT13_8 = if_else(NT13_8 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag9 = lag(Time_13, 9)) %>%
  mutate(NT13_9 = if_else(check_NT13_8 == TRUE, print(T13_lag9), print(NT13_8))) %>% 
  mutate(check_NT13_9 = if_else(NT13_9 == 0, TRUE, FALSE)) %>% 
  mutate(T13_lag10 = lag(Time_13, 10)) %>%
  mutate(NT13_10 = if_else(check_NT13_9 == TRUE, print(T13_lag10), print(NT13_9)))

sst13 <- sst13 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT13_10)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_14ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist14 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_14, T14) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst14 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_14, T14) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist14 <- ist14 %>% mutate(T14_lag1 = lag(Time_14, 1)) %>%
  mutate(NT14_1 = if_else(T14 == TRUE, print(T14_lag1), print(Time_14))) %>%
  mutate(check_NT14_1 = if_else(NT14_1 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag2 = lag(Time_14, 2)) %>% 
  mutate(NT14_2 = if_else(check_NT14_1 == TRUE, print(T14_lag2), print(NT14_1))) %>% 
  mutate(check_NT14_2 = if_else(NT14_2 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag3 = lag(Time_14, 3)) %>% 
  mutate(NT14_3 = if_else(check_NT14_2 == TRUE, print(T14_lag3), print(NT14_2))) %>% 
  mutate(check_NT14_3 = if_else(NT14_3 == 0, TRUE, FALSE)) %>%
  mutate(T14_lag4 = lag(Time_14, 4)) %>% 
  mutate(NT14_4 = if_else(check_NT14_3 == TRUE, print(T14_lag4), print(NT14_3))) %>% 
  mutate(check_NT14_4 = if_else(NT14_4 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag5 = lag(Time_14, 5)) %>% 
  mutate(NT14_5 = if_else(check_NT14_4 == TRUE, print(T14_lag5), print(NT14_4))) %>% 
  mutate(check_NT14_5 = if_else(NT14_5 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag6 = lag(Time_14, 6)) %>%
  mutate(NT14_6 = if_else(check_NT14_5 == TRUE, print(T14_lag6), print(NT14_5))) %>% 
  mutate(check_NT14_6 = if_else(NT14_6 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag7 = lag(Time_14, 7)) %>%
  mutate(NT14_7 = if_else(check_NT14_6 == TRUE, print(T14_lag7), print(NT14_6))) %>% 
  mutate(check_NT14_7 = if_else(NT14_7 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag8 = lag(Time_14, 8)) %>%
  mutate(NT14_8 = if_else(check_NT14_7 == TRUE, print(T14_lag8), print(NT14_7))) %>% 
  mutate(check_NT14_8 = if_else(NT14_8 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag9 = lag(Time_14, 9)) %>%
  mutate(NT14_9 = if_else(check_NT14_8 == TRUE, print(T14_lag9), print(NT14_8))) %>% 
  mutate(check_NT14_9 = if_else(NT14_9 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag10 = lag(Time_14, 10)) %>%
  mutate(NT14_10 = if_else(check_NT14_9 == TRUE, print(T14_lag10), print(NT14_9))) %>% 
  mutate(check_NT14_10 = if_else(NT14_10 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag11 = lag(Time_14, 11)) %>%
  mutate(NT14_11 = if_else(check_NT14_10 == TRUE, print(T14_lag11), print(NT14_10)))

ist14 <- ist14 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT14_11)


sst14 <- sst14 %>% mutate(T14_lag1 = lag(Time_14, 1)) %>%
  mutate(NT14_1 = if_else(T14 == TRUE, print(T14_lag1), print(Time_14))) %>%
  mutate(check_NT14_1 = if_else(NT14_1 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag2 = lag(Time_14, 2)) %>% 
  mutate(NT14_2 = if_else(check_NT14_1 == TRUE, print(T14_lag2), print(NT14_1))) %>% 
  mutate(check_NT14_2 = if_else(NT14_2 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag3 = lag(Time_14, 3)) %>% 
  mutate(NT14_3 = if_else(check_NT14_2 == TRUE, print(T14_lag3), print(NT14_2))) %>% 
  mutate(check_NT14_3 = if_else(NT14_3 == 0, TRUE, FALSE)) %>%
  mutate(T14_lag4 = lag(Time_14, 4)) %>% 
  mutate(NT14_4 = if_else(check_NT14_3 == TRUE, print(T14_lag4), print(NT14_3))) %>% 
  mutate(check_NT14_4 = if_else(NT14_4 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag5 = lag(Time_14, 5)) %>% 
  mutate(NT14_5 = if_else(check_NT14_4 == TRUE, print(T14_lag5), print(NT14_4))) %>% 
  mutate(check_NT14_5 = if_else(NT14_5 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag6 = lag(Time_14, 6)) %>%
  mutate(NT14_6 = if_else(check_NT14_5 == TRUE, print(T14_lag6), print(NT14_5))) %>% 
  mutate(check_NT14_6 = if_else(NT14_6 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag7 = lag(Time_14, 7)) %>%
  mutate(NT14_7 = if_else(check_NT14_6 == TRUE, print(T14_lag7), print(NT14_6))) %>% 
  mutate(check_NT14_7 = if_else(NT14_7 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag8 = lag(Time_14, 8)) %>%
  mutate(NT14_8 = if_else(check_NT14_7 == TRUE, print(T14_lag8), print(NT14_7))) %>% 
  mutate(check_NT14_8 = if_else(NT14_8 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag9 = lag(Time_14, 9)) %>%
  mutate(NT14_9 = if_else(check_NT14_8 == TRUE, print(T14_lag9), print(NT14_8))) %>% 
  mutate(check_NT14_9 = if_else(NT14_9 == 0, TRUE, FALSE)) %>% 
  mutate(T14_lag10 = lag(Time_14, 10)) %>%
  mutate(NT14_10 = if_else(check_NT14_9 == TRUE, print(T14_lag10), print(NT14_9)))

sst14 <- sst14 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT14_10)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_15ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist15 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_15, T15) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst15 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_15, T15) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist15 <- ist15 %>% mutate(T15_lag1 = lag(Time_15, 1)) %>%
  mutate(NT15_1 = if_else(T15 == TRUE, print(T15_lag1), print(Time_15))) %>%
  mutate(check_NT15_1 = if_else(NT15_1 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag2 = lag(Time_15, 2)) %>% 
  mutate(NT15_2 = if_else(check_NT15_1 == TRUE, print(T15_lag2), print(NT15_1))) %>% 
  mutate(check_NT15_2 = if_else(NT15_2 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag3 = lag(Time_15, 3)) %>% 
  mutate(NT15_3 = if_else(check_NT15_2 == TRUE, print(T15_lag3), print(NT15_2))) %>% 
  mutate(check_NT15_3 = if_else(NT15_3 == 0, TRUE, FALSE)) %>%
  mutate(T15_lag4 = lag(Time_15, 4)) %>% 
  mutate(NT15_4 = if_else(check_NT15_3 == TRUE, print(T15_lag4), print(NT15_3))) %>% 
  mutate(check_NT15_4 = if_else(NT15_4 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag5 = lag(Time_15, 5)) %>% 
  mutate(NT15_5 = if_else(check_NT15_4 == TRUE, print(T15_lag5), print(NT15_4))) %>% 
  mutate(check_NT15_5 = if_else(NT15_5 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag6 = lag(Time_15, 6)) %>%
  mutate(NT15_6 = if_else(check_NT15_5 == TRUE, print(T15_lag6), print(NT15_5))) %>% 
  mutate(check_NT15_6 = if_else(NT15_6 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag7 = lag(Time_15, 7)) %>%
  mutate(NT15_7 = if_else(check_NT15_6 == TRUE, print(T15_lag7), print(NT15_6))) %>% 
  mutate(check_NT15_7 = if_else(NT15_7 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag8 = lag(Time_15, 8)) %>%
  mutate(NT15_8 = if_else(check_NT15_7 == TRUE, print(T15_lag8), print(NT15_7))) %>% 
  mutate(check_NT15_8 = if_else(NT15_8 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag9 = lag(Time_15, 9)) %>%
  mutate(NT15_9 = if_else(check_NT15_8 == TRUE, print(T15_lag9), print(NT15_8)))

ist15 <- ist15 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT15_9)


sst15 <- sst15 %>% mutate(T15_lag1 = lag(Time_15, 1)) %>%
  mutate(NT15_1 = if_else(T15 == TRUE, print(T15_lag1), print(Time_15))) %>%
  mutate(check_NT15_1 = if_else(NT15_1 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag2 = lag(Time_15, 2)) %>% 
  mutate(NT15_2 = if_else(check_NT15_1 == TRUE, print(T15_lag2), print(NT15_1))) %>% 
  mutate(check_NT15_2 = if_else(NT15_2 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag3 = lag(Time_15, 3)) %>% 
  mutate(NT15_3 = if_else(check_NT15_2 == TRUE, print(T15_lag3), print(NT15_2))) %>% 
  mutate(check_NT15_3 = if_else(NT15_3 == 0, TRUE, FALSE)) %>%
  mutate(T15_lag4 = lag(Time_15, 4)) %>% 
  mutate(NT15_4 = if_else(check_NT15_3 == TRUE, print(T15_lag4), print(NT15_3))) %>% 
  mutate(check_NT15_4 = if_else(NT15_4 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag5 = lag(Time_15, 5)) %>% 
  mutate(NT15_5 = if_else(check_NT15_4 == TRUE, print(T15_lag5), print(NT15_4))) %>% 
  mutate(check_NT15_5 = if_else(NT15_5 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag6 = lag(Time_15, 6)) %>%
  mutate(NT15_6 = if_else(check_NT15_5 == TRUE, print(T15_lag6), print(NT15_5))) %>% 
  mutate(check_NT15_6 = if_else(NT15_6 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag7 = lag(Time_15, 7)) %>%
  mutate(NT15_7 = if_else(check_NT15_6 == TRUE, print(T15_lag7), print(NT15_6))) %>% 
  mutate(check_NT15_7 = if_else(NT15_7 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag8 = lag(Time_15, 8)) %>%
  mutate(NT15_8 = if_else(check_NT15_7 == TRUE, print(T15_lag8), print(NT15_7))) %>% 
  mutate(check_NT15_8 = if_else(NT15_8 == 0, TRUE, FALSE)) %>% 
  mutate(T15_lag9 = lag(Time_15, 9)) %>%
  mutate(NT15_9 = if_else(check_NT15_8 == TRUE, print(T15_lag9), print(NT15_8)))

sst15 <- sst15 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT15_9)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_16ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist16 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_16, T16) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst16 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_16, T16) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist16 <- ist16 %>% mutate(T16_lag1 = lag(Time_16, 1)) %>%
  mutate(NT16_1 = if_else(T16 == TRUE, print(T16_lag1), print(Time_16))) %>%
  mutate(check_NT16_1 = if_else(NT16_1 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag2 = lag(Time_16, 2)) %>% 
  mutate(NT16_2 = if_else(check_NT16_1 == TRUE, print(T16_lag2), print(NT16_1))) %>% 
  mutate(check_NT16_2 = if_else(NT16_2 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag3 = lag(Time_16, 3)) %>% 
  mutate(NT16_3 = if_else(check_NT16_2 == TRUE, print(T16_lag3), print(NT16_2))) %>% 
  mutate(check_NT16_3 = if_else(NT16_3 == 0, TRUE, FALSE)) %>%
  mutate(T16_lag4 = lag(Time_16, 4)) %>% 
  mutate(NT16_4 = if_else(check_NT16_3 == TRUE, print(T16_lag4), print(NT16_3))) %>% 
  mutate(check_NT16_4 = if_else(NT16_4 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag5 = lag(Time_16, 5)) %>% 
  mutate(NT16_5 = if_else(check_NT16_4 == TRUE, print(T16_lag5), print(NT16_4))) %>% 
  mutate(check_NT16_5 = if_else(NT16_5 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag6 = lag(Time_16, 6)) %>%
  mutate(NT16_6 = if_else(check_NT16_5 == TRUE, print(T16_lag6), print(NT16_5))) %>% 
  mutate(check_NT16_6 = if_else(NT16_6 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag7 = lag(Time_16, 7)) %>%
  mutate(NT16_7 = if_else(check_NT16_6 == TRUE, print(T16_lag7), print(NT16_6))) %>% 
  mutate(check_NT16_7 = if_else(NT16_7 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag8 = lag(Time_16, 8)) %>%
  mutate(NT16_8 = if_else(check_NT16_7 == TRUE, print(T16_lag8), print(NT16_7))) %>% 
  mutate(check_NT16_8 = if_else(NT16_8 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag9 = lag(Time_16, 9)) %>%
  mutate(NT16_9 = if_else(check_NT16_8 == TRUE, print(T16_lag9), print(NT16_8)))

ist16 <- ist16 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT16_9)


sst16 <- sst16 %>% mutate(T16_lag1 = lag(Time_16, 1)) %>%
  mutate(NT16_1 = if_else(T16 == TRUE, print(T16_lag1), print(Time_16))) %>%
  mutate(check_NT16_1 = if_else(NT16_1 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag2 = lag(Time_16, 2)) %>% 
  mutate(NT16_2 = if_else(check_NT16_1 == TRUE, print(T16_lag2), print(NT16_1))) %>% 
  mutate(check_NT16_2 = if_else(NT16_2 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag3 = lag(Time_16, 3)) %>% 
  mutate(NT16_3 = if_else(check_NT16_2 == TRUE, print(T16_lag3), print(NT16_2))) %>% 
  mutate(check_NT16_3 = if_else(NT16_3 == 0, TRUE, FALSE)) %>%
  mutate(T16_lag4 = lag(Time_16, 4)) %>% 
  mutate(NT16_4 = if_else(check_NT16_3 == TRUE, print(T16_lag4), print(NT16_3))) %>% 
  mutate(check_NT16_4 = if_else(NT16_4 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag5 = lag(Time_16, 5)) %>% 
  mutate(NT16_5 = if_else(check_NT16_4 == TRUE, print(T16_lag5), print(NT16_4))) %>% 
  mutate(check_NT16_5 = if_else(NT16_5 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag6 = lag(Time_16, 6)) %>%
  mutate(NT16_6 = if_else(check_NT16_5 == TRUE, print(T16_lag6), print(NT16_5))) %>% 
  mutate(check_NT16_6 = if_else(NT16_6 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag7 = lag(Time_16, 7)) %>%
  mutate(NT16_7 = if_else(check_NT16_6 == TRUE, print(T16_lag7), print(NT16_6))) %>% 
  mutate(check_NT16_7 = if_else(NT16_7 == 0, TRUE, FALSE)) %>% 
  mutate(T16_lag8 = lag(Time_16, 8)) %>%
  mutate(NT16_8 = if_else(check_NT16_7 == TRUE, print(T16_lag8), print(NT16_7)))

sst16 <- sst16 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT16_8)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_17ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist17 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_17, T17) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst17 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_17, T17) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist17 <- ist17 %>% mutate(T17_lag1 = lag(Time_17, 1)) %>%
  mutate(NT17_1 = if_else(T17 == TRUE, print(T17_lag1), print(Time_17))) %>%
  mutate(check_NT17_1 = if_else(NT17_1 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag2 = lag(Time_17, 2)) %>% 
  mutate(NT17_2 = if_else(check_NT17_1 == TRUE, print(T17_lag2), print(NT17_1))) %>% 
  mutate(check_NT17_2 = if_else(NT17_2 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag3 = lag(Time_17, 3)) %>% 
  mutate(NT17_3 = if_else(check_NT17_2 == TRUE, print(T17_lag3), print(NT17_2))) %>% 
  mutate(check_NT17_3 = if_else(NT17_3 == 0, TRUE, FALSE)) %>%
  mutate(T17_lag4 = lag(Time_17, 4)) %>% 
  mutate(NT17_4 = if_else(check_NT17_3 == TRUE, print(T17_lag4), print(NT17_3))) %>% 
  mutate(check_NT17_4 = if_else(NT17_4 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag5 = lag(Time_17, 5)) %>% 
  mutate(NT17_5 = if_else(check_NT17_4 == TRUE, print(T17_lag5), print(NT17_4))) %>% 
  mutate(check_NT17_5 = if_else(NT17_5 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag6 = lag(Time_17, 6)) %>%
  mutate(NT17_6 = if_else(check_NT17_5 == TRUE, print(T17_lag6), print(NT17_5))) %>% 
  mutate(check_NT17_6 = if_else(NT17_6 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag7 = lag(Time_17, 7)) %>%
  mutate(NT17_7 = if_else(check_NT17_6 == TRUE, print(T17_lag7), print(NT17_6))) %>% 
  mutate(check_NT17_7 = if_else(NT17_7 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag8 = lag(Time_17, 8)) %>%
  mutate(NT17_8 = if_else(check_NT17_7 == TRUE, print(T17_lag8), print(NT17_7))) %>% 
  mutate(check_NT17_8 = if_else(NT17_8 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag9 = lag(Time_17, 9)) %>%
  mutate(NT17_9 = if_else(check_NT17_8 == TRUE, print(T17_lag9), print(NT17_8)))

ist17 <- ist17 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT17_9)


sst17 <- sst17 %>% mutate(T17_lag1 = lag(Time_17, 1)) %>%
  mutate(NT17_1 = if_else(T17 == TRUE, print(T17_lag1), print(Time_17))) %>%
  mutate(check_NT17_1 = if_else(NT17_1 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag2 = lag(Time_17, 2)) %>% 
  mutate(NT17_2 = if_else(check_NT17_1 == TRUE, print(T17_lag2), print(NT17_1))) %>% 
  mutate(check_NT17_2 = if_else(NT17_2 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag3 = lag(Time_17, 3)) %>% 
  mutate(NT17_3 = if_else(check_NT17_2 == TRUE, print(T17_lag3), print(NT17_2))) %>% 
  mutate(check_NT17_3 = if_else(NT17_3 == 0, TRUE, FALSE)) %>%
  mutate(T17_lag4 = lag(Time_17, 4)) %>% 
  mutate(NT17_4 = if_else(check_NT17_3 == TRUE, print(T17_lag4), print(NT17_3))) %>% 
  mutate(check_NT17_4 = if_else(NT17_4 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag5 = lag(Time_17, 5)) %>% 
  mutate(NT17_5 = if_else(check_NT17_4 == TRUE, print(T17_lag5), print(NT17_4))) %>% 
  mutate(check_NT17_5 = if_else(NT17_5 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag6 = lag(Time_17, 6)) %>%
  mutate(NT17_6 = if_else(check_NT17_5 == TRUE, print(T17_lag6), print(NT17_5))) %>% 
  mutate(check_NT17_6 = if_else(NT17_6 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag7 = lag(Time_17, 7)) %>%
  mutate(NT17_7 = if_else(check_NT17_6 == TRUE, print(T17_lag7), print(NT17_6))) %>% 
  mutate(check_NT17_7 = if_else(NT17_7 == 0, TRUE, FALSE)) %>% 
  mutate(T17_lag8 = lag(Time_17, 8)) %>%
  mutate(NT17_8 = if_else(check_NT17_7 == TRUE, print(T17_lag8), print(NT17_7)))

sst17 <- sst17 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT17_8)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_18ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist18 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_18, T18) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst18 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_18, T18) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist18 <- ist18 %>% mutate(T18_lag1 = lag(Time_18, 1)) %>%
  mutate(NT18_1 = if_else(T18 == TRUE, print(T18_lag1), print(Time_18))) %>%
  mutate(check_NT18_1 = if_else(NT18_1 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag2 = lag(Time_18, 2)) %>% 
  mutate(NT18_2 = if_else(check_NT18_1 == TRUE, print(T18_lag2), print(NT18_1))) %>% 
  mutate(check_NT18_2 = if_else(NT18_2 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag3 = lag(Time_18, 3)) %>% 
  mutate(NT18_3 = if_else(check_NT18_2 == TRUE, print(T18_lag3), print(NT18_2))) %>% 
  mutate(check_NT18_3 = if_else(NT18_3 == 0, TRUE, FALSE)) %>%
  mutate(T18_lag4 = lag(Time_18, 4)) %>% 
  mutate(NT18_4 = if_else(check_NT18_3 == TRUE, print(T18_lag4), print(NT18_3))) %>% 
  mutate(check_NT18_4 = if_else(NT18_4 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag5 = lag(Time_18, 5)) %>% 
  mutate(NT18_5 = if_else(check_NT18_4 == TRUE, print(T18_lag5), print(NT18_4))) %>% 
  mutate(check_NT18_5 = if_else(NT18_5 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag6 = lag(Time_18, 6)) %>%
  mutate(NT18_6 = if_else(check_NT18_5 == TRUE, print(T18_lag6), print(NT18_5))) %>% 
  mutate(check_NT18_6 = if_else(NT18_6 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag7 = lag(Time_18, 7)) %>%
  mutate(NT18_7 = if_else(check_NT18_6 == TRUE, print(T18_lag7), print(NT18_6))) %>% 
  mutate(check_NT18_7 = if_else(NT18_7 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag8 = lag(Time_18, 8)) %>%
  mutate(NT18_8 = if_else(check_NT18_7 == TRUE, print(T18_lag8), print(NT18_7))) %>% 
  mutate(check_NT18_8 = if_else(NT18_8 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag9 = lag(Time_18, 9)) %>%
  mutate(NT18_9 = if_else(check_NT18_8 == TRUE, print(T18_lag9), print(NT18_8)))

ist18 <- ist18 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT18_9)


sst18 <- sst18 %>% mutate(T18_lag1 = lag(Time_18, 1)) %>%
  mutate(NT18_1 = if_else(T18 == TRUE, print(T18_lag1), print(Time_18))) %>%
  mutate(check_NT18_1 = if_else(NT18_1 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag2 = lag(Time_18, 2)) %>% 
  mutate(NT18_2 = if_else(check_NT18_1 == TRUE, print(T18_lag2), print(NT18_1))) %>% 
  mutate(check_NT18_2 = if_else(NT18_2 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag3 = lag(Time_18, 3)) %>% 
  mutate(NT18_3 = if_else(check_NT18_2 == TRUE, print(T18_lag3), print(NT18_2))) %>% 
  mutate(check_NT18_3 = if_else(NT18_3 == 0, TRUE, FALSE)) %>%
  mutate(T18_lag4 = lag(Time_18, 4)) %>% 
  mutate(NT18_4 = if_else(check_NT18_3 == TRUE, print(T18_lag4), print(NT18_3))) %>% 
  mutate(check_NT18_4 = if_else(NT18_4 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag5 = lag(Time_18, 5)) %>% 
  mutate(NT18_5 = if_else(check_NT18_4 == TRUE, print(T18_lag5), print(NT18_4))) %>% 
  mutate(check_NT18_5 = if_else(NT18_5 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag6 = lag(Time_18, 6)) %>%
  mutate(NT18_6 = if_else(check_NT18_5 == TRUE, print(T18_lag6), print(NT18_5))) %>% 
  mutate(check_NT18_6 = if_else(NT18_6 == 0, TRUE, FALSE)) %>% 
  mutate(T18_lag7 = lag(Time_18, 7)) %>%
  mutate(NT18_7 = if_else(check_NT18_6 == TRUE, print(T18_lag7), print(NT18_6)))


sst18 <- sst18 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT18_7)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_19ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist19 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_19, T19) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst19 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_19, T19) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist19 <- ist19 %>% mutate(T19_lag1 = lag(Time_19, 1)) %>%
  mutate(NT19_1 = if_else(T19 == TRUE, print(T19_lag1), print(Time_19))) %>%
  mutate(check_NT19_1 = if_else(NT19_1 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag2 = lag(Time_19, 2)) %>% 
  mutate(NT19_2 = if_else(check_NT19_1 == TRUE, print(T19_lag2), print(NT19_1))) %>% 
  mutate(check_NT19_2 = if_else(NT19_2 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag3 = lag(Time_19, 3)) %>% 
  mutate(NT19_3 = if_else(check_NT19_2 == TRUE, print(T19_lag3), print(NT19_2))) %>% 
  mutate(check_NT19_3 = if_else(NT19_3 == 0, TRUE, FALSE)) %>%
  mutate(T19_lag4 = lag(Time_19, 4)) %>% 
  mutate(NT19_4 = if_else(check_NT19_3 == TRUE, print(T19_lag4), print(NT19_3))) %>% 
  mutate(check_NT19_4 = if_else(NT19_4 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag5 = lag(Time_19, 5)) %>% 
  mutate(NT19_5 = if_else(check_NT19_4 == TRUE, print(T19_lag5), print(NT19_4))) %>% 
  mutate(check_NT19_5 = if_else(NT19_5 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag6 = lag(Time_19, 6)) %>%
  mutate(NT19_6 = if_else(check_NT19_5 == TRUE, print(T19_lag6), print(NT19_5))) %>% 
  mutate(check_NT19_6 = if_else(NT19_6 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag7 = lag(Time_19, 7)) %>%
  mutate(NT19_7 = if_else(check_NT19_6 == TRUE, print(T19_lag7), print(NT19_6))) %>% 
  mutate(check_NT19_7 = if_else(NT19_7 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag8 = lag(Time_19, 8)) %>%
  mutate(NT19_8 = if_else(check_NT19_7 == TRUE, print(T19_lag8), print(NT19_7))) %>% 
  mutate(check_NT19_8 = if_else(NT19_8 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag9 = lag(Time_19, 9)) %>%
  mutate(NT19_9 = if_else(check_NT19_8 == TRUE, print(T19_lag9), print(NT19_8)))

ist19 <- ist19 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT19_9)


sst19 <- sst19 %>% mutate(T19_lag1 = lag(Time_19, 1)) %>%
  mutate(NT19_1 = if_else(T19 == TRUE, print(T19_lag1), print(Time_19))) %>%
  mutate(check_NT19_1 = if_else(NT19_1 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag2 = lag(Time_19, 2)) %>% 
  mutate(NT19_2 = if_else(check_NT19_1 == TRUE, print(T19_lag2), print(NT19_1))) %>% 
  mutate(check_NT19_2 = if_else(NT19_2 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag3 = lag(Time_19, 3)) %>% 
  mutate(NT19_3 = if_else(check_NT19_2 == TRUE, print(T19_lag3), print(NT19_2))) %>% 
  mutate(check_NT19_3 = if_else(NT19_3 == 0, TRUE, FALSE)) %>%
  mutate(T19_lag4 = lag(Time_19, 4)) %>% 
  mutate(NT19_4 = if_else(check_NT19_3 == TRUE, print(T19_lag4), print(NT19_3))) %>% 
  mutate(check_NT19_4 = if_else(NT19_4 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag5 = lag(Time_19, 5)) %>% 
  mutate(NT19_5 = if_else(check_NT19_4 == TRUE, print(T19_lag5), print(NT19_4))) %>% 
  mutate(check_NT19_5 = if_else(NT19_5 == 0, TRUE, FALSE)) %>% 
  mutate(T19_lag6 = lag(Time_19, 6)) %>%
  mutate(NT19_6 = if_else(check_NT19_5 == TRUE, print(T19_lag6), print(NT19_5)))

sst19 <- sst19 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT19_6)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_20ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist20 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_20, T20) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst20 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_20, T20) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist20 <- ist20 %>% mutate(T20_lag1 = lag(Time_20, 1)) %>%
  mutate(NT20_1 = if_else(T20 == TRUE, print(T20_lag1), print(Time_20))) %>%
  mutate(check_NT20_1 = if_else(NT20_1 == 0, TRUE, FALSE)) %>% 
  mutate(T20_lag2 = lag(Time_20, 2)) %>% 
  mutate(NT20_2 = if_else(check_NT20_1 == TRUE, print(T20_lag2), print(NT20_1))) %>% 
  mutate(check_NT20_2 = if_else(NT20_2 == 0, TRUE, FALSE)) %>% 
  mutate(T20_lag3 = lag(Time_20, 3)) %>% 
  mutate(NT20_3 = if_else(check_NT20_2 == TRUE, print(T20_lag3), print(NT20_2))) %>% 
  mutate(check_NT20_3 = if_else(NT20_3 == 0, TRUE, FALSE)) %>%
  mutate(T20_lag4 = lag(Time_20, 4)) %>% 
  mutate(NT20_4 = if_else(check_NT20_3 == TRUE, print(T20_lag4), print(NT20_3))) %>% 
  mutate(check_NT20_4 = if_else(NT20_4 == 0, TRUE, FALSE)) %>% 
  mutate(T20_lag5 = lag(Time_20, 5)) %>% 
  mutate(NT20_5 = if_else(check_NT20_4 == TRUE, print(T20_lag5), print(NT20_4))) %>% 
  mutate(check_NT20_5 = if_else(NT20_5 == 0, TRUE, FALSE)) %>% 
  mutate(T20_lag6 = lag(Time_20, 6)) %>%
  mutate(NT20_6 = if_else(check_NT20_5 == TRUE, print(T20_lag6), print(NT20_5))) %>% 
  mutate(check_NT20_6 = if_else(NT20_6 == 0, TRUE, FALSE)) %>% 
  mutate(T20_lag7 = lag(Time_20, 7)) %>%
  mutate(NT20_7 = if_else(check_NT20_6 == TRUE, print(T20_lag7), print(NT20_6)))

ist20 <- ist20 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT20_7)


sst20 <- sst20 %>% mutate(T20_lag1 = lag(Time_20, 1)) %>%
  mutate(NT20_1 = if_else(T20 == TRUE, print(T20_lag1), print(Time_20))) %>%
  mutate(check_NT20_1 = if_else(NT20_1 == 0, TRUE, FALSE)) %>% 
  mutate(T20_lag2 = lag(Time_20, 2)) %>% 
  mutate(NT20_2 = if_else(check_NT20_1 == TRUE, print(T20_lag2), print(NT20_1))) %>% 
  mutate(check_NT20_2 = if_else(NT20_2 == 0, TRUE, FALSE)) %>% 
  mutate(T20_lag3 = lag(Time_20, 3)) %>% 
  mutate(NT20_3 = if_else(check_NT20_2 == TRUE, print(T20_lag3), print(NT20_2))) %>% 
  mutate(check_NT20_3 = if_else(NT20_3 == 0, TRUE, FALSE)) %>%
  mutate(T20_lag4 = lag(Time_20, 4)) %>% 
  mutate(NT20_4 = if_else(check_NT20_3 == TRUE, print(T20_lag4), print(NT20_3))) %>% 
  mutate(check_NT20_4 = if_else(NT20_4 == 0, TRUE, FALSE)) %>% 
  mutate(T20_lag5 = lag(Time_20, 5)) %>% 
  mutate(NT20_5 = if_else(check_NT20_4 == TRUE, print(T20_lag5), print(NT20_4))) %>% 
  mutate(check_NT20_5 = if_else(NT20_5 == 0, TRUE, FALSE)) %>% 
  mutate(T20_lag6 = lag(Time_20, 6)) %>%
  mutate(NT20_6 = if_else(check_NT20_5 == TRUE, print(T20_lag6), print(NT20_5)))

sst20 <- sst20 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT20_6)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_21ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist21 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_21, T21) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst21 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_21, T21) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist21 <- ist21 %>% mutate(T21_lag1 = lag(Time_21, 1)) %>%
  mutate(NT21_1 = if_else(T21 == TRUE, print(T21_lag1), print(Time_21))) %>%
  mutate(check_NT21_1 = if_else(NT21_1 == 0, TRUE, FALSE)) %>% 
  mutate(T21_lag2 = lag(Time_21, 2)) %>% 
  mutate(NT21_2 = if_else(check_NT21_1 == TRUE, print(T21_lag2), print(NT21_1))) %>% 
  mutate(check_NT21_2 = if_else(NT21_2 == 0, TRUE, FALSE)) %>% 
  mutate(T21_lag3 = lag(Time_21, 3)) %>% 
  mutate(NT21_3 = if_else(check_NT21_2 == TRUE, print(T21_lag3), print(NT21_2))) %>% 
  mutate(check_NT21_3 = if_else(NT21_3 == 0, TRUE, FALSE)) %>%
  mutate(T21_lag4 = lag(Time_21, 4)) %>% 
  mutate(NT21_4 = if_else(check_NT21_3 == TRUE, print(T21_lag4), print(NT21_3))) %>% 
  mutate(check_NT21_4 = if_else(NT21_4 == 0, TRUE, FALSE)) %>% 
  mutate(T21_lag5 = lag(Time_21, 5)) %>% 
  mutate(NT21_5 = if_else(check_NT21_4 == TRUE, print(T21_lag5), print(NT21_4))) %>% 
  mutate(check_NT21_5 = if_else(NT21_5 == 0, TRUE, FALSE)) %>% 
  mutate(T21_lag6 = lag(Time_21, 6)) %>%
  mutate(NT21_6 = if_else(check_NT21_5 == TRUE, print(T21_lag6), print(NT21_5))) %>% 
  mutate(check_NT21_6 = if_else(NT21_6 == 0, TRUE, FALSE)) %>% 
  mutate(T21_lag7 = lag(Time_21, 7)) %>%
  mutate(NT21_7 = if_else(check_NT21_6 == TRUE, print(T21_lag7), print(NT21_6))) %>% 
  mutate(check_NT21_7 = if_else(NT21_7 == 0, TRUE, FALSE)) %>% 
  mutate(T21_lag8 = lag(Time_21, 8)) %>%
  mutate(NT21_8 = if_else(check_NT21_7 == TRUE, print(T21_lag8), print(NT21_7)))

ist21 <- ist21 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT21_8)


sst21 <- sst21 %>% mutate(T21_lag1 = lag(Time_21, 1)) %>%
  mutate(NT21_1 = if_else(T21 == TRUE, print(T21_lag1), print(Time_21))) %>%
  mutate(check_NT21_1 = if_else(NT21_1 == 0, TRUE, FALSE)) %>% 
  mutate(T21_lag2 = lag(Time_21, 2)) %>% 
  mutate(NT21_2 = if_else(check_NT21_1 == TRUE, print(T21_lag2), print(NT21_1))) %>% 
  mutate(check_NT21_2 = if_else(NT21_2 == 0, TRUE, FALSE)) %>% 
  mutate(T21_lag3 = lag(Time_21, 3)) %>% 
  mutate(NT21_3 = if_else(check_NT21_2 == TRUE, print(T21_lag3), print(NT21_2))) %>% 
  mutate(check_NT21_3 = if_else(NT21_3 == 0, TRUE, FALSE)) %>%
  mutate(T21_lag4 = lag(Time_21, 4)) %>% 
  mutate(NT21_4 = if_else(check_NT21_3 == TRUE, print(T21_lag4), print(NT21_3))) %>% 
  mutate(check_NT21_4 = if_else(NT21_4 == 0, TRUE, FALSE)) %>% 
  mutate(T21_lag5 = lag(Time_21, 5)) %>% 
  mutate(NT21_5 = if_else(check_NT21_4 == TRUE, print(T21_lag5), print(NT21_4))) %>% 
  mutate(check_NT21_5 = if_else(NT21_5 == 0, TRUE, FALSE)) %>% 
  mutate(T21_lag6 = lag(Time_21, 6)) %>%
  mutate(NT21_6 = if_else(check_NT21_5 == TRUE, print(T21_lag6), print(NT21_5)))

sst21 <- sst21 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT21_6)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_22ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist22 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_22, T22) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst22 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_22, T22) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)

ist22 <- ist22 %>% mutate(T22_lag1 = lag(Time_22, 1)) %>%
  mutate(NT22_1 = if_else(T22 == TRUE, print(T22_lag1), print(Time_22))) %>%
  mutate(check_NT22_1 = if_else(NT22_1 == 0, TRUE, FALSE)) %>% 
  mutate(T22_lag2 = lag(Time_22, 2)) %>% 
  mutate(NT22_2 = if_else(check_NT22_1 == TRUE, print(T22_lag2), print(NT22_1))) %>% 
  mutate(check_NT22_2 = if_else(NT22_2 == 0, TRUE, FALSE)) %>% 
  mutate(T22_lag3 = lag(Time_22, 3)) %>% 
  mutate(NT22_3 = if_else(check_NT22_2 == TRUE, print(T22_lag3), print(NT22_2))) %>% 
  mutate(check_NT22_3 = if_else(NT22_3 == 0, TRUE, FALSE)) %>%
  mutate(T22_lag4 = lag(Time_22, 4)) %>% 
  mutate(NT22_4 = if_else(check_NT22_3 == TRUE, print(T22_lag4), print(NT22_3))) %>% 
  mutate(check_NT22_4 = if_else(NT22_4 == 0, TRUE, FALSE)) %>% 
  mutate(T22_lag5 = lag(Time_22, 5)) %>% 
  mutate(NT22_5 = if_else(check_NT22_4 == TRUE, print(T22_lag5), print(NT22_4))) %>% 
  mutate(check_NT22_5 = if_else(NT22_5 == 0, TRUE, FALSE)) %>% 
  mutate(T22_lag6 = lag(Time_22, 6)) %>%
  mutate(NT22_6 = if_else(check_NT22_5 == TRUE, print(T22_lag6), print(NT22_5))) %>% 
  mutate(check_NT22_6 = if_else(NT22_6 == 0, TRUE, FALSE)) %>% 
  mutate(T22_lag7 = lag(Time_22, 7)) %>%
  mutate(NT22_7 = if_else(check_NT22_6 == TRUE, print(T22_lag7), print(NT22_6))) %>% 
  mutate(check_NT22_7 = if_else(NT22_7 == 0, TRUE, FALSE)) %>% 
  mutate(T22_lag8 = lag(Time_22, 8)) %>%
  mutate(NT22_8 = if_else(check_NT22_7 == TRUE, print(T22_lag8), print(NT22_7)))

ist22 <- ist22 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT22_8)


sst22 <- sst22 %>% mutate(T22_lag1 = lag(Time_22, 1)) %>%
  mutate(NT22_1 = if_else(T22 == TRUE, print(T22_lag1), print(Time_22))) %>%
  mutate(check_NT22_1 = if_else(NT22_1 == 0, TRUE, FALSE)) %>% 
  mutate(T22_lag2 = lag(Time_22, 2)) %>% 
  mutate(NT22_2 = if_else(check_NT22_1 == TRUE, print(T22_lag2), print(NT22_1))) %>% 
  mutate(check_NT22_2 = if_else(NT22_2 == 0, TRUE, FALSE)) %>% 
  mutate(T22_lag3 = lag(Time_22, 3)) %>% 
  mutate(NT22_3 = if_else(check_NT22_2 == TRUE, print(T22_lag3), print(NT22_2))) %>% 
  mutate(check_NT22_3 = if_else(NT22_3 == 0, TRUE, FALSE)) %>%
  mutate(T22_lag4 = lag(Time_22, 4)) %>% 
  mutate(NT22_4 = if_else(check_NT22_3 == TRUE, print(T22_lag4), print(NT22_3))) %>% 
  mutate(check_NT22_4 = if_else(NT22_4 == 0, TRUE, FALSE)) %>% 
  mutate(T22_lag5 = lag(Time_22, 5)) %>% 
  mutate(NT22_5 = if_else(check_NT22_4 == TRUE, print(T22_lag5), print(NT22_4))) %>% 
  mutate(check_NT22_5 = if_else(NT22_5 == 0, TRUE, FALSE)) %>% 
  mutate(T22_lag6 = lag(Time_22, 6)) %>%
  mutate(NT22_6 = if_else(check_NT22_5 == TRUE, print(T22_lag6), print(NT22_5)))

sst22 <- sst22 %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, NT22_6)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

istall <- cbind(ist6, ist7$NT7_10, ist8$NT8_11, ist9$NT9_11, ist10$NT10_11, ist11$NT11_11, ist12$NT12_12, ist13$NT13_11, ist14$NT14_11, ist15$NT15_9, ist16$NT16_9, ist17$NT17_9, ist18$NT18_9, ist19$NT19_9, ist20$NT20_7, ist21$NT21_8, ist22$NT22_8)

sstall <- cbind(sst6, sst7$NT7_9, sst8$NT8_7, sst9$NT9_11, sst10$NT10_11, sst11$NT11_11, sst12$NT12_11, sst13$NT13_10, sst14$NT14_10, sst15$NT15_9, sst16$NT16_8, sst17$NT17_8, sst18$NT18_7, sst19$NT19_6, sst20$NT20_6, sst21$NT21_6, sst22$NT22_6)

# 저장 후 주석처리
# write.csv(istall, 'c:/Big Data Contest/istall.csv')
# write.csv(sstall, 'c:/Big Data Contest/sstall.csv')

ist <- read.csv('c:/Big Data Contest/istall.csv')
sst <- read.csv('c:/Big Data Contest/sstall.csv')


names(ist) <- c("Seq", "DATE","Day","Point_Name", "Point_No","Inflow_Spill","T6", "T7", "T8", "T9", "T10", "T11", "T12", "T13", "T14", "T15", "T16", "T17", "T18", "T19", "T20", "T21", "T22")
names(sst) <- c("Seq", "DATE","Day","Point_Name", "Point_No","Inflow_Spill","T6", "T7", "T8", "T9", "T10", "T11", "T12", "T13", "T14", "T15", "T16", "T17", "T18", "T19", "T20", "T21", "T22")

Seoul_traffic <- rbind(ist, sst)

Seoul_traffic <- Seoul_traffic %>% select(-Seq) %>% arrange(DATE, Point_No)

# write.csv(Seoul_traffic, 'c:/Big Data Contest/Seoul_traffic_nadelete.csv')

Seoul_traffic <- Seoul_traffic %>% mutate(Day_check = if_else((Day == '토' | Day == '일'), '주말', '평일'))

# 순서부여 + 3시간 단위로 시간대 합치기

Seoul_traffic <- Seoul_traffic %>% mutate(Code = row_number()) %>% 
  mutate(Time6_8 = print(Seoul_traffic$T6 + Seoul_traffic$T7 + Seoul_traffic$T8)) %>% 
  mutate(Time9_11 = print(Seoul_traffic$T9 + Seoul_traffic$T10 + Seoul_traffic$T11)) %>% 
  mutate(Time12_14 = print(Seoul_traffic$T12 + Seoul_traffic$T13 + Seoul_traffic$T14)) %>% 
  mutate(Time15_17 = print(Seoul_traffic$T15 + Seoul_traffic$T16 + Seoul_traffic$T17)) %>% 
  mutate(Time18_20 = print(Seoul_traffic$T18 + Seoul_traffic$T19 + Seoul_traffic$T20)) %>% 
  mutate(Time21_22 = print(Seoul_traffic$T21 + Seoul_traffic$T22))

# 날짜 속성 부여
Seoul_traffic <- Seoul_traffic %>% mutate(New_Date = as.Date(DATE, format = '%Y-%m-%d'))

# 월별로 뽑아내고 분기별로 값을 지정해주기
Seoul_traffic<- Seoul_traffic %>% mutate(Chrdate = as.character(DATE))

vecdate <- as.vector(Seoul_traffic$Chrdate)

Seoul_traffic <- Seoul_traffic %>% mutate(Month = str_split(vecdate, '-', simplify = TRUE)[ ,2])

Seoul_traffic <- Seoul_traffic %>% mutate(Quarter = case_when(Month == '01' ~ 'Q1',
                                                              Month == '02' ~ 'Q1',
                                                              Month == '03' ~ 'Q1',
                                                              Month == '04' ~ 'Q2',
                                                              Month == '05' ~ 'Q2',
                                                              Month == '06' ~ 'Q2',
                                                              Month == '07' ~ 'Q3',
                                                              Month == '08' ~ 'Q3',
                                                              Month == '09' ~ 'Q3',
                                                              Month == '10' ~ 'Q4',
                                                              Month == '11' ~ 'Q4',
                                                              Month == '12' ~ 'Q4'))

# 필요없는 컬럼은 제거 후 컬럼 순서 변경 후 각 지점별 통행량통합과 각 지점별 유입출 건수를 이용해서 증감율 구하기
Seoul_traffic <- Seoul_traffic %>% select(-T6, -T7, -T8, -T9, -T10, -T11, -T12, -T13, -T14, -T15, -T16, -T17, -T18, -T19, -T20, -T21, -T22, -DATE, -Chrdate, -Month)

Seoul_traffic <- Seoul_traffic %>% mutate(Year = str_extract(New_Date, '[0-9]{1,4}'))

Seoul_traffic <- Seoul_traffic[, c(13, 14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)]

Seoul_traffic_Quarter_new <- Seoul_traffic %>% group_by(Year, Quarter, Point_No, Inflow_Spill) %>% summarise(sum = sum(Time6_8, Time9_11, Time12_14, Time15_17, Time18_20, Time21_22))

qnp <- Seoul_traffic_Quarter_new %>% group_by() %>% mutate(code = row_number())

countp <- Seoul_traffic %>%  group_by(Year, Quarter, Point_No, Inflow_Spill) %>% summarise(n=n()) %>% group_by() %>% mutate(code = row_number())

countp <- countp %>% select(code, n)

qnp <- qnp %>% inner_join(countp, by = c('code' = 'code')) 

qnp <- qnp %>% group_by(Year, Point_No, Inflow_Spill) %>% summarise(allsum = sum(sum), alln = sum(n))

qnp <- qnp %>% group_by() %>% mutate(seq = row_number())

# write.csv(qnp, 'c:/Big Data Contest/년도_지점_유입출_sum_n_통합데이터.csv')

qwe <- qnp %>% mutate(Point_check = str_extract(Point_No, '[A-Z]{1,1}'))

#각 지점값을 num이라는 변수에 입력해서 특정 기간별 증감율 확인(num에 B, C, D, F 중 입력)
num <- 'F'
qwe %>% filter(Year <= 2018 & Point_check == num  & Inflow_Spill == '유입') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 2)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)

qwe %>% filter(Year <= 2018 & Point_check == num  & Inflow_Spill == '유출') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 2)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)

qwe %>% filter(Year >= 2018 & Point_check == num  & Inflow_Spill == '유입') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 3)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)

qwe %>% filter(Year >= 2018 & Point_check == num  & Inflow_Spill == '유출') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 3)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)

qwe %>% filter(Point_check == num  & Inflow_Spill == '유입') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 3)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)

qwe %>% filter(Point_check == num  & Inflow_Spill == '유출') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 3)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)

# num에 B, C, D, F 지점별로 입력해서 각 지점별 특정 시기의 유입/유출 증감율 확인
ipnb <- qwe %>% filter(Point_check == 'B'  & Inflow_Spill == '유입') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 1)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)
spnb <- qwe %>% filter(Point_check == 'B'  & Inflow_Spill == '유출') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 1)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)
ipnc <- qwe %>% filter(Point_check == 'C'  & Inflow_Spill == '유입') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 1)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)
spnc <- qwe %>% filter(Point_check == 'C'  & Inflow_Spill == '유출') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 1)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)
ipnd <- qwe %>% filter(Point_check == 'D'  & Inflow_Spill == '유입') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 1)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)
spnd <- qwe %>% filter(Point_check == 'D'  & Inflow_Spill == '유출') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 1)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)
ipnf <- qwe %>% filter(Point_check == 'F'  & Inflow_Spill == '유입') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 1)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)
spnf <- qwe %>% filter(Point_check == 'F'  & Inflow_Spill == '유출') %>% group_by(Point_No) %>% mutate(ratio = allsum/alln) %>%
  mutate(lag_ratio = lag(ratio, 1)) %>% mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% select(Point_No, Year, per_val) %>% 
  spread(key=Year, value=per_val)
ipnb[is.na(ipnb)] <- 0
ipnc[is.na(ipnc)] <- 0
ipnd[is.na(ipnd)] <- 0
ipnf[is.na(ipnf)] <- 0
spnb[is.na(spnb)] <- 0
spnc[is.na(spnc)] <- 0
spnd[is.na(spnd)] <- 0
spnf[is.na(spnf)] <- 0

ipn <- rbind(ipnb, ipnc, ipnd, ipnf)
spn <- rbind(spnb, spnc, spnd, spnf)

ipn <- ipn %>% mutate(Inflow_spill = if_else(Point_No != 0, '유입', '오류')) %>% mutate(Point_check = str_extract(Point_No, '[A-Z]{1,1}'))
spn <- spn %>% mutate(Inflow_spill = if_else(Point_No != 0, '유출', '오류')) %>% mutate(Point_check = str_extract(Point_No, '[A-Z]{1,1}'))

pn <- rbind(ipn, spn)

# 지점-년도별 그래프 시각화하기
pn_temp <- gather(pn, key='year', value = 'value', -Point_No, -Inflow_spill, -Point_check)

para_list <- unique(pn_temp$year)
length(para_list)

pn_list <- unique(pn_temp$Point_check)
length(pn_list)


for (i in 2:length(para_list)){
  v_para <- para_list[i]
  for (k in 1:length(pn_list)){
    v_pn <- pn_list[k]
    pn_temp %>% filter(year == v_para & Inflow_spill == '유입' & Point_check ==  v_pn) %>% ggplot(aes(x = value, y = Point_No)) +
      geom_col() + ggtitle(paste0(v_para, '년 ', v_pn, '지점 유입증감율')) +
      ggsave(file = paste0("C:/Big Data Contest/지점년도별 증감율그래프/ipn_", v_pn, v_para, ".jpg"))
  }
}


for (i in 2:length(para_list)){
  v_para <- para_list[i]
  for (k in 1:length(pn_list)){
    v_pn <- pn_list[k]
    pn_temp %>% filter(year == v_para & Inflow_spill == '유출' & Point_check ==  v_pn) %>% ggplot(aes(x = value, y = Point_No)) +
      geom_col() + ggtitle(paste0(v_para, '년 ', v_pn, '지점 유출증감율')) +
      ggsave(file = paste0("C:/Big Data Contest/지점년도별 증감율그래프/spn_", v_pn, v_para, ".jpg"))
  }
}