ipnb <- read.csv('c:/Big Data Contest/I_PN/I_PN_B_final.csv')
ipnb[is.na(ipnb)] <- 0

ipnc <- read.csv('c:/Big Data Contest/I_PN/I_PN_C_final.csv')
ipnc[is.na(ipnc)] <- 0

ipnd <- read.csv('c:/Big Data Contest/I_PN/I_PN_D_final.csv')
ipnd[is.na(ipnd)] <- 0

ipnf <- read.csv('c:/Big Data Contest/I_PN/I_PN_F.csv')
ipnf[is.na(ipnf)] <- 0

spnb <- read.csv('c:/Big Data Contest/S_PN/S_PN_B_final.csv')
spnb[is.na(spnb)] <- 0

spnc <- read.csv('c:/Big Data Contest/S_PN/S_PN_C_final.csv')
spnc[is.na(spnc)] <- 0

spnd <- read.csv('c:/Big Data Contest/S_PN/S_PN_D_final.csv')
spnd[is.na(spnd)] <- 0

spnf <- read.csv('c:/Big Data Contest/S_PN/S_PN_F.csv')
spnf[is.na(spnf)] <- 0

ipn <- rbind(ipnb, ipnc, ipnd, ipnf)
spn <- rbind(spnb, spnc, spnd, spnf)

ipn <- ipn %>% mutate(Inflow_spill = if_else(Point_No != 0, '유입', '오류')) %>% mutate(Point_check = str_extract(Point_No, '[A-Z]{1,1}'))
spn <- spn %>% mutate(Inflow_spill = if_else(Point_No != 0, '유출', '오류')) %>% mutate(Point_check = str_extract(Point_No, '[A-Z]{1,1}'))

pn <- rbind(ipn, spn)

pn_temp <- gather(pn, key='year', value = 'value', -Point_No, -Inflow_spill, -Point_check)

para_list <- unique(pn_temp$year)
length(para_list)

pn_list <- unique(pn_temp$Point_check)
length(pn_list)


for (i in 2:length(para_list)){
  v_para <- para_list[i]
  for (k in 1:length(pn_list)){
    v_pn <- pn_list[k]
    pn_temp %>% filter(year == v_para & Inflow_spill == '유입' & Point_check ==  v_pn) %>% ggplot(aes(x = value, y = Point_No, fill = Point_No)) +
      geom_col() + ggtitle(v_para) +
      ggsave(file = paste0("C:/Big Data Contest/I_PN_for/ipn_", v_pn, v_para, ".jpg"))
  }
}


for (i in 2:length(para_list)){
  v_para <- para_list[i]
  for (k in 1:length(pn_list)){
    v_pn <- pn_list[k]
    pn_temp %>% filter(year == v_para & Inflow_spill == '유출' & Point_check ==  v_pn) %>% ggplot(aes(x = value, y = Point_No, fill = Point_No)) +
      geom_col() + ggtitle(v_para) +
      ggsave(file = paste0("C:/Big Data Contest/S_PN_for/spn_", v_pn, v_para, ".jpg"))
  }
}