#To Find "TOP SELLING VIDEO GAMES" in NA_Sales markets by knowing  characterstics of the game using Linear Regression model
#From our analysis so far we see that Platform of the videogame highly affects the sales of videogames.

# calculate correlation between NA_Sales and Platform   [-1 to +1]
my_table <- xtabs(~ Book_na_omit$NA_Sales + Book_na_omit$Platform)
chisq.test(my_table)

 #1. Create Training and Test data -
set.seed(100)  # setting seed to reproduce results of random sampling
trainingRowIndex <- sample(1:nrow(Book_na_omit), 0.8*nrow(Book_na_omit))  # row indices for training data
trainingData <- Book_na_omit[trainingRowIndex, ]  # model training data
testData  <- Book_na_omit[-trainingRowIndex, ]   # test data

#2
# Build the model on training data -
lmMod <- lm(NA_Sales ~ Platform, data=trainingData)  # build the model

NA_SALESPred <- predict(lmMod, testData)  # NA_salespredict distance
#Step 3: Review
summary (lmMod)  # model summary

library(ggplot2)
ggplot(trainingData,aes(y=NA_Sales,x=Platform))+geom_point()+geom_smooth(method="lm",col="red")

plot(NA_Sales ~ Platform, data = trainingData)
abline(lmMod)



#exporting the data
write.csv(trainingData, "train_data.csv")
write.csv(testData, "test_Data.csv")

