# 지점별로 기준을 먼저 잡고 그다음 날짜로 기준을 잡고 Time_6... 한 컬럼의 값을 기준으로 lead?lag?를 써서 값을 한칸씩 내리거나 올린 후 원래 항목의 값이 0이면 내리거나 올린 값을 옆으로 채워서 넣어주기..

Seoul_traffic <- read.csv('c:/Big Data Contest/Seoul_traffic_08_11.csv')


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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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

s %>% filter(NT6_15 == 0) %>% count()
# 지점별로 하나하나 나눠서 하면 좀 더 정확성이 높아지긴하지만 너무 많은 건수...=> 또한, 그렇게 하더라도 계속 0값이 나오는 구간은 다 같은 구간이 이어져서 나오는게 대부분이라고 생각하는게 결론 
# 120 x 2 x 17.. = 

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡTime_7ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

ist7 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_7, T7) %>% filter(Inflow_Spill == '유입') %>% arrange(Point_No, Day)
sst7 <- Seoul_traffic %>% select(DATE, Day, Point_Name, Point_No, Inflow_Spill, Time_7, T7) %>% filter(Inflow_Spill == '유출') %>% arrange(Point_No, Day)


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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


# 해당 컬럼의 값이 0인지 T/F로 체크 -> n칸 끌어내려서 데이터값 입력 -> 이후 한칸 끌어내린 데이터의 값이 0이면 한칸 끌어내린 값을 입력, 그렇지 않으면 기존 값을 입력 -> 이후 다시 0값이 완전히 없어질때까지 반복
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

write.csv(istall, 'c:/Big Data Contest/istall.csv')

write.csv(sstall, 'c:/Big Data Contest/sstall.csv')