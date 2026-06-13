def hitung_kata_dan_kalimat(teks):
    daftar_kata = teks.split()
    jumlah_kata = len(daftar_kata)

    daftar_kalimat = teks.split(".")
    jumlah_kalimat = 0

    for kalimat in daftar_kalimat:
        if kalimat.strip() != "":
            jumlah_kalimat += 1

    print(f"Teks tersebut memuat {jumlah_kalimat} kalimat dan {jumlah_kata} kata.")


# Contoh pemanggilan fungsi
hitung_kata_dan_kalimat("Ketuhanan Yang Maha Esa. Kemanusiaan yang adil dan beradab. Persatuan Indonesia.")
hitung_kata_dan_kalimat("Fungsi adalah blok kode yang diberi nama dan digunakan untuk menjalankan tugas tertentu. Fungsi dapat menerima input berupa parameter atau argumen, memproses input tersebut, kemudian menghasilkan output.")
hitung_kata_dan_kalimat("aku berlari menjauh dari hal yang tak lagi utuh. tetes air mata serupa hujan basahiku sepanjang jalan. dalam lelah kuberharap agar tuhan berikan aku lupa. namun itu tak kudapatkan kisah lain yang ia berikan.")
