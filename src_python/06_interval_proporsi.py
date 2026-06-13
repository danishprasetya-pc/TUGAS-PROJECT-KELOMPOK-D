import math


def interval_konfidensi(p_hat, n, alpha):

    if p_hat < 0 or p_hat > 1:
        print("Error: Proporsi harus berada pada rentang 0 sampai 1.\n")
        return

    if alpha == 0.05:
        z = 1.96
    elif alpha == 0.10:
        z = 1.645
    else:
        print("Error: Alpha harus bernilai 0.05 atau 0.10.\n")
        return

    margin_error = z * math.sqrt((p_hat * (1 - p_hat)) / n)

    batas_bawah = p_hat - margin_error
    batas_atas = p_hat + margin_error

    print(f"Proporsi Sampel = {p_hat}")
    print(f"Ukuran Sampel = {n}")
    print(f"Alpha = {alpha}")
    print(f"Interval Konfidensi = ( {batas_bawah:.3f} , {batas_atas:.3f} )\n")


#Contoh pemanggilan fungsi
interval_konfidensi(0.4, 100, 0.05)
interval_konfidensi(0.6, 250, 0.01)
interval_konfidensi(1.2, 150, 0.10)
