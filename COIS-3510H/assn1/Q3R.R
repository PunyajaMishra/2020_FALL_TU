#starting : accessding the datasets packages in the library
#then accessing the data if the iris dataset
library(datasets)
data("iris")
#printing the irirs data
summary(iris)
install.packages("dplyr")
names(iris) <- tolower(names(iris))
library(dplyr)
#starting the grpahing
#differentiating the iris table and its data via species type
#VIRGINICA
virginica<-filter(iris,species == "virginica")
head(virginica)
#SETOSA
setosa<-filter(iris,species=="setosa")
head(setosa)
#VERSICOLOR
versicolor<-filter(iris,species=="versicolor")
head(versicolor)
#Histogram
hist(virginica$sepal.length,xlab = "virginica sepal.length",ylab = "sepal.length frequency")
#Boxplot
boxplot(sepal.width~species, data=setosa, xlab = "species", ylab = "sepal.width")
#Univariate Scatter plot
attach(versicolor)
plot(petal.length,xlab = "versicolor index", main = "Versicolor petal.length")
#Y zero high density plot
attach(virginica)
plot(petal.width, type = "h",xlab = "virginica index", main = "virginica petal.width")
#strip chart
attach(setosa)
stripchart(sepal.length, method = "stack",xlab = "sepal.length" ,main="setosa sepal.length")
#density plot
attach(versicolor)
sl_density<-density(sepal.width)
plot(sl_density,ylab = "versicolor sepal.width density",main = "Density (x=sepal.width)", xlab = "Versicolor N=50 Bandwidth=0.1292")
#normal q-q plot
qqnorm(sepal.length, ylab = "versicolor sepal.length values")
#pie chart
mytable<-table(virginica$sepal.length)
lbls<-paste(names(mytable),"\n",mytable,sep = "")
pie(mytable, labels = lbls,
    main="Pie Chart of sepal.length of Species Virginica")
#glyph approach - circles
attach(virginica)
M<-cor(iris[,-c(5:10)])
corrplot(M,main="\n\n\n\n\n\n\n\n\nvirginica")
#glyph approach - ellipse
attach(setosa)
M<-cor(iris[,-c(5:10)])
corrplot(M,method = "ellipse",main="\n\n\n\n\n\n\n\n\nsetosa")
#Histogram
attach(setosa)
hist(setosa$sepal.length,xlab = "setosa sepal.length",ylab = "sepal.length frequency", main = "setosa sepal.length")
