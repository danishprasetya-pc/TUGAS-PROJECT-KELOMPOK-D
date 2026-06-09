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
hitung_kata_dan_kalimat("ini hanya mencoba. apakah ini berhasil")
