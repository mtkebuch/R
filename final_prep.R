getwd()
survey <- read.csv("fl_student_survey.csv",header=TRUE,sep=",",dec=".")
head(survey)

br=c(0,7,9,17)
labels=c('k','m','n')

survey$sports_cat=cut(survey$sports,breaks=br,labels=labels,right=FALSE)
survey$sports_cat

survey[survey$sports_cat=='n',]

survey[survey$sports_cat=='n',]$distance_residence

min(survey[survey$sports_cat=='n',]$distance_residence)

#2
mean(survey[survey$sports_cat == 'n' & survey$gender == 'm',]$college_GPA)- mean(survey[survey$sports_cat == 'm' & survey$gender == 'f',]$college_GPA)


#3
k1 <- sum(survey[survey$sports_cat == "k" & survey$gender == "m",]$political_affiliation == "r")

k2 <- nrow(survey[survey$sports_cat== "k" & survey$gender == "m",])

k1/k2*100

#4
sep=sum(survey[survey$sports_cat=="m" & survey$religiosity==0,]$life_after_death=='y')

all=nrow(survey[survey$sports_cat=="m" & survey$religiosity==0,])

sep/all*100

#5
all_1=nrow(survey[survey$gender=='f' & survey$sports_cat=='m',])
fem_1=sum(survey[survey$gender=='f' & survey$sports_cat=='m',]$life_after_death=='y')
fem_1/all_1*100

#6
all_2=nrow(survey[survey$political_affiliation=='r' & survey$sports_cat=='m',])
students=sum(survey[survey$political_affiliation=='r' & survey$sports_cat=='m',]$abortion_legalize=='y')
students/all_2*100

#7
all_3=nrow(survey[survey$sports_cat=='n',])
students=sum(survey[survey$sports_cat=='n',]$abortion_legalize=='y')
students/all_3*100

#8
diagram=table(survey$sports_cat)
colors=c("purple","pink","green")
barplot(diagram,col=colors,main="barplot")

#9
pie(diagram,col=colors,main="pie")

#10


x = survey$distance_home
y = survey$distance_residence

plot(x,y,type="n",main="student data",xlab="distance_home",ylab="distance_residence")

points(x[survey$sports_cat=="k"],y[survey$sports_cat=="k"],pch=20,col=1,cex=2)

points(x[survey$sports_cat=="m"],y[survey$sports_cat=="m"],pch=20,col=2,cex=2)

points(x[survey$sports_cat=="n"],y[survey$sports_cat=="n"],pch=20,col=3,cex=2)

legend("topleft",legend=c('k','m','n'),col=c(1,2,3), pch=20, cex=0.8)


