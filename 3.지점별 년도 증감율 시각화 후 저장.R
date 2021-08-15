

ipnb <- read.csv('c:/Big Data Contest/I_PN/I_PN_B_final.csv')
ipnb[is.na(ipnb)] <- 0

# B지점 시각화(x축은 25 단위로 -100~ 100까지 범위 고정 후 범위지정 25단위로 나누기)
ipnb %>% select(Point_No, X2017) %>% ggplot(aes(x = X2017, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-100, 100)) + scale_x_continuous(breaks = seq(-100, 100, 25)) + ggtitle('2017년 B지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnb_2017.jpg")

ipnb %>% select(Point_No, X2018) %>% ggplot(aes(x = X2018, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 10)) + ggtitle('2018년 B지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnb_2018.jpg")

ipnb %>% select(Point_No, X2019) %>% ggplot(aes(x = X2019, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2019년 B지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnb_2019.jpg")

ipnb %>% select(Point_No, X2020) %>% ggplot(aes(x = X2020, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2020년 B지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnb_2020.jpg")

ipnb %>% select(Point_No, X2021) %>% ggplot(aes(x = X2021, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-30, 30)) + scale_x_continuous(breaks = seq(-30, 30, 5)) + ggtitle('2021년 B지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnb_2021.jpg")


ipnc <- read.csv('c:/Big Data Contest/I_PN/I_PN_C_final.csv')
ipnc[is.na(ipnc)] <- 0

ipnc %>% select(Point_No, X2017) %>% ggplot(aes(x = X2017, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-30, 30)) + scale_x_continuous(breaks = seq(-30, 30, 5)) + ggtitle('2017년 C지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnc_2017.jpg")

ipnc %>% select(Point_No, X2018) %>% ggplot(aes(x = X2018, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-30, 30)) + scale_x_continuous(breaks = seq(-30, 30, 5)) + ggtitle('2018년 C지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnc_2018.jpg")

ipnc %>% select(Point_No, X2019) %>% ggplot(aes(x = X2019, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2019년 C지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnc_2019.jpg")

ipnc %>% select(Point_No, X2020) %>% ggplot(aes(x = X2020, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2020년 C지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnc_2020.jpg")

ipnc %>% select(Point_No, X2021) %>% ggplot(aes(x = X2021, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2021년 C지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnc_2021.jpg")


ipnd <- read.csv('c:/Big Data Contest/I_PN/I_PN_D_final.csv')
ipnd[is.na(ipnd)] <- 0

ipnd %>% select(Point_No, X2017) %>% ggplot(aes(x = X2017, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 25)) + ggtitle('2017년 D지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnd_2017.jpg")

ipnd %>% select(Point_No, X2018) %>% ggplot(aes(x = X2018, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 25)) + ggtitle('2018년 D지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnd_2018.jpg")

ipnd %>% select(Point_No, X2019) %>% ggplot(aes(x = X2019, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2019년 D지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnd_2019.jpg")

ipnd %>% select(Point_No, X2020) %>% ggplot(aes(x = X2020, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2020년 D지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnd_2020.jpg")

ipnd %>% select(Point_No, X2021) %>% ggplot(aes(x = X2021, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2021년 D지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnd_2021.jpg")


ipnf <- read.csv('c:/Big Data Contest/I_PN/I_PN_F.csv')
ipnf[is.na(ipnf)] <- 0

ipnf %>% select(Point_No, X2017) %>% ggplot(aes(x = X2017, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2017년 F지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnf_2017.jpg")

ipnf %>% select(Point_No, X2018) %>% ggplot(aes(x = X2018, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 25)) + ggtitle('2018년 F지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnf_2018.jpg")

ipnf %>% select(Point_No, X2019) %>% ggplot(aes(x = X2019, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2019년 F지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnf_2019.jpg")

ipnf %>% select(Point_No, X2020) %>% ggplot(aes(x = X2020, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2020년 F지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnf_2020.jpg")

ipnf %>% select(Point_No, X2021) %>% ggplot(aes(x = X2021, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2021년 F지점 유입증감율') + ggsave(file = "C:/Big Data Contest/I_PN/ipnf_2021.jpg")


#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

spnb <- read.csv('c:/Big Data Contest/S_PN/S_PN_B_final.csv')
spnb[is.na(spnb)] <- 0

# B지점 시각화(x축은 25 단위로 -100~ 100까지 범위 고정 후 범위지정 25단위로 나누기)
spnb %>% select(Point_No, X2017) %>% ggplot(aes(x = X2017, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-100, 100)) + scale_x_continuous(breaks = seq(-100, 100, 25)) + ggtitle('2017년 B지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnb_2017.jpg")

spnb %>% select(Point_No, X2018) %>% ggplot(aes(x = X2018, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 10)) + ggtitle('2018년 B지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnb_2018.jpg")

spnb %>% select(Point_No, X2019) %>% ggplot(aes(x = X2019, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 25)) + ggtitle('2019년 B지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnb_2019.jpg")

spnb %>% select(Point_No, X2020) %>% ggplot(aes(x = X2020, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-30, 30)) + scale_x_continuous(breaks = seq(-30, 30, 5)) + ggtitle('2020년 B지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnb_2020.jpg")

spnb %>% select(Point_No, X2021) %>% ggplot(aes(x = X2021, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-30, 30)) + scale_x_continuous(breaks = seq(-30, 30, 5)) + ggtitle('2021년 B지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnb_2021.jpg")


spnc <- read.csv('c:/Big Data Contest/S_PN/S_PN_C_final.csv')
spnc[is.na(spnc)] <- 0

spnc %>% select(Point_No, X2017) %>% ggplot(aes(x = X2017, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 25)) + ggtitle('2017년 C지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnc_2017.jpg")

spnc %>% select(Point_No, X2018) %>% ggplot(aes(x = X2018, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 5)) + ggtitle('2018년 C지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnc_2018.jpg")

spnc %>% select(Point_No, X2019) %>% ggplot(aes(x = X2019, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2019년 C지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnc_2019.jpg")

spnc %>% select(Point_No, X2020) %>% ggplot(aes(x = X2020, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2020년 C지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnc_2020.jpg")

spnc %>% select(Point_No, X2021) %>% ggplot(aes(x = X2021, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2021년 C지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnc_2021.jpg")


spnd <- read.csv('c:/Big Data Contest/S_PN/S_PN_D_final.csv')
spnd[is.na(spnd)] <- 0

spnd %>% select(Point_No, X2017) %>% ggplot(aes(x = X2017, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-30, 30)) + scale_x_continuous(breaks = seq(-30, 30, 5)) + ggtitle('2017년 D지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnd_2017.jpg")

spnd %>% select(Point_No, X2018) %>% ggplot(aes(x = X2018, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 25)) + ggtitle('2018년 D지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnd_2018.jpg")

spnd %>% select(Point_No, X2019) %>% ggplot(aes(x = X2019, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2019년 D지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnd_2019.jpg")

spnd %>% select(Point_No, X2020) %>% ggplot(aes(x = X2020, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2020년 D지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnd_2020.jpg")

spnd %>% select(Point_No, X2021) %>% ggplot(aes(x = X2021, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2021년 D지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnd_2021.jpg")


spnf <- read.csv('c:/Big Data Contest/S_PN/S_PN_F.csv')
spnf[is.na(spnf)] <- 0

spnf %>% select(Point_No, X2017) %>% ggplot(aes(x = X2017, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 25)) + ggtitle('2017년 F지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnf_2017.jpg")

spnf %>% select(Point_No, X2018) %>% ggplot(aes(x = X2018, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-50, 50)) + scale_x_continuous(breaks = seq(-50, 50, 25)) + ggtitle('2018년 F지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnf_2018.jpg")

spnf %>% select(Point_No, X2019) %>% ggplot(aes(x = X2019, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2019년 F지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnf_2019.jpg")

spnf %>% select(Point_No, X2020) %>% ggplot(aes(x = X2020, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2020년 F지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnf_2020.jpg")

spnf %>% select(Point_No, X2021) %>% ggplot(aes(x = X2021, y =Point_No, color = Point_No)) + geom_col() + coord_cartesian(xlim = c(-20, 20)) + scale_x_continuous(breaks = seq(-20, 20, 5)) + ggtitle('2021년 F지점 유출증감율') + ggsave(file = "C:/Big Data Contest/S_PN/spnf_2021.jpg")
