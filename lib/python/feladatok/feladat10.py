#10.Írjunk programot, amely az ötöslottó számsorsolását modellezi!
import random
adatok = list()
for i in range(5):
    veletlen = random.randint(1,100)
    adatok.append(veletlen)
print(adatok)