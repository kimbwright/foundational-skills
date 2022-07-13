##############################
## Set Working Directory #####
##############################

# Set from Session or...





##############################
#####  Reading In Data   #####
##############################


library(tidyverse)


#############################
###### Read in csv file #####
#############################

online_classes <- read_csv("data/sci-online-classes.csv")

view(online_classes)
head(online_classes, n=5)
tail(online_classes, n =5)

#############################
##### Read in Excel File ####
#############################

library(readxl)

ccss_tweets <- read_excel("data/csss_tweets.xlsx")
view(ccss_tweets)
head(csss_tweets, n = 5)
tail(ccss_tweets, n = 5)

###### Excel Function ######## 

?read_excel

excel_sheets("data/csss_tweets.xlsx")
csss_tweets <- read_excel("data/csss_tweets.xlsx", sheet = "Sheet1")

view(csss_tweets)


############################
####### From Path ##########
############################

#to find the file path, go to finder and right click on file and select "Get Info" and copy file path from "User" over and paste into "" 

sci_ol_classes <- read_csv("data/sci-online-classes.csv")

sci_ol_classes


###########################
####### From URL ##########
###########################

air_quality <- read_csv2("https://www4.stat.ncsu.edu/~online/datasets/AirQualityUCI.csv")
air_quality


#########################
######## Stata ##########
#########################


library(haven)

gpa_dt <- read_dta("data/GPA3.dta")

view(gpa_dt)

#########################
######## Tibble #########
#########################

# create a data frame
data <- data.frame(a = 1:3, b = letters[1:3], c = Sys.Date() - 1:3)
# print a data frame
data

#print a dataframe as a tibble
as_tibble(data)
