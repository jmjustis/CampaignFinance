library(class)

N <- nrow(campaigns_cleaned)

kfolds <- 10

holdout <- split(sample(1:N), 1:kfolds)

kGuess <- 5

allResults <- data.frame(orig=c(), pred=c())

campaignData <- campaigns_cleaned[6:22]

for (i in 1:1814){
  if (campaignData[i, 17] == "Y"){
    campaignData[i, 17] = 1
  }
  else{
    campaignData[i, 17] = 0
  }
}

for (k in 1:kfolds){
  knnTest <- campaignData[holdout[[k]], ]
  knnTrain <- campaignData[-holdout[[k]], ]
  
  testNoWinner <- knnTest[-c(17)]
  testJustWinner <- knnTest[c(17)]
  
  prediction <- knn(train=knnTrain, test=knnTest, cl=knnTrain$winner, k=kGuess, prob=FALSE)

  allResults <- rbind(allResults, data.frame(orig=testJustWinner$winner, pred=prediction))
}

table(allResults$orig, allResults$pred)

