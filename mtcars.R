#1
df=mtcars

wt=df$wt
dayofa=c(1.513,2.78,3.570,5.450)
levels=c('A','B','C')

df$cut=cut(wt,breaks=dayofa,labels=levels,right=FALSE)

cut

#2
all=nrow(df[df$cut=='A' & (df$hp<230 | df$mpg>230),])
part=sum(df[df$cut=='A' & (df$hp<230 | df$mpg>230),]$gear>3)
part/all*100

#3
all=nrow(df[df$cut=='B' & (df$disp>275 | df$carb>1),])
part=sum(df[df$cut=='B' & (df$disp>275 | df$carb>1),]$gear>2)
part/all*100

#4
max=max(df[(df$cut=='A' | df$cut=='B') & df$vs!=1,]$hp)
max


#5
max_1=max(df[df$vs!=1 & df$am!=0,]$mpg)
max_1

#1
qsec=mtcars$qsec
br=c(14.5,17,21,23)
labels=c('A','B','C')
mtcars$cat=cut(qsec,breaks=br,labels=labels,right=FALSE)
mtcars$cat

cyl4=mean(mtcars[mtcars$cyl==4,]$hp)
cyl8=mean(mtcars[mtcars$cyl==8,]$hp)

cyl8-cyl4

#2
a_cat=mean(mtcars$wt[mtcars$cat=='A' & mtcars$hp<230])
a_cat

#3
a_disp=mean(mtcars$hp[mtcars$cat=='A' & mtcars$disp>240])
a_disp

#4
b_disp=min(mtcars$mpg[(mtcars$cat=='B' & mtcars$disp>140) & mtcars$gear>4])
b_disp

#5
all=nrow(mtcars[mtcars$cat=='A',])
part=sum(mtcars[mtcars$cat=='A',]$gear==3)
part/all*100

