dyn.load("chapter7/fooC.so")  # load the compiled C code
A = seq(0, 1, length = 10)
B = seq(0, 1, length = 10)
C = rep(0, times = 10)
L = .C("fooC", A, B, as.integer(10), C)  # calls the fooC function
ResC = L[[4]]  # extract 4th list element containing result
ResC

fooR = function(A, B, n) {
    res = rep(0, times = n)
    for (i in 1:n)
        for (j in 1:n)
            res[i] = res[i]+(A[j]+i)^(B[j])
    return(res)
}
ResR = fooR(A, B, 10)
ResR

sizes = seq(10, 1000, length = 10)
Rtime = rep(0, 10)
Ctime = Rtime 
i = 1
for (n in sizes) {
    A = seq(0, 1,length = n)
    B = seq(0, 1,length = n)
    C = rep(0, times = n)
    Ctime[i] = system.time(.C("fooC", A, B, as.integer(n), C))
    Rtime[i] = system.time(fooR(A, B, n))
    i = i + 1
}
library(utils)
DF = stack(list(C = Ctime, R = Rtime))
names(DF) = c("system.time", "language")
DF$size = sizes
# plot run time as a function of array size for R and 
# .C implementations
qplot(x = size,
      y = system.time,
      lty = language, 
	  color = language, 
      data = DF,
      size = I(1.5), 
	  geom = "line", 
      xlab = "array size", 
	  ylab = "computation time (sec)")
