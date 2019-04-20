library(caret)
library(ISLR)

data("Hitters")
A = data.frame(Hitters)
A
A = na.omit(A)
colnames(A)
str(A)
set.seed(123)
sf = sample(2,nrow(A),replace = T,prob = c(0.6,0.4))
trd = A[sf == 1,]
tsd = A[sf == 2,]
tc =  trainControl(method = 'repeatedcv', number = 10, repeats = 3)
# tc =  trainControl(method = 'cv', number = 10)
