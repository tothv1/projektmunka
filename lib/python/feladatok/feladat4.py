# 4. feladat Kérjen be a felhasználótól egy szöveget, majd kérdezze meg, hányadik karakternél kell elmetszeni.
# Ezek után a szöveget írja ki úgy, hogy az adott karakterrel kezdődően a végéig tartó részt felcseréli az adott karakterel
# Amennyiben a szövegnek nincs az adott helyen karaktere, írja ki a "Nemlétező karakter" szöveget
szo = str(input("Kérek egy szót: "))
szam = int(input("Kérek egy számot, ahol metszeni kell: ")) - 1
hello = ""
stripChar = szo[szam]
if szo[szam] != " ":
    for b in range(len(szo)):
        if b == szam:
            hello += " "
        if b < szam:
            hello += szo[b]
        if b > szam:
            hello += stripChar
    print(hello)
else:
    print("Nemlétező karakter")