getwd()
setwd("C:/Users/akash/Documents/Edwisor_assign")

vec = c(2,3,4,5)
lis = list('india',2,2,2)

s_mat = matrix(data=1:9,byrow = F,nrow =3)

colnames(s_mat) = c("c1","c2","c3")
rownames(s_mat) = c('r1','r2','r3')

df = data.frame(city = c('mumbai','pune','madras','calcutta'), rainfall = c(23,34,65,77), temp = c(23,25,26,28))
df2 = df

names(df)[2]='Precepitaion'

df = mtcars
newdata = subset(df,select = c('mpg','cyl','hp','am'))

rowlevel_data = df[which(df$mpg == 21.4),]

df$logmpg = with(df,log(df$mpg))

d1 = data.frame(a = c(2,3,5,4),b = c(3,2,4,5))
d2 = data.frame(a = c(6,3,6,4),b = c(5,6,7,5))

d3 = rbind(d1,d2)
d3 = cbind(d1,d2)

df = mtcars

str(df)



df$cyl = as.factor(df$cyl)
df$vs = as.factor(df$vs)

#converting numeric to catagorical/Binning

df$mpgcat[df$mpg >= 10 & df$mpg <= 16 ] = 'Low'
df$mpgcat[df$mpg > 16 & df$mpg <= 20] = 'Medium'
df$mpgcat[df$mpg >20] = 'High'

#converting  catagorical to numeric

voice = c(rep('medium',30),rep('low',30),rep('high',30))
voice_fac = factor(voice,labels =(1:length(levels(factor(voice)))))
voice_num = as.numeric(voice_fac)

#ordering ascending

df = df[order(df$mpg),]
df = df[order(-df$mpg,-df$gear),]

#merging data frames

d1 = data.frame(customerid = c(1:6), product = c(rep('toster',3),rep('Radio',3))) 
d2 = data.frame(customerid = c(2,4,6), State = c(rep('albama',2),rep('ohio',1)))                   

merge_data = merge(d1,d2,by = 'customerid')

#joins

l_join = merge(d1,d2,by='customerid',all.x = T)
r_join = merge(d1,d2,by='customerid',all.y  = T)
cross_join = merge(d1,d2,by= NULL)

tmp = df[which(df$gear == 3),]
t = median(tmp$mpg)

#Aggregation
df =mtcars
aggregate(df,by = list(df$gear), FUN = 'median')
aggregate(df,by = list(df$cyl,df$vs),mean)

#give location where cyl is 6

grep(6,df$cyl)

#find and replace

txt = "Nothing fixes a thing in mind so intensively as the wish to forget it"

gsub("in","##",txt)  #replace all occurences
sub("in","##",txt)   #replace first occurence

rm(list=ls())

df =mtcars

#droping column

df$mpg = NULL

View(df)

#converting index to a column
df = cbind(rownames(df),df)
rownames(df) = NULL

colnames(df)[1] ="mtcars"
df$"cars" = NULL
