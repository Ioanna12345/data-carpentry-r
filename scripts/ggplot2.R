
library(ggplot2)

Interviews_plotting <- readRDS("C:/Users/ioann/Desktop/Data carpentry/data/Interviews_plotting.rds")


##ggplot(data= <DATA>,
 ##mapping=aes(<MAPPINGS>)) + <GEOM_FUNCTION>()

ggplot(data=Interviews_plotting, 
       aes(x=no_membrs, y=number_items)) +
  geom_point(alpha=0.4)

ggplot(data=Interviews_plotting, 
       aes(x=no_membrs, y=number_items)) +
  geom_jitter(alpha=0.4)


ggplot(data=Interviews_plotting, 
       aes(x=no_membrs, y=number_items,color=village)) +
  geom_jitter(alpha=0.4)

ggplot(data = Interviews_plotting, 
       aes(x = village, y = rooms,
           color=respondent_wall_type))
  geom_jitter(alpha=0,6)

  ggplot(data=Interviews_plotting,
         aes(x= respondent_wall_type, y=rooms))+
    geom_jitter(alpha=0.5,color='tomato',
            'width=0.2')
  geom_violin(alpha= 0)
  
  ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = rooms)) +
    geom_boxplot(alpha = 0) +
    geom_jitter(alpha = 0.5, color = "tomato")
  

  ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = liv_count)) +
    geom_violin(alpha = 0) +
    geom_jitter(alpha = 0.5, color = "tomato")

  ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = liv_count)) +
    geom_boxplot(alpha = 0) +
    geom_jitter(alpha = 0.5, color = "tomato")
  
  
   ggplot(data = Interviews_plotting, aes(x = respondent_wall_type,
    y = liv_count,color=memb_assoc)) +
    geom_boxplot(alpha = 0) +
    geom_jitter(alpha = 0.5, width = 0.2)
   
   ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = liv_count)) +
     geom_boxplot(alpha = 0) +
     geom_jitter(aes(color = memb_assoc), alpha = 0.5)

ggplot(data = Interviews_plotting, aes(x = respondent_wall_type)) +
     geom_bar()  
  
ggplot(data = Interviews_plotting, aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village),position= 'dogge') 
  
ggplot(data = Interviews_plotting, aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village), position = "dodge") 
  
  
  
  
  
  
    