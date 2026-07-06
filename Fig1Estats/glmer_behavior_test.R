library(lme4)
library(lmerTest)
library(readxl)

#define data - setup local folder for data, need to do this for every patient
data <- read_excel(".//P1_resp_toR.xlsx")
data = as.data.frame(data)

#define factors NOT VOT, it should be continuous acoustic dimension
data[,1] = as.factor(data[,1])
data[,4] = as.factor(data[,4])
data$VOT_s <- scale(data$VOT) # scale this, converting it int Z scores basically

#m_full <- glmer(Response ~ BP * VOT_s * Time +
#        (1 | WordFile),
#      family = binomial,
#      data = data)

#if m_full doesn't converge (doesn't in all 3 patients), remove interactions
m_res <- glmer(Response ~ VOT_s + BP + Time + (1 | WordFile), family = binomial, data = data)
summary(m_res)

# this is to test the difference between times
library(emmeans)
emm <- emmeans(m_res, ~ Time)
pairs(emm, adjust = "bonferroni", type = "response")

#to test interactions: BP * time
m1 <- glmer(Response ~ VOT_s + BP * Time +
              (1 | WordFile), family = binomial, data = data)
summary(m1)

# BP × VOT
m2 <- glmer(Response ~ Time + BP * VOT_s +
              (1 | WordFile), family = binomial, data = data)
summary(m2)

# VOT × Time
m3 <- glmer(Response ~ BP + VOT_s * Time +
              (1 | WordFile), family = binomial, data = data)
