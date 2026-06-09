tanggal_lahir <- function(nip) {
  
  nip_str <- as.character(nip)
  
  tahun <- as.numeric(substr(nip_str, 1, 4))
  bulan <- as.numeric(substr(nip_str, 5, 6))
  tanggal <- as.numeric(substr(nip_str, 7, 8))
  
  if (bulan == 1) {
    nama_bulan <- "Januari"
  } else if (bulan == 2) {
    nama_bulan <- "Februari"
  } else if (bulan == 3) {
    nama_bulan <- "Maret"
  } else if (bulan == 4) {
    nama_bulan <- "April"
  } else if (bulan == 5) {
    nama_bulan <- "Mei"
  } else if (bulan == 6) {
    nama_bulan <- "Juni"
  } else if (bulan == 7) {
    nama_bulan <- "Juli"
  } else if (bulan == 8) {
    nama_bulan <- "Agustus"
  } else if (bulan == 9) {
    nama_bulan <- "September"
  } else if (bulan == 10) {
    nama_bulan <- "Oktober"
  } else if (bulan == 11) {
    nama_bulan <- "November"
  } else if (bulan == 12) {
    nama_bulan <- "Desember"
  } else {
    nama_bulan <- "Bulan Tidak Valid"
  }
  
  cat("Tanggal lahir ASN:", tanggal, nama_bulan, tahun, "\n")
}

tanggal_lahir(199012080000008866)

