koefisien_a = float
koefisien_b = float
koefisien_c = float

def hitung_akar_kuadrat(koefisien_a, koefisien_b, koefisien_c):
    diskriminan = (koefisien_b ** 2) - (4 * koefisien_a * koefisien_c)

    if diskriminan > 0:
        akar_1 = (-koefisien_b + math.sqrt(diskriminan)) / (2 * koefisien_a)
        akar_2 = (-koefisien_b - math.sqrt(diskriminan)) / (2 * koefisien_a)

        print("Akar real:")
        print(f"Akar 1 = {akar_1:.3f}")
        print(f"Akar 2 = {akar_2:.3f}")

    elif diskriminan == 0:
        akar = -koefisien_b / (2 * koefisien_a)

        print("Akar real kembar:")
        print(f"Akar = {akar:.3f}")

    else:
        print("Persamaan memiliki akar-akar imajiner")


hitung_akar_kuadrat(1,-4,4)
hitung_akar_kuadrat(2,-13,15)
hitung_akar_kuadrat(3,-10,25)
