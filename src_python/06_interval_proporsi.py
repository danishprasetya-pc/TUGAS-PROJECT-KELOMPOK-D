#Soal 6 Interval Konfidensi Proporsi
import math

def interval_konfidensi(p_hat, n, alpha):
    # Validasi proporsi
    if p_hat < 0 or p_hat > 1:
        print("Error: Proporsi harus berada pada rentang 0 sampai 1.")
        return

    # Menentukan nilai z berdasarkan alpha
    if alpha == 0.05:
        z = 1.96
    elif alpha == 0.10:
        z = 1.645
    else:
        print("Error: Alpha harus bernilai 0.05 atau 0.10.")
        return

    # Menghitung margin of error
    margin_error = z * math.sqrt((p_hat * (1 - p_hat)) / n)

    # Menghitung batas bawah dan atas interval
    batas_bawah = p_hat - margin_error
    batas_atas = p_hat + margin_error

    # Menampilkan hasil
    print(f"Proporsi Sampel = {p_hat}")
    print(f"Ukuran Sampel   = {n}")
    print(f"Alpha           = {alpha}")
    print(f"Interval Konfidensi = ( {round(batas_bawah, 3)} , {round(batas_atas, 3)} )")

interval_konfidensi(0.60, 100, 0.05)
