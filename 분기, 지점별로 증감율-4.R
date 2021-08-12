library(dplyr)
library(readxl)
library(ggplot2)
library(sqldf)
library(stringr)
library(writexl)
library(kimisc)
library(tidyr)

Seoul_traffic <- read_excel('c:/Big Data Contest/Seoul_traffic_R_final.xlsx')

# na값 제거
Seoul_traffic <- na.omit(Seoul_traffic)

# 2016년 1월 1일 이후 데이터만 가져오고 순서부여
Seoul_traffic <- Seoul_traffic %>% filter(DATE >= '2016-01-01') %>% mutate(Code = row_number())

# 3시간 단위로 시간대 합치기
Seoul_traffic <- Seoul_traffic %>% mutate(Time0_2 = print(Seoul_traffic$Time_0 + Seoul_traffic$Time_1 + Seoul_traffic$Time_2)) %>% 
  mutate(Time3_5 = print(Seoul_traffic$Time_3 + Seoul_traffic$Time_4 + Seoul_traffic$Time_5)) %>% 
  mutate(Time6_8 = print(Seoul_traffic$Time_6 + Seoul_traffic$Time_7 + Seoul_traffic$Time_8)) %>% 
  mutate(Time9_11 = print(Seoul_traffic$Time_9 + Seoul_traffic$Time_10 + Seoul_traffic$Time_11)) %>% 
  mutate(Time12_14 = print(Seoul_traffic$Time_12 + Seoul_traffic$Time_13 + Seoul_traffic$Time_14)) %>% 
  mutate(Time15_17 = print(Seoul_traffic$Time_15 + Seoul_traffic$Time_16 + Seoul_traffic$Time_17)) %>% 
  mutate(Time18_20 = print(Seoul_traffic$Time_18 + Seoul_traffic$Time_19 + Seoul_traffic$Time_20)) %>% 
  mutate(Time21_23 = print(Seoul_traffic$Time_21 + Seoul_traffic$Time_22 + Seoul_traffic$Time_23))

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

# 필요없는 컬럼은 제거 후 컬럼 순서 변경
Seoul_traffic <- Seoul_traffic %>% select(-Time_0, -Time_1, -Time_2, -Time_3, -Time_4, -Time_5, -Time_6, -Time_7, -Time_8, -Time_9, -Time_10, -Time_11, -Time_12, -Time_13, -Time_14, -Time_15, -Time_16, -Time_17, -Time_18, -Time_19, -Time_20, -Time_21, -Time_22, -Time_23, -DATE, -Chrdate, -Month)

Seoul_traffic <- Seoul_traffic[, c(15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14)]

Seoul_traffic <- Seoul_traffic %>% mutate(Year = str_extract(New_Date, '[0-9]{1,4}'))

# < 년, 분기, 지점별 토탈데이터 > 
Seoul_traffic_Quarter <- Seoul_traffic %>% group_by(Year, Quarter, Point_No, Inflow_Spill) %>% summarise(sum = sum(Time0_2, Time3_5, Time6_8, Time9_11, Time12_14, Time15_17, Time18_20, Time21_23))

# 각 지점을 기준으로 년, 분기별로 몇 건의 데이터가 있는지 확인
Seoul_traffic %>% filter(Point_No == k & Inflow_Spill == '유입') %>% group_by(Year, Quarter) %>% summarise(n=n()) %>% View()

# 각 지점을 기준으로 년, 분기별로 몇 건의 데이터가 있는지 확인
k = 'A-01'
stqn <- Seoul_traffic %>% filter(Point_No == k & Inflow_Spill == '유입') %>% group_by(Year, Quarter) %>% summarise(n=n())

stqn <- stqn %>% group_by() %>% mutate(seq = row_number())

stqn <- stqn %>% select(-Year, -Quarter)

stq <- Seoul_traffic_Quarter %>% filter(Point_No == k & Inflow_Spill == '유입') %>% group_by() %>% mutate(seq = row_number())

stq <- stq %>% inner_join(stqn, by=c('seq' = 'seq'))

stq <- stq %>% mutate(ratio = sum/n) %>% mutate(lag_ratio = lag(ratio, 1)) %>%
  mutate(per_val = (ratio - lag_ratio) / ( lag_ratio/100)) %>% 
  select(Point_No, seq, per_val) %>% spread(key=seq, value=per_val)



