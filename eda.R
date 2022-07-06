library(psych)
library(ggplot2)
library(car)
library(corrplot)

head(Book_na_omit)
str(Book_na_omit)
describe(Book_na_omit)


#Finding the most sucessful Platform for videogames
levels(Book_na_omit$Platform)
ggplot(Book_na_omit, aes(x=Platform, y=NA_Sales)) + 
  geom_bar(stat="identity")




#Finding the most sucessful Genre for videogames
levels(Book_na_omit$Genre)
ggplot(Book_na_omit, aes(x=Genre, y=NA_Sales)) + 
  geom_bar(stat="identity")



#Finding the most sucessful NAME for videogames
levels(Book_na_omit$Name)
ggplot(Book_na_omit, aes(x=Name, y=NA_Sales)) + 
  geom_bar(stat="identity")
plot(Book_na_omit$Name,Book_na_omit$NA_Sales,col="yellow",xlab="Name",ylab="NU_Sales")


#Finding the most sucessful PUBLISHER for videogames
levels(Book_na_omit$Publisher)
ggplot(Book_na_omit, aes(x=Publisher, y=NA_Sales)) + 
  geom_bar(stat="identity")
plot(Book_na_omit$Publisher,Book_na_omit$NA_Sales,col="yellow",xlab="Publisher",ylab="NA_Sales")


#Finding the most sucessful Rank for videogames
levels(Book_na_omit$Rank)
ggplot(Book_na_omit, aes(x=Rank, y=NA_Sales)) + 
  geom_bar(stat="identity")
plot(Book_na_omit$Rank,Book_na_omit$NA_Sales,col="yellow",xlab="Publisher",ylab="NA_Sales")


#Finding the most sucessful EU_Sales for videogames
levels(Book_na_omit$EU_Sales)
ggplot(Book_na_omit, aes(x=EU_Sales, y=NA_Sales)) + 
  geom_bar(stat="identity")
plot(Book_na_omit$EU_Sales,Book_na_omit$NA_Sales,col="yellow",xlab="EU_SALES",ylab="NA_Sales")

#Finding the most sucessful jp_Sales for videogames

levels(Book_na_omit$JP_Sales)
ggplot(Book_na_omit, aes(x=JP_Sales, y=NA_Sales)) + 
  geom_bar(stat="identity")
plot(Book_na_omit$JP_Sales,Book_na_omit$NA_Sales,col="yellow",xlab="JP_SALES",ylab="NA_Sales")


#Finding the most sucessful other_sales for videogames

levels(Book_na_omit$Other_Sales)
ggplot(Book_na_omit, aes(x=Other_Sales, y=NA_Sales)) + 
  geom_bar(stat="identity")
plot(Book_na_omit$Other_Sales,Book_na_omit$NA_Sales,col="yellow",xlab="Other_SALES",ylab="NA_Sales")


#Finding the most sucessful Global_sales for videogames
levels(Book_na_omit$Global_Sales)
ggplot(Book_na_omit, aes(x=Global_Sales, y=NA_Sales)) + 
  geom_bar(stat="identity")
plot(Book_na_omit$Global_Sales,Book_na_omit$NA_Sales,col="yellow",xlab="Global_SALES",ylab="NA_Sales")



scatterplotMatrix(~NA_Sales + Year + Genre + Platform + EU_Sales + JP_Sales + Other_Sales, data = Book_na_omit)




#From our analysis so far we see that Platform of the videogame highly affects the sales of videogames.







