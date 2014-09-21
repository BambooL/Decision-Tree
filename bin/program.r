main=function() {
# Classification Tree with rpart
library(rpart)

bank=bank.csv
# grow tree 
fit<- rpart(y~ age+job+marital+education+default+balance+housing+loan+contact+day+month+duration+campaign+pdays+previous+poutcome, method="class",data=bank)

printcp(fit) # display the results 
plotcp(fit) # visualize cross-validation results 
summary(fit) # detailed summary of splits

# plot tree 
plot(fit, uniform=TRUE, 
   main="Classification Tree for Bank Deposit Terms")
text(fit, use.n=TRUE, all=TRUE, cex=.8)

# create attractive postscript plot of tree 
post(fit, file = "./tree.ps", 
   title = "Classification Tree for Bank Deposit Terms")

# prune the tree 
pfit<- prune(fit, cp=   fit$cptable[which.min(fit$cptable[,"xerror"]),"CP"])

# plot the pruned tree 
plot(pfit, uniform=TRUE, 
   main="Pruned Classification Tree for Bank Deposit Terms")
text(pfit, use.n=TRUE, all=TRUE, cex=.8)
post(pfit, file = "./ptree.ps", 
   title = "Pruned Classification Tree for Bank Deposit Terms")

# Conditional Inference Tree for Bank Deposit Terms
library(party)
fit <- ctree(y~ age+job+marital+education+default+balance+housing+loan+contact+day+month+duration+campaign+pdays+previous+poutcome,data=bank)
plot(fit, main="Conditional Inference Tree for Bank Deposit Terms")

# Random Forest prediction of Kyphosis data
library(randomForest)
fit <- randomForest(y~ age+job+marital+education+default+balance+housing+loan+contact+day+month+duration+campaign+pdays+previous+poutcome,data=bank)
print(fit) # view results 
importance(fit) # importance of each predictor

}