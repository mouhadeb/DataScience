
####Linear regrassion
######################


data <- Orange  # y=age, x=cirqu
head(data)
mod <- lm(age ~ circumference, data = data)
summary(mod)
yhat <- predict(mod,data)
plot(yhat ~ data$age)
scatter.smooth((yhat ~ data$age))



####logistic regression
######################


data <- iris 
head(data)
data$y <- ifelse(data$Species == "versicolor", 1, 0) # in order to define a 1 0 data(log regression) we turnthe species into 1 or 0 
data$Species<- NULL # IN ORDER TO REMOVE THE OLDER COLUMN OF SPECIES

rnd<- sample(seq(1,nrow(data)))
data<-data[rnd,]
head(data)
mod1 <- glm(factor(y) ~ Petal.Length , data=data, family = "binomial") #y ~ . take the y against all the other columns
summary(mod1)
pred<- predict(mod1,data,type="response")
hist(pred)
yhat <- ifelse(pred>=0.5, 1, 0)
table (yhat=yhat,y=data$y)
accuracy<-
accuracy  

# we change the cutoff in order to define the line in which less then it, it will be 0 and more it will be 1. and we expect to see more from the Trues and less from the less
yhat <- ifelse(pred>=0.35, 1, 0)