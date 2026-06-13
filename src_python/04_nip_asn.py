def tanggal_lahir(nip):
    nip_str = str(nip)

    tahun = int(nip_str[0:4])
    bulan = int(nip_str[4:6])
    tanggal = int(nip_str[6:8])

    daftar_bulan = [
        "Januari",
        "Februari",
        "Maret",
        "April",
        "Mei",
        "Juni",
        "Juli",
        "Agustus",
        "September",
        "Oktober",
        "November",
        "Desember",
    ]

    if 1 <= bulan <= 12:
        nama_bulan = daftar_bulan[bulan - 1]
        print(f"Tanggal lahir ASN: {tanggal} {nama_bulan} {tahun}\n")
    else:
        print("Bulan Tidak Valid\n")


#Contoh pemanggilan fungsi
tanggal_lahir(199210252015032015)
tanggal_lahir(198540122010011003)
tanggal_lahir(199812012023021001)
