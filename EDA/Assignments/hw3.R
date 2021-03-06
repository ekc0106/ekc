## KNN
library(FNN)
set.seed(1)
x <- sort(rnorm(100))
y<- 3+x^2 + rnorm(100)
eval.n = 100
eval.point = seq(-3,3, length= eval.n)
yhat=rep(0,eval.n)
plot(x,y,pch=20)
for (i in c(1,5,30)){
  idx.mat <- knnx.index(x,eval.point,k=i)
  for(j in 1:eval.n) yhat[j] <- mean(y[idx.mat[j,]])
  lines(eval.point, yhat, type='l', lty=i, col=i+7)
}
legend('topright', c("k=1",'k=5',"k=30"),col=c(8,12,37),lty=c(1,5,30))