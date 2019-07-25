print('Hello,world')
      
library(tidyverse)
(area_hectares<-1.0)
1.0->area_hectares


(area_hectares<--1.0)
1.0->area_hectares
2.47*area_hectares
area_hectares<--2.5


area_hectares<-2.5                #load area in hectares                      
area_acres<-2.47*                 #2.47 is the conversion factor between hectares and acres
area_hectares                     #convert to acres
area_acres                        #print

length <- 2.5
width <- 3.2
area <- length * width
area

#b<-sqrt(x=a)
round(digits=2, x=3.14159)

no_membrs<-c(3,7,10,6)
length(no_membrs)
class(no_membrs)
str(no_membrs)

respondent_wall_type<-c('muddaud','burntbricks','sunbricks')
length(respondent_wall_type)
str(respondent_wall_type)

possessions<-c('bicycle','radio','television')
possessions<-c(possessions, mobile_phone)
possessions<-c('car',possessions)


class(respondent_wall_type)


num_char<-c(1,2,3,'a')
num_logical<-c(1,2,3,TRUE)

char_logical<-c('a','b','c',TRUE)
tricky<- c(1,2,3,'4')


combined_logical<-c(num_logical,char_logical)

#Subseting
respondent_wall_type[2]
respondent_wall_type[c(3,2)]


more_respondent_wall_type<- respondent_wall_type[c(1,2,3,2,1,3)]

no_membrs[c(TRUE,FALSE,TRUE,TRUE)]
no_membrs[no_membrs>5]
no_membrs[no_membrs <3 | no_membrs>5]
no_membrs[no_membrs>=7 & no_membrs==3]


possessions[possessions=='car' |possessions=='bicycle']
possessions %in% c('car','bicycle')
possessions[possessions %in% c('car','bicycle')]

rooms<- c(2,1,NA,4)
mean(rooms)
max(rooms)

mean(rooms,na.rm=TRUE)

!is.na(rooms)
rooms[!is.na(rooms)]


library(tidyverse)
interviews<- read_csv('data/SAFI_clean.cvs')