# P_N_A_1 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-01')
# P_N_A_2 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-02')
# P_N_A_3 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-03')
# P_N_A_4 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-04')
# P_N_A_5 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-05')
# P_N_A_6 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-06')
# P_N_A_7 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-07')
# P_N_A_8 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-08')
# P_N_A_9 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-09')
# P_N_A_10 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-10')
# P_N_A_11 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-11')
# P_N_A_12 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-12')
# P_N_A_13 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-13')
# P_N_A_14 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-14')
# P_N_A_15 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-15')
# P_N_A_16 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-16')
# P_N_A_17 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-17')
# P_N_A_18 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-18')
# P_N_A_19 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-19')
# P_N_A_20 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-20')
# P_N_A_21 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-21')
# P_N_A_22 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-22')
# P_N_A_23 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-23')
# P_N_A_24 <- Seoul_traffic_Quarter %>% filter(Point_No == 'A-24')
# 
# P_N_B_1 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-01')
# P_N_B_2 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-02')
# P_N_B_3 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-03')
# P_N_B_4 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-04')
# P_N_B_5 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-05')
# P_N_B_6 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-06')
# P_N_B_7 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-07')
# P_N_B_8 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-08')
# P_N_B_9 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-09')
# P_N_B_10 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-10')
# P_N_B_11 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-11')
# P_N_B_12 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-12')
# P_N_B_13 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-13')
# P_N_B_14 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-14')
# P_N_B_15 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-15')
# P_N_B_16 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-16')
# P_N_B_17 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-17')
# P_N_B_18 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-18')
# P_N_B_19 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-19')
# P_N_B_20 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-20')
# P_N_B_21 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-21')
# P_N_B_22 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-22')
# P_N_B_23 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-23')
# P_N_B_24 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-24')
# P_N_B_25 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-25')
# P_N_B_26 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-26')
# P_N_B_27 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-27')
# P_N_B_28 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-28')
# P_N_B_29 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-29')
# P_N_B_30 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-30')
# P_N_B_31 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-31')
# P_N_B_32 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-32')
# P_N_B_33 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-33')
# P_N_B_34 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-34')
# P_N_B_35 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-35')
# P_N_B_36 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-36')
# P_N_B_37 <- Seoul_traffic_Quarter %>% filter(Point_No == 'B-37')
# 
# P_N_C_1 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-01')
# P_N_C_2 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-02')
# P_N_C_3 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-03')
# P_N_C_4 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-04')
# P_N_C_5 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-05')
# P_N_C_6 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-06')
# P_N_C_7 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-07')
# P_N_C_8 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-08')
# P_N_C_9 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-09')
# P_N_C_10 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-10')
# P_N_C_11 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-11')
# P_N_C_12 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-12')
# P_N_C_13 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-13')
# P_N_C_14 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-14')
# P_N_C_15 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-15')
# P_N_C_16 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-16')
# P_N_C_17 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-17')
# P_N_C_18 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-18')
# P_N_C_19 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-19')
# P_N_C_20 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-20')
# P_N_C_21 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-21')
# P_N_C_22 <- Seoul_traffic_Quarter %>% filter(Point_No == 'C-22')
# 
# P_N_D_1 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-01')
# P_N_D_2 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-02')
# P_N_D_3 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-03')
# P_N_D_4 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-04')
# P_N_D_5 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-05')
# P_N_D_6 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-06')
# P_N_D_7 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-07')
# P_N_D_8 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-08')
# P_N_D_9 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-09')
# P_N_D_10 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-10')
# P_N_D_11 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-11')
# P_N_D_12 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-12')
# P_N_D_13 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-13')
# P_N_D_14 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-14')
# P_N_D_15 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-15')
# P_N_D_16 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-16')
# P_N_D_17 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-17')
# P_N_D_18 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-18')
# P_N_D_19 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-19')
# P_N_D_20 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-20')
# P_N_D_21 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-21')
# P_N_D_22 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-22')
# P_N_D_23 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-23')
# P_N_D_24 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-24')
# P_N_D_25 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-25')
# P_N_D_26 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-26')
# P_N_D_27 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-27')
# P_N_D_28 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-28')
# P_N_D_29 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-29')
# P_N_D_30 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-30')
# P_N_D_31 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-31')
# P_N_D_32 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-32')
# P_N_D_33 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-33')
# P_N_D_34 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-34')
# P_N_D_35 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-35')
# P_N_D_36 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-36')
# P_N_D_37 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-37')
# P_N_D_38 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-38')
# P_N_D_39 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-39')
# P_N_D_40 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-40')
# P_N_D_41 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-41')
# P_N_D_42 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-42')
# P_N_D_43 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-43')
# P_N_D_44 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-44')
# P_N_D_45 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-45')
# P_N_D_46 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-46')
# P_N_D_47 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-47')
# P_N_D_48 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-48')
# P_N_D_50 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-50')
# P_N_D_51 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-51')
# P_N_D_52 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-52')
# P_N_D_53 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-53')
# P_N_D_54 <- Seoul_traffic_Quarter %>% filter(Point_No == 'D-54')
# 
# P_N_F_1 <- Seoul_traffic_Quarter %>% filter(Point_No == 'F-01')
# P_N_F_2 <- Seoul_traffic_Quarter %>% filter(Point_No == 'F-02')
# P_N_F_3 <- Seoul_traffic_Quarter %>% filter(Point_No == 'F-03')
# P_N_F_4 <- Seoul_traffic_Quarter %>% filter(Point_No == 'F-04')
# P_N_F_5 <- Seoul_traffic_Quarter %>% filter(Point_No == 'F-05')
# P_N_F_6 <- Seoul_traffic_Quarter %>% filter(Point_No == 'F-06')
# P_N_F_7 <- Seoul_traffic_Quarter %>% filter(Point_No == 'F-07')
# P_N_F_8 <- Seoul_traffic_Quarter %>% filter(Point_No == 'F-08')
# P_N_F_9 <- Seoul_traffic_Quarter %>% filter(Point_No == 'F-09')
# 
# 