
#exersize 1
a <- c(10:20)
b <- letters[c(4:13)]
f <- c(1,1,1,0,0,0,0,0)
ff <- factor(f, levels = c(1, 0), labels = c("NO", "YES"))
table(ff)
help("objects")
.Ob <- 1
ls(pattern = "O")
ls(pattern= "O", all.names = TRUE)    # also shows ".[foo]"





#exersize 2 the dataframe way

Rank1 <- c(1,2,3,4,5)
Peak1 <- c(1,1,3,4,3)
Title1 <- c("Avatar","Titanic","StarWars", "Avengers", "Jurassic")
Worldwidegross1 <- c(2787,2187,2068,1844,1671)
Year1 <- c(2009,1997,2015,2018,2015)
df <- data.frame(Rank1,Peak1,Title1,Worldwidegross1,Year1)# each of the a-d is a colum

View(df)

df[2,3]

df$Title1[2]


#exersize 2 the list way
l <- list(Rank1=list(model="2018 Toyota Camry Hybrid", price=32400, mpg=52),
          Peak1=list(model="2018 Ford Fusion Hybrid", price=37370 , mpg=42),
          Title1=list(model="2018 Toyota Prius", price=30565 , mpg=52),
          Worldwidegross1=list(model="2018 Hyundai Ioniq",price=28300, mpg=58),
          Year1=list(model="2018 Kia Optima Hybrid",price=35210, mpg=43)
          
)

#### TEST 



#exersize 3 the iris list
df = iris
View(df)
min(df$Sepal.Length)
min(df$Sepal.Width) 
min(df$Petal.Length) 
min(df$Petal.Width)
max(df$Sepal.Length)
max(df$Sepal.Width) 
max(df$Petal.Length) 
max(df$Petal.Width)
mean(df$Sepal.Length)
mean(df$Sepal.Width) 
mean(df$Petal.Length) 
mean(df$Petal.Width)

summary(df)

df1 <- mtcars
View(df1)
sqrt(df1$mpg)
log(df1$disp)
df1$wt^3

s1<-paste("age","gender","height","weight",sep="+")# if we wnt to use the vectr we need the colapse function
s1
m1<-matrix(c(4,7,-8,3,0,-2,1,-5,12,-3,6,9),ncol=4)
m1
colMeans(m1)
rowMeans(m1)
mean(m1)



#exersize 4

Let <- mapply(rep, LETTERS[], 1, SIMPLIFY = FALSE)



v10 <- LETTERS
v10
sort.default(v10, decreasing = TRUE)


for (x in (round(runif(n=10, min=0, max=10),0))){
  
  print (x)
  if (x==8){
  break
  }
}



for (x in sample (1:10)){
  print (x)
  if (x==8){
    break
  }
}



for (i in 1:20){
  x<- sample(x=1:10,size = 1)
  print(x)
  if(x==8){
    break
  }
}


x<-0
while(x!=8){
  x<-sample(x=1:10,size=1)
  print(x)

}


for (i in 1:5)
a <- c( "well", "you", "merged", "vectors", "one") 
b <- c("done", "have", "two", "into", "phrase")
c<-NULL
for (i in 1:5) {
  c <- paste(c,paste(a[i],b[i]))
}
c"