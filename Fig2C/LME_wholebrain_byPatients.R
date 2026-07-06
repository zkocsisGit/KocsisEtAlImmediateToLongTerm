library(tidyverse)
library(dplyr)
library(rstatix)
library(ggplot2)
library(lme4)
library(lmerTest)
library(emmeans)

#change to local library
dat <-
  #read.csv(".\roi_patient_average.csv")
read.csv("c:\\Users\\kocsi\\Documents\\disconnection_EEG\\EEG_source\\statsforChris\\roi_patient_average.csv")


dat <- within(dat, { subject <- factor(subject)
time <- factor(time)
hemispere <- factor(hemisphere)})

dat$subject <- as.factor(dat$subject)
dat$time <- as.factor(dat$time)
dat$hemisphere <- as.factor(dat$hemisphere)

m1 <- lmer(value ~ time*hemisphere*subject + (1|roi), data = dat)
summary(m1)

#if we don't want to have subject as factor
m2 <- lmer(value ~ time * hemisphere +
             (1 | subject) +
             (1 | roi),
           data = dat)

p <- emmip(m1, subject ~ time | hemisphere)
ggsave("emmip_plot.pdf", p)

emmeans(m1, pairwise ~ time | subject)

sum <- dat %>%
  group_by(time, hemisphere, subject) %>%
  summarise(
    mean = mean(value), sd = sd(value)
  )

# faceting - grouped by subject
ggplot(sum, aes(x = time, y = mean, color = hemisphere)) +
  geom_point() +
  geom_line(aes(group = subject)) +
  facet_wrap(~subject) +
  ggtitle("plot") +
  theme(plot.title = element_text(hjust = 0.5))

anova <- aov(value ~ time*hemisphere*subject + Error(roi), dat)
summary(anova)

ggplot(sum, aes(x = time, y = mean, color = hemisphere)) +
  
  # individual subjects (thin + transparent)
  geom_line(aes(group = subject),
            alpha = 0.3,
            linewidth = 0.4) +
  
  labs(x = "Time (ms)", y = "dSPM value") +
  
  # group mean (thick line)
  stat_summary(aes(group = hemisphere),
               fun = mean,
               geom = "line",
               linewidth = 1.5) +
  
  ggtitle("Average dSPM values") +
  theme(plot.title = element_text(hjust = 0.5))
