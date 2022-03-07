library("pryr")
library("plyr")

Student <- read.table('C:/Users/louis/Desktop/School Junk/R Programming/week 8/Assignment 6 Dataset.txt', header = TRUE, sep = ",")

StudentAverage = ddply(Student,"Sex",transform,Grade.Average=mean(Grade))

newStudent = subset(Student,grepl("[iI]",Student$Name))

write.table(newStudent,"DataSubset",sep=",")
