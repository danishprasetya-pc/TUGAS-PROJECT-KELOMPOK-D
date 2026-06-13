cluster_titik <- function(x1, x2, x3) {
  A <- c(3, 2, 4)
  B <- c(-2, 5, 1)
  C <- c(1, -3, -2)
  
  U <- c(x1, x2, x3)
  
  dA <- sqrt(sum((U - A)^2))
  dB <- sqrt(sum((U - B)^2))
  dC <- sqrt(sum((U - C)^2))
  
  print(paste("Jarak ke A:", round(dA, 4)))
  print(paste("Jarak ke B:", round(dB, 4)))
  print(paste("Jarak ke C:", round(dC, 4)))
  
  jarak_min <- min(dA, dB, dC)
  cluster_terpilih <- c()
  
  if (dA == jarak_min) {
    cluster_terpilih <- c(cluster_terpilih, "Cluster A")
  }
  if (dB == jarak_min) {
    cluster_terpilih <- c(cluster_terpilih, "Cluster B")
  }
  if (dC == jarak_min) {
    cluster_terpilih <- c(cluster_terpilih, "Cluster C")
  }
  
  cat("Titik termasuk", paste(cluster_terpilih, collapse = " dan "), "\n\n")
}

#Contoh pemanggilan fungsi
cluster_titik(4, 3, 7)
cluster_titik(3,-7,-1)
cluster_titik(0.5, 3.5, 2.5)
