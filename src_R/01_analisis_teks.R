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
  
  cat("Teks tersebut memuat",jumlah_kalimat,"kalimat dan",jumlah_kata,"kata.")
}

# Contoh pemanggilan fungsi
hitung_kata_dan_kalimat("ini hanya mencoba. apakah ini berhasil")
hitung_kata_dan_kalimat("bahwa sesungguhnya kemerdekaan itu ialah hak segala bangsa.
                        dan oleh sebab itu, maka penjajahan di atas dunia harus dihapuskan.")
hitung_kata_dan_kalimat("aku berlari menjauh dari hal yang tak lagi sepi.
                        tetes air mata serupa hujan basahiku sepanjang jalan.
                        dalam lelah kuberharap tuhan berikan aku lupa.
                        namun itu tak kudapatkan kisah lain yang ia berikan.
                        dalam pelarian, kutemukan diriku.
                        ")
