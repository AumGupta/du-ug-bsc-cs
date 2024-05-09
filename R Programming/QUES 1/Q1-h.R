M1 <- matrix(c(10,11,12,13,14,15), nrow = 3, dimnames = list(c("R1","R2","R3"), c("C1","C2")))
M1
M2 <- matrix(c(20,12,41,17,99,89), nrow = 3, dimnames = list(c("R1","R2","R3"), c("C1","C2")))
M2
print(rbind(M1, M2))
print(cbind(M1, M2))