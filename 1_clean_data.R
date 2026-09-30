library(palmerpenguins)
data(penguins)
library(tidyverse)
library(dplyr)
library(readr)
library(ggplot2)
str(palmerpenguins)
read.table("penguins.rds")
read.table("penguins_raw")
write.csv("penguins")
saveRDS(penguins, "data/penguins.rds")
penguins <- readRDS("data/penguins.rds")
penguins
model1 <- lm(penguins$body_mass_g ~ penguins$flipper_length_mm, data = penguins)
summary(model1)
ggplot(penguins,aes(x=flipper_length_mm, y=body_mass_g, colour = 
species)) +
  geom_point() +
  stat_smooth(method = "lm")
ggsave("figs/1_flipper_bodymass_regression.png")
#subset data
penguins_female <- subset(penguins, sex == "female")

write_tsv(penguins_female, "results/1_penguin_female_only.txt")
x <- 1:10
y <- 10:1
plot(y~x)
