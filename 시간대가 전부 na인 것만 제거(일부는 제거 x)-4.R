library(readxl)

Seoul_traffic <- read_excel('c:/Big Data Contest/Seoul_traffic_R_final.xlsx')

Seoul_traffic <- Seoul_traffic %>% filter(DATE >= '2016-01-01')

Seoul_traffic <- Seoul_traffic %>% mutate(a_check = str_detect(Point_No, 'A', FALSE)) %>% filter(a_check != TRUE)

Seoul_traffic <- Seoul_traffic %>% mutate(code = row_number())

Seoul_traffic <- Seoul_traffic %>% select(-Time_0, -Time_1, -Time_2, -Time_3, -Time_4, -Time_5, -Time_23, -Direction)

Seoul_traffic[is.na(Seoul_traffic)] <- 0


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


write.csv(Seoul_traffic, 'c:/Big Data Contest/Seoul_traffic_08_11.csv')