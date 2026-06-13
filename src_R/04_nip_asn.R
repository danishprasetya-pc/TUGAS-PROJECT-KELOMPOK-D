tanggal_lahir <- function(nip) {
  
  nip_str <- as.character(nip)
  
  tahun <- as.numeric(substr(nip_str, 1, 4))
  bulan <- as.numeric(substr(nip_str, 5, 6))
  tanggal <- as.numeric(substr(nip_str, 7, 8))
  
  daftar_bulan <- c("Januari", "Februari", "Maret", "April", "Mei", "Juni", 
                    "Juli", "Agustus", "September", "Oktober", "November", "Desember")
  
  if (bulan >= 1 && bulan <= 12) {
    nama_bulan <- daftar_bulan[bulan]
    cat("Tanggal lahir ASN:", tanggal, nama_bulan, tahun, "\n")
  } else {
    cat("Bulan Tidak Valid\n")
  }
}

#Contoh pemanggilan fungsi
tanggal_lahir(199210252015032015)
tanggal_lahir(198540122010011003)
tanggal_lahir(199812012023021001)
