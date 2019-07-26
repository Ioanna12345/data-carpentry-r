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


floor_type<-factor(c('earth','cement','earth'))

levels(floor_type)
nlevels(floor_type)

#Reordering

floor_type<-factor(c('earth','cement','earth'),
                   levels=c('earth','cement'))
                   

levels(floor_type)[2]<-'brick'
levels(floor_type)
floor_type

as.character(floor_type)

year_fct<-factor(c(1990,1983,1977,1998,1990))
as.numeric(year_fct)
as.character(year_fct)


as.numeric(levels(year_fct))[year_fct]

year_nmb<-as.numeric(levels(year_fct))[year_fct]
table(year_nmb)
table(year_fct)
summary(year_fct)


affect_conflicts <-interviews$affect_conflicts
affect_conflicts<-as_factor(affect_conflicts)

plot(affect_conflicts)

affect_conflicts<-interviews$affect_conflicts
affect_conflicts[is.na(affect_conflicts)]
affect_conflicts

levels(affect_conflicts)[2]<-'more than once'
plot(affect_conflicts)

levels(affect_conflicts)[2]<-'more than once'
affect_conflicts<-factor(affect_conflicts,levels=c ('never','once','more than once','frequently,'undetermined'))


#Exercise
interviews %>%
 filter(memb_assoc=='yes') %>%
 select(affect_conflicts,liv_count,no_meals)


interviews_ppl_room<-interviews %>%
 filter(memb_assoc=='yes') %>%
 mutate(people_per_room=no_membrs/rooms)
 
 total_meals<-interviews %>%
 mutate(total_meals=no_membrs*no_meals) %>%
 filter(total_meals >20) %>%
 select(village,total_meals)
 
 interviews %>%
  filter(!is.na(memb_assoc))%>%
  group_by(village,memb_assoc) %>%
  summarize(mean_no_membrs=mean(no_membrs)),
                min_membrs=min(no_membrs)) %>%
  arrange(desc(min_membrs))
  
  
interviews %>%
   count(no_meals)



 interviews %>%
  group_by(village) %>%
  summarize(
      village_mean = mean(no_membrs),
      min= min(no_membrs),
      max= max(no_membrs),
      n = n()
  )
 
 
 summary(interviews)
 
 interviews_spread<-interviews %>%
 mutate(wall_type_logical=TRUE)%>%
 spread(key=respondent_wall_type,value=wall_type_logical, fill=FALSE)
 
 view(interviews_spread)
 
 
 data/*.csv
 data/*.xlsx
 

 
 
 
 
 
 
 






































