interval_konfidensi <- function(p_hat, n, alpha) {
  if (p_hat < 0 || p_hat > 1) {
    cat("Error: Proporsi harus berada pada rentang 0 sampai 1.\n")
    return()
  }
  if (alpha == 0.05) {
    z <- 1.96
  } else if (alpha == 0.10) {
    z <- 1.645
  } else {
    cat("Error: Alpha harus bernilai 0.05 atau 0.10.\n")
    return()
  }
  
  margin_error <- z * sqrt((p_hat * (1 - p_hat)) / n)
  batas_bawah <- p_hat - margin_error
  batas_atas <- p_hat + margin_error

  cat("Proporsi Sampel =", p_hat, "\n")
  cat("Ukuran Sampel =", n, "\n")
  cat("Alpha =", alpha, "\n")
  cat("Interval Konfidensi = (",round(batas_bawah, 3),",",round(batas_atas, 3),")\n")
}

#Contoh pemanggilan fungsi
interval_konfidensi(0.4, 100, 0.05)
interval_konfidensi(0.6, 250, 0.01)
interval_konfidensi(1.2, 150, 0.10)
