library(tidyverse)

interviews<-read_csv('data/SAFI_clean.cSV',na='NULL')

View(interviews)

dim(interviews)
nrow(interviews)
ncol(interviews)

dim(interviews)[1]==nrow(interviews)

interviews
head(as.data.frame(interviews))
tail(as.data.frame(interviews))


names(interviews)
str(interviews)
summary(interviews)


interviews[1,1]
interviews [1,6]

interviews[ , 1]
interviews[1]

interviews
1:3

interviews[,-1]



interviews[1:3, 7]
interviews[3, ]
interviews_no_id<- interviews[, -1] 

#Exercises

interviews[ ,100]

#1
interviews_100<- interviews[100, ]
interviews_100
interviews_200<-interviews[200, ]
interviews_200

#2
n_rows<-nrow(interviews)
interviews_last <- interviews[n_rows, ]
nrow(interviews)
interviews_last<-tail(interviews,1) 


tail(interviews,n=1)

#3
middle_idx<-ceiling(n_rows/2)
interviews[middle_idx,]

#4
interviews_head<-interviews[-(7:n_rows), ]












