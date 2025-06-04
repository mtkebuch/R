getwd()
survey <- read.csv("fl_student_survey.csv",header=TRUE,sep=",",dec=".")
head(survey)
#1
aff=survey$political_affiliation
aff_table=table(aff)
colors=c("purple","blue","pink")
barplot(aff_table,col=colors,main="affiliation")

age=survey$age
age_table=table(age)

colors=c("orange","red","yellow")
barplot(age_table,col=colors,main="age")

#2
sports=survey$sports
sports_table=table(sports)
colors=c("pink","skyblue","purple")
pie(sports_table,col=colors,main="pie")

#3
age.freq=survey$age
range(age.freq)
breaks=seq(20,75,5)

age_cut=cut(age.freq,breaks,right=FALSE)
age_freq=table(age_cut)
cbind(age_freq)

#4

x=survey$college_GPA
y=survey$age

plot(x,y,type="n",main="student age & college_gpa",xlab="college_gpa",ylab="age")

points(x[survey$gender == "f"], y[survey$gender == "f"], pch = 20, col = 1, cex = 2)
points(x[survey$gender == "m"], y[survey$gender == "m"], pch = 20, col = 2, cex = 2)

legend("topleft", legend = c("female", "male"), col = c(1, 2), pch = 20, cex = 0.8)

#5
head(mtcars)
x=mtcars$wt
y=mtcars$mpg
plot(x,y,type="n",main="mtcars data",xlab="wt",ylab="mpg")

points(x[mtcars$cyl==4],y[mtcars$cyl==4],pch=20,col=1,cex=2)

points(x[mtcars$cyl==6],y[mtcars$cyl==6],pch=20,col=2,cex=2)

points(x[mtcars$cyl==8],y[mtcars$cyl==8],pch=20,col=3,cex=2)

legend("topright",legend=c("cylinder=4","cylinder=6","cylinder=8"),col=c(1,2,3),pch=20,cex=1)

#6
age_level=survey$age
br=c(20,39,72)
labels=c('A','B')
cut=cut(age_level,breaks=br,labels=labels,right=FALSE)
cut

x=survey$distance_home
y=survey$distance_residence

plot(x,y,type="n",main="student data",xlab="distance_home",ylab="distance_residence")
points(x[cut=='A'],y[cut=='A'],pch=20,col=2,cex=2)
points(x[cut=='B'],y[cut=='B'],pch=20,col=3,cex=2)
legend("topleft",legend=c("A","B"),col=c(2,3),pch=20,cex=1)
