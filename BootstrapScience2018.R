# bootstrap script for interval estimates for the proportion of articles to provide some artifacts

# data on artifacts obtained for sample size 204
Artifacts = c(rep(0,115),rep(1,89))

# bootstrap
newEstimate = c()

for (i in 1:1000){
  newEstimate[i] = sum(sample(Artifacts,replace=TRUE))/length(Artifacts)
}

# 95% Confidence Interval estimation
se = sd(newEstimate)
interval = mean(newEstimate) + c(-1,1)*2*se