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

