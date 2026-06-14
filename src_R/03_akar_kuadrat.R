hitung_akar_kuadrat <- function(koefisien_a, koefisien_b, koefisien_c) {
  
  diskriminan <- (koefisien_b ^ 2) - (4 * koefisien_a * koefisien_c)
  
  if (diskriminan > 0) {
    
    akar_1 <- (-koefisien_b + sqrt(diskriminan)) / (2 * koefisien_a)
    akar_2 <- (-koefisien_b - sqrt(diskriminan)) / (2 * koefisien_a)
    
    cat("Persamaan tersebut memiliki akar real:\n")
    cat(sprintf("Akar 1 = %.3f\n", akar_1))
    cat(sprintf("Akar 2 = %.3f\n", akar_2))
    
  } else if (diskriminan == 0) {
    
    akar <- -koefisien_b / (2 * koefisien_a)
    
    cat("Persamaan tersebut memiliki akar real kembar:\n")
    cat(sprintf("Akar = %.3f\n", akar))
    
  } else {
    
    cat("Persamaan tersebut hanya memiliki akar-akar imajiner\n")
    
  }
}

#Contoh pemanggilan fungsi
hitung_akar_kuadrat(1,-4,4)
hitung_akar_kuadrat(2,-13,15)
hitung_akar_kuadrat(3,-10,25)
