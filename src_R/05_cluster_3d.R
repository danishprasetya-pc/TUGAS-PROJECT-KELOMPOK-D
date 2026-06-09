
x1 <- as.numeric
x2 <- as.numeric
x3 <- as.numeric

cluster_titik <- function(x1,x2,x3) {
  
  A <- c(2, 1, 3)
  B <- c(1, -4, 6)
  C <- c(-2, 3, -2)
  
  
  U <- c(x1, x2, x3)
  
  dA <- sqrt(sum((U - A)^2))
  dB <- sqrt(sum((U - B)^2))
  dC <- sqrt(sum((U - C)^2))
  
  if (dA <= dB && dA <= dC) {
    cat("Titik termasuk Cluster A\n")
  } else if (dB <= dA && dB <= dC) {
    cat("Titik termasuk Cluster B\n")
  } else {
    cat("Titik termasuk Cluster C\n")
  }
}

cluster_titik(1,2,3)
cluster_titik(9,-7,3)
cluster_titik(-5,8,-1)
