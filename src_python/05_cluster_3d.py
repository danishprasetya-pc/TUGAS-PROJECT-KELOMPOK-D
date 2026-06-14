import numpy as np


def cluster_titik(x1, x2, x3):
    A = np.array([3, 2, 4])
    B = np.array([-2, 5, 1])
    C = np.array([1, -3, -2])

    U = np.array([x1, x2, x3])

    dA = np.sqrt(np.sum((U - A) ** 2))
    dB = np.sqrt(np.sum((U - B) ** 2))
    dC = np.sqrt(np.sum((U - C) ** 2))

    print(f"Jarak ke A: {dA:.4f}")
    print(f"Jarak ke B: {dB:.4f}")
    print(f"Jarak ke C: {dC:.4f}")

    jarak_min = min(dA, dB, dC)
    cluster_terpilih = []

    if dA == jarak_min:
        cluster_terpilih.append("Cluster A")
    if dB == jarak_min:
        cluster_terpilih.append("Cluster B")
    if dC == jarak_min:
        cluster_terpilih.append("Cluster C")

    output_cluster = " dan ".join(cluster_terpilih)
    print(f"Titik termasuk {output_cluster}\n")


#Contoh pemanggilan fungsi
cluster_titik(4, 3, 7)
cluster_titik(3, -7, -1)
cluster_titik(0.5, 3.5, 2.5)
