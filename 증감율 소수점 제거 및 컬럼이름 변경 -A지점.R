library(writexl)
library(dplyr)

I_a <- read.csv('c:/Big Data Contest/I_a.csv') 

Point_No <- I_a$Point_No
Q1_16 <- floor(I_a$X1)
Q2_16 <- floor(I_a$X2)
Q3_16 <- floor(I_a$X3)
Q4_16 <- floor(I_a$X4)
Q1_17 <- floor(I_a$X5)
Q2_17 <- floor(I_a$X6)
Q3_17 <- floor(I_a$X7)
Q4_17 <- floor(I_a$X8)
Q1_18 <- floor(I_a$X9)
Q2_18 <- floor(I_a$X10)
Q3_18 <- floor(I_a$X11)
Q4_18 <- floor(I_a$X12)
Q1_19 <- floor(I_a$X13)
Q2_19 <- floor(I_a$X14)
Q3_19 <- floor(I_a$X15)
Q4_19 <- floor(I_a$X16)
Q1_20 <- floor(I_a$X17)
Q2_20 <- floor(I_a$X18)
Q3_20 <- floor(I_a$X19)
Q4_20 <- floor(I_a$X20)
Q1_21 <- floor(I_a$X21)
Q2_21 <- floor(I_a$X22)

Point_No <- as.data.frame(Point_No)
I_a01 <- as.data.frame(Q1_16)
I_a02 <- as.data.frame(Q2_16)
I_a03 <- as.data.frame(Q3_16)
I_a04 <- as.data.frame(Q4_16)

I_a05 <- as.data.frame(Q1_17)
I_a06 <- as.data.frame(Q2_17)
I_a07 <- as.data.frame(Q3_17)
I_a08 <- as.data.frame(Q4_17)

I_a09 <- as.data.frame(Q1_18)
I_a10 <- as.data.frame(Q2_18)
I_a11 <- as.data.frame(Q3_18)
I_a12 <- as.data.frame(Q4_18)

I_a13 <- as.data.frame(Q1_19)
I_a14 <- as.data.frame(Q2_19)
I_a15 <- as.data.frame(Q3_19)
I_a16 <- as.data.frame(Q4_19)

I_a17 <- as.data.frame(Q1_20)
I_a18 <- as.data.frame(Q2_20)
I_a19 <- as.data.frame(Q3_20)
I_a20 <- as.data.frame(Q4_20)

I_a21 <- as.data.frame(Q1_21)
I_a22 <- as.data.frame(Q2_21)

I_ar <- cbind(Point_No, I_a01, I_a02, I_a03, I_a04, I_a05, I_a06, I_a07, I_a08, I_a09, I_a10, I_a11, I_a12, I_a13, I_a14, I_a15, I_a16, I_a17, I_a18, I_a19, I_a20, I_a21, I_a22)
write.csv(I_ar, 'c:/Big Data Contest/I_ar.csv')



S_a <- read.csv('c:/Big Data Contest/S_a.csv') 

Point_No <- S_a$Point_No
Q1_16 <- floor(S_a$X1)
Q2_16 <- floor(S_a$X2)
Q3_16 <- floor(S_a$X3)
Q4_16 <- floor(S_a$X4)
Q1_17 <- floor(S_a$X5)
Q2_17 <- floor(S_a$X6)
Q3_17 <- floor(S_a$X7)
Q4_17 <- floor(S_a$X8)
Q1_18 <- floor(S_a$X9)
Q2_18 <- floor(S_a$X10)
Q3_18 <- floor(S_a$X11)
Q4_18 <- floor(S_a$X12)
Q1_19 <- floor(S_a$X13)
Q2_19 <- floor(S_a$X14)
Q3_19 <- floor(S_a$X15)
Q4_19 <- floor(S_a$X16)
Q1_20 <- floor(S_a$X17)
Q2_20 <- floor(S_a$X18)
Q3_20 <- floor(S_a$X19)
Q4_20 <- floor(S_a$X20)
Q1_21 <- floor(S_a$X21)
Q2_21 <- floor(S_a$X22)

Point_No <- as.data.frame(Point_No)
S_a01 <- as.data.frame(Q1_16)
S_a02 <- as.data.frame(Q2_16)
S_a03 <- as.data.frame(Q3_16)
S_a04 <- as.data.frame(Q4_16)

S_a05 <- as.data.frame(Q1_17)
S_a06 <- as.data.frame(Q2_17)
S_a07 <- as.data.frame(Q3_17)
S_a08 <- as.data.frame(Q4_17)

S_a09 <- as.data.frame(Q1_18)
S_a10 <- as.data.frame(Q2_18)
S_a11 <- as.data.frame(Q3_18)
S_a12 <- as.data.frame(Q4_18)

S_a13 <- as.data.frame(Q1_19)
S_a14 <- as.data.frame(Q2_19)
S_a15 <- as.data.frame(Q3_19)
S_a16 <- as.data.frame(Q4_19)

S_a17 <- as.data.frame(Q1_20)
S_a18 <- as.data.frame(Q2_20)
S_a19 <- as.data.frame(Q3_20)
S_a20 <- as.data.frame(Q4_20)

S_a21 <- as.data.frame(Q1_21)
S_a22 <- as.data.frame(Q2_21)

S_ar <- cbind(Point_No, S_a01, S_a02, S_a03, S_a04, S_a05, S_a06, S_a07, S_a08, S_a09, S_a10, S_a11, S_a12, S_a13, S_a14, S_a15, S_a16, S_a17, S_a18, S_a19, S_a20, S_a21, S_a22)
write.csv(S_ar, 'c:/Big Data Contest/S_ar.csv')

# 파일명과 저장시에 저장할 이름만 바꿔서 b,c,d,f 진행