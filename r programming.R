#1

df=mtcars
df
df$wt
br=c(1.513,2.780,3.570,5.450)
levels=c('A','B','C')
df$categories=cut(df$wt,br,levels,right=TRUE,include.lowest = TRUE)
df$categories

#2

all=nrow(df[df$categories=='A'& (df$hp<230 | df$mpg>20),])
g_3=nrow(df[df$categories=='A'& (df$hp<230 | df$mpg>20) & df$gear>3,])
pro=g_3/all*100
pro

#3

all=nrow(df[df$categories=='B' & (df$disp>275 | df$carb>1),])
g_2=nrow(df[df$categories=='B' & (df$disp>275 | df$carb>1) & df$gear>2 ,])

pro1=g_2/all*100
pro1

#4

max_hp=max(df$hp[(df$categories=='A' | df$categories=='B') & df$vs!=1])
max_hp

#5

max_mpg=max(df$mpg[df$vs!=1 & df$am!=0])
max_mpg

#6
getwd()
survey <- read.csv("fl_student_survey.csv",header=TRUE,sep=",",dec=".")
head(survey)
#
br=c(22,25,27,30)
levels=c('A','B','C')
survey$cat_age=cut(survey$age,br,levels,right=TRUE,include.lowest=TRUE)
survey$cat_age
#
avg_f=mean(survey$age[survey$gender=='m'])
avg_f
#
avg_f_s=mean(survey$age[survey$gender=='m' & survey$sports>10])
avg_f_s
#
all=nrow(survey[survey$cat_age=='A',])
all
cr=nrow(survey[survey$cat_age=='A' & survey$gender=='m',])
cr
proro=cr/all*100
proro
#
survey_gend=mean(survey$high_sch_GPA[survey$gender=='f' & survey$sports>5])
survey_gend
#