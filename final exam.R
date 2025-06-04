getwd()
survey <- read.csv("fl_student_survey.csv",header=TRUE,sep=",",dec=".")
head(survey)

survey$sports
breaks=c(0,7,9,17)
labels=c('k','m','n')
survey$sports_car=cut(survey$sports,labels=labels,breaks=breaks,right=FALSE)
survey$sports_car
survey

#1
task_1=min(survey[survey$sports_car=='n',]$distance_residence)
task_1

#2
male_n=mean(survey[survey$sports_car=='n' & survey$gender=='m',]$college_GPA)
female_m=mean(survey[survey$sports_car=='m' & survey$gender=='f',]$college_GPA)
male_n-female_m

#3
all=nrow(survey[survey$sports_car=='k' & survey$gender=='m',])

respu=sum(survey[survey$sports_car=='k' & survey$gender=='m',]$political_affiliation=='r')

respu/all*100

#4
all=nrow(survey[survey$religiosity==0 & survey$sports_car=='m',])

life_after_death=sum(survey[survey$religiosity==0 & survey$sports_car=='m',]$life_after_death=='y')

life_after_death/all*100

#5
all=nrow(survey[survey$gender=='f' & survey$sports_car=='m',])
female_m=sum(survey[survey$gender=='f' & survey$sports_car=='m',]$life_after_death=='y')
female_m/all*100

#6
all=nrow(survey[survey$sports_car=='m' & survey$political_affiliation=='r',])
res=sum(survey[survey$sports_car=='m' & survey$political_affiliation=='r',]$abortion_legalize=='y')
res/all*100

#7
all=nrow(survey[survey$sports_car=='n',])
res=sum(survey[survey$sports_car=='n',]$abortion_legalize=='y')
res/all*100

#8
sport=survey$sports_car
table_1=table(sport)
colors=c('red','yellow','green')
barplot(table_1,col=colors,main="barplot")

#9
pie(table_1,col=colors,main="pie")

#10
x=survey$distance_home
y=survey$distance_residence

plot(x,y,type="n",main="studentis monacemebi",xlab="distance_home",ylab="distance_residence")

points(x[survey$sports_car=='k'],y[survey$sports_car=='k'],pch=20,col=1,cex=2)
points(x[survey$sports_car=='m'],y[survey$sports_car=='m'],pch=20,col=2,cex=2)
points(x[survey$sports_car=='n'],y[survey$sports_car=='n'],pch=20,col=3,cex=2)

legend("topleft",legend=c("k","m","n"),col=c(1,2,3),pch=20,cex=0.8)

#11
aff=survey$political_affiliation
table_1=table(aff)
colors=c('red',"yellow","green")
barplot(table_1,col=colors,main="affiliation")

#12
pie(table_1,col=colors,main="pie")

#13
age.freq=survey$age
range(age.freq)
seq=seq(20,75,5)
age_freq=cut(age.freq,seq,right=FALSE)
table1=table(age_freq)
cbind(table1)

#14
x=survey$distance_home
y=survey$distance_residence

plot(x,y,type='n',main="studentebis monacemebi",xlab="distance_home",ylab="distance_residence")

points(x[survey$gender=='f'],y[survey$gender=='f'],pch=20,col="pink",cex=2)
points(x[survey$gender=='m'],y[survey$gender=='m'],pch=20,col="blue",cex=2)

legend("topleft",legend=c("Female","Male"),col=c("pink","blue"),pch=20,cex=0.8)

#15
mtcars
x=mtcars$wt
y=mtcars$mpg

plot(x,y,type='n',main="mtcars monacemebi",xlab="wt",ylab="mpg")

points(x[mtcars$cyl==4],y[mtcars$cyl==4],pch=20,col=4,cex=2)
points(x[mtcars$cyl==6],y[mtcars$cyl==6],pch=20,col=5,cex=2)
points(x[mtcars$cyl==8],y[mtcars$cyl==8],pch=20,col=6,cex=2)

legend("topright",legend=c("cylinder=4","cylinder=6","cylinder=8"),col=c(4,5,6),pch=20,cex=1)

#16
age=survey$age
breaks=c(20,39,72)
labels=c('A','B')
age_data=cut(age,breaks=breaks,labels=labels,right=FALSE)
age_data

x=survey$distance_home
y=survey$distance_residence
plot(x,y,type="n",main="studentis monacemebi",xlab="distance_home",ylab="distance_residence")

points(x[age_data=='A'],y[age_data=='A'],pch=20,col="pink",cex=2)
points(x[age_data=='B'],y[age_data=='B'],pch=20,col="skyblue",cex=2)

legend("topleft",legend=c("A","B"),col=c("pink","skyblue"),pch=20,cex=0.8)