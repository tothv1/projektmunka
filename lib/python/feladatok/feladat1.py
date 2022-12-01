#1.Kérjen be a felhasználótól egy szöveget, aztán egy egész számot, hogy hányadik karaktert kell megjeleníteni. Írja ki a kapott szövegből az adott számnak megfelelő helyen (pl. 2 esetén a második) álló karakterét. Amennyiben a szövegnek nincs az adott helyen karaktere, írja ki a "Nemlétező karakter" szöveget
szoveg = input('Kérek egy szöveget: ')
szam = int(input('Kérek egy számot: '))

if szoveg[szam] == ' ':
    print('Nemlétező karakter')
else:
    print(szoveg[szam])