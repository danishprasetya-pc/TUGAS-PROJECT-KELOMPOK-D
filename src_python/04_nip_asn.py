#Soal 4 Membuat Program untuk Menampilkan Tanggal Lahir ASN bila diberikan NIP ASN
def tanggal_lahir(nip):

    nip_str = str(nip)

    tahun = int(nip_str[0:4])
    bulan = int(nip_str[4:6])
    tanggal = int(nip_str[6:8])

    if bulan == 1:
        nama_bulan = "Januari"
    elif bulan == 2:
        nama_bulan = "Februari"
    elif bulan == 3:
        nama_bulan = "Maret"
    elif bulan == 4:
        nama_bulan = "April"
    elif bulan == 5:
        nama_bulan = "Mei"
    elif bulan == 6:
        nama_bulan = "Juni"
    elif bulan == 7:
        nama_bulan = "Juli"
    elif bulan == 8:
        nama_bulan = "Agustus"
    elif bulan == 9:
        nama_bulan = "September"
    elif bulan == 10:
        nama_bulan = "Oktober"
    elif bulan == 11:
        nama_bulan = "November"
    elif bulan == 12:
        nama_bulan = "Desember"
    else:
        nama_bulan = "Bulan Tidak Valid" 

    print(f"Tanggal lahir ASN: {tanggal} {nama_bulan} {tahun}")

tanggal_lahir(199012080000008866)

