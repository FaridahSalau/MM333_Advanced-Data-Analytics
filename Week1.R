#change wd

setwd("C:/Users/farid/Downloads/MM333/Week 1")
# import Libaries 
library(tidyverse)
library(janitor)
library(psych)
library(effectsize)
library(broom)
library(readr)

# import CSV file 
df2 <- read_csv("MM333_customer_marketing.csv")

#Load customer data 
customers <- read_csv("MM333_customer_marketing.csv", show_col_types = FALSE) |>
  clean_names()

# identify the variables
str(customers)

# inspect the data
customers |> glimpse()
customers |> names()
customers |> summary()
customers |> summarise(
  rows = n(),
  missing_values = sum(is.na(across(everything())))
)

# check the variable classes
customers |> summarise(across(everything(), class))

