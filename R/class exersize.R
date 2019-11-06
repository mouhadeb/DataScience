
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
