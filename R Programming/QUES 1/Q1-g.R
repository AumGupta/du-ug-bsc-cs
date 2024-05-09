M1 <- matrix(c(10,11,12,13,14,15), nrow = 3, dimnames = list(c("R1","R2","R3"), c("C1","C2")))
M1
print(rowMeans(M1))
print(colMeans(M1))