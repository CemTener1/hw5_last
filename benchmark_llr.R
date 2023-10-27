install.packages("microbenchmark")
library(microbenchmark)

n = 150
x = rnorm(n)
y = rnorm(x + rnorm(n))
z = seq(-1, 1, length.out = 100)

result <- microbenchmark(
  llr_result <-llr(x,y,z, omega = 2),
  llr_new_result <- llr_new(x,y,z, omega = 2),
  times = 100
)

print(result)
