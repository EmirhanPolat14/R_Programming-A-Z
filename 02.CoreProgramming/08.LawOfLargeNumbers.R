N <- 100000
count_ <- 0
for (i in rnorm(N)){
  if (i < 1 & i > -1){
    count_ <- count_ + 1
  }
}
answer <- count_ / N
answer 