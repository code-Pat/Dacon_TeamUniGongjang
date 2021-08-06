install.packages('lubridate')
install.packages('zoo')
library(tidyverse)
library(lubridate)
library(dplyr)
library(readxl)
library(zoo)


population <- read.csv('c:/Big Data Contest/서울시_주민등록인구_구별.csv')
population <- population %>% mutate(YearQ = str_remove_all(DATE, '/4')) %>% select(-DATE)

# x값에 지역별로 입력해서 그래프 확인
X = '강동구'
population %>% filter(AREA == X) %>% ggplot(aes(YearQ, POPULATION, group=1)) + geom_line()