## Decision-Tree
=============

### Introduction

In this task, we applied the classic data mining method, decision tree to a bank marketing 
dataset that predicts a user will subscribe the deposit or not based on a set a predictors 
collected by the contact campaign. We first built a full tree by using the Gini Criterion 
as the goodness of split and the CP value as well as the least number to split as the 
stopping criteria. We pruned the tree using cross-validation and get a 17 split tree out 
of a 47-splits-full tree. We also applied the Random Forest and Adaboost as the bagging and 
boosting methods that assist with the model construction. To evaluate the models we construct,
we adopted the Average Accuracy, Precision/Recall Curves, and ROC curves. Random Forest and 
Adaboost outperform than the classic Decision Tree.

### Dataset Description

See doc/bank-names.txt
