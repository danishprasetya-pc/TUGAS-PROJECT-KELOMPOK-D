hitung_kata_dan_kalimat <- function(teks) {
  
  daftar_kata <- strsplit(teks, "\\s+")[[1]]
  jumlah_kata <- length(daftar_kata)
  
  daftar_kalimat <- strsplit(teks, "\\.")[[1]]
  jumlah_kalimat <- 0
  
  for (kalimat in daftar_kalimat) {
    if (trimws(kalimat) != "") {
      jumlah_kalimat <- jumlah_kalimat + 1
    }
  }
  
  cat("Teks tersebut memuat",jumlah_kalimat,"kalimat dan",jumlah_kata,"kata.\n")
}

# Contoh pemanggilan fungsi
hitung_kata_dan_kalimat("Ketuhanan Yang Maha Esa. Kemanusiaan yang adil dan beradab. Persatuan Indonesia.")
hitung_kata_dan_kalimat("Fungsi adalah blok kode yang diberi nama dan digunakan untuk menjalankan tugas tertentu. Fungsi dapat menerima input berupa parameter atau argumen, memproses input tersebut, kemudian menghasilkan output.")
hitung_kata_dan_kalimat("aku berlari menjauh dari hal yang tak lagi utuh. tetes air mata serupa hujan basahiku sepanjang jalan. dalam lelah kuberharap agar tuhan berikan aku lupa. namun itu tak kudapatkan kisah lain yang ia berikan.")
