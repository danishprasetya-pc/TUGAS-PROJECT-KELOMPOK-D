import math

def cluster_titik(x1, x2, x3):

    A = (2, 1, 3)
    B = (1, -4, 6)
    C = (-2, 3, -2)

    U = (x1, x2, x3)

    dA = math.sqrt(sum((u - a) ** 2 for u, a in zip(U, A)))
    dB = math.sqrt(sum((u - b) ** 2 for u, b in zip(U, B)))
    dC = math.sqrt(sum((u - c) ** 2 for u, c in zip(U, C)))

    if dA <= dB and dA <= dC:
        print("Titik termasuk Cluster A")
    elif dB <= dA and dB <= dC:
        print("Titik termasuk Cluster B")
    else:
        print("Titik termasuk Cluster C")


# Contoh penggunaan
cluster_titik(1, 2, 3)
