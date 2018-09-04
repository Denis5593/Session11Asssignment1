# Use the given link and locate the bank marketing dataset. Data Set Link

getwd()
setwd("C:/Users/Denis/R Studio/Assignment/Session11/Banking Dataset")

library(readxl)
library(readr)

MyData <- read.csv(file = 'bank-additional-full.csv', header = T, sep = ';')
head(MyData)

df_MyData <- as.data.frame(MyData)
df_MyData
head(df_MyData)

# Perform the below operations:
#   a. Create a visual for representing missing values in the dataset.

library(VIM)

matrixplot(df_MyData)

# b. Show a distribution of clients based on a Job.

barplot(table(df_MyData$job),col="red",ylab="No. of Clients",las=2,main="Job",cex.names = 0.8,cex.axis = 0.8)


# c. Check whether is there any relation between Job and Marital Status?

library(ggplot2)
library(dplyr)
table(df_MyData$marital)

ggplot(df_MyData, aes(df_MyData$job, df_MyData$marital)) + geom_jitter()


# d. Check whether is there any association between Job and Education?

ggplot(df_MyData, aes(df_MyData$job, df_MyData$education)) + geom_jitter()

