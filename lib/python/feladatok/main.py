import string


def feladat_1():
    # Kérjen be a felhasználótól egy szöveget, aztán egy egész számot, hogy hányadik karaktert kell megjeleníteni.
    # Írja ki a kapott szövegből az adott számnak megfelelő helyen (pl. 2 esetén a második) álló karakterét.
    # Amennyiben a szövegnek nincs az adott helyen karaktere, írja ki a "Nemlétező karakter" szöveget
    inputText = input("Kérek egy szöveget: ")
    index = int(input("Kérek egy számot: "))

    if len(inputText) - 1 < index:
        print("Nemlétező karakter!")
    else:
        if inputText[index] != ' ':
            print(f" A {index}. indexen levő karakter a(z) '{inputText[index]}' betű")
        else:
            print("Nemlétező karakter!")


def feladat_2():
    # Kérjen be a felhasználótól egy szöveget, majd kérdezze meg, hányadik karakternél kell elmetszeni.
    # Ezek után a szöveget írja ki úgy, hogy az adott karakterrel kezdődően a végéig tartó részt felcseréli az adott karakterig tartó résszel.
    # Amennyiben a szövegnek nincs az adott helyen karaktere, írja ki a "Nemlétező karakter" szöveget
    inputText = input("Kérek egy szöveget: ")
    stripCharIndex = int(input("Kérek egy indexet, ahol majd elvágjuk a bekért szöveget: "))
    outputText = ""
    if len(inputText) >= stripCharIndex:
        if inputText[stripCharIndex] != ' ':
            for i in range(len(inputText)):
                if i == stripCharIndex:
                    outputText += ' '
                if i < stripCharIndex:
                    outputText += inputText[i]
                else:
                    outputText += inputText[stripCharIndex]
            print(outputText)
        else:
            print("Nemlétező karakter")
    else:
        print("Nemlétező karakter")


def feladat_3():
    # Készíts madárnyelv-fordítót, ami egy tetszőleges magyar mondatot madárnyelvre alakít át!
    # A madárnyelv szabálya hogy minden magánhangzó után beillesztünk egy v+magánhangzó szótagot ugyanazzal a magánhangzóval.
    # Pl. informatika --> ivinfovormavativikava.
    maganhangzok = 'aáeéiíoóöőuúüű'
    inputText = input('Adjon meg egy szót:')
    outputText = ""
    for i in inputText:
        if i in maganhangzok:
            outputText += str(i) + 'v'
        outputText += i
    print(outputText)


def feladat_4():
    # Írjunk programot, amely egy beolvasott évszámról eldönti, hogy szökőév-e!
    # Egy évszám szökőév, ha 4-gyel osztható, de a 100-zal oszthatók nem szökőévek, kivéve, ha 400-zal oszthatók
    inputNumber = input("Adj meg egy évszámot: ")
    boolean = False

    while not inputNumber.isnumeric():
        inputNumber = input("Adj meg egy évszámot: ")

    inputNumber = int(inputNumber)

    if inputNumber % 4 != 0:
        boolean = False
    elif inputNumber % 400 == 0:
        boolean = True
    elif inputNumber % 100 == 0:
        boolean = False
    else:
        boolean = True

    if boolean:
        print(f"A megadott évszám szökőév")
    else:
        print(f"A megadott évszám NEM szökőév")


def feladat_5():
    # Írjunk programot, amely egész számokat olvas be a billentyűzetről mindaddig, míg 0-t nem gépelünk, és közben minden beolvasott számról eldönti, hogy páros-e vagy páratlan!
    bekeres = int(input('Adjon meg egy számot:'))
    while bekeres != 0:
        if bekeres % 2 == 0:
            print('páros')
        else:
            print('páratlan')
        bekeres = int(input('Adjon meg egy számot:'))


def feladat_6():
    # Készítsen egy olyan programot, ami egy éééé.hh.nn formában adott  dátumról megmondja, hogy az adott év hányadik napja.
    # A program kezelje a szökőéveket is. (Egy évszám szökőév, ha 4-gyel osztható, de a 100-zal oszthatók nem szökőévek, kivéve, ha 400-zal oszthatók.)
    monthPool = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    monthdayPool = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    monthdayPoolSZ = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    dayPool = []

    for i in range(1, 32):
        dayPool.append(i)

        usedPool = []
        date = input("Adj meg egy dátumot! (ÉÉÉÉ.HH.NN)")
        dateS = date.split(".")

        if not date[0].isnumeric():
            print("Hibás adat.")
            return
        if int(dateS[1]) not in monthPool:
            print("Hibás adat.")
            return
        if int(dateS[2]) not in dayPool:
            print("Hibás adat.")
            return

        if int(dateS[0]) % 4 != 0:
            usedPool = monthdayPool
        elif int(dateS[0]) % 400 == 0:
            usedPool = monthdayPoolSZ
        elif int(dateS[0]) % 100 == 0:
            usedPool = monthdayPool
        else:
            usedPool = monthdayPoolSZ

        xd = 0
        for i in range(int(dateS[1]) - 1):
            xd += usedPool[i]
        print("Az év", str(xd + int(dateS[2])), ". napja.")


def feladat_7():
    # Írjunk programot, amely a billentyűzetről karaktereket olvas mindaddig, amíg azok az angol ábécé betűi, majd a beolvasás után kiírja, hogy hány volt ezek közül kisbetű!
    inputLetter = ""
    lowerCount = 0
    while inputLetter in string.ascii_letters:
        inputLetter = input("Adj meg egy betűt, csak az angol ABC betűiből: ")
        if inputLetter.islower():
            lowerCount += 1
    print(f"A bekérés során {lowerCount} db kisbetű kértünk be!")


def feladat_8():
    # Írjunk programot, amely egy billentyűzetről beolvasott karaktersorozatban megszámolja, hogy hány betűt, hány számjegyet és hány egyéb karaktert tartalmaz!
    inputText = input("Kérek egy szöveget: ")
    lowerCount = 0
    upperCount = 0
    numberCount = 0
    otherCount = 0
    for obj in inputText:
        if obj.isnumeric():
            numberCount += 1
        elif obj.islower():
            lowerCount += 1
        elif obj.isupper():
            upperCount += 1
        else:
            otherCount += 1
    print(
        f"A bekért szövegben {lowerCount} db kisbetű, {upperCount} db nagybetű, {numberCount} db szám és {otherCount} db más karakter.")


def isNegative(inp):
    return int(inp) < 0


def isZero(inp):
    return int(inp) == 0


def isPositive(inp):
    return int(inp) > 0


def feladat_9():
    vane = True
    # Írjunk programot, amely egyesével beolvas egész számokat mindaddig, amíg a számok váltakozó előjelűek, majd kiírja a képernyőre a beolvasott értékek darabszámát!
    # A nulla egy speciális érték, amelyet a negatív számok közé sorolunk, ha előtte pozitív érték szerepel (beleértve a pozitív számok közé sorolt nullát is), illetve a pozitívak közé, ha előtte negatív érték áll
    # (beleértve a negatív számok közé sorolt nullát is).
    # A sorozat elején álló nulla értékek előjele lényegtelen.
    inp = int(input("Kezdésnek írj bármilyen egész számot!: "))
    prevNumber = inp
    while vane:
        inputNumber = int(input("Lehetőleg ne írj be ugyanolyan előjelű számot!: "))
        if isNegative(inputNumber) != isNegative(prevNumber):
            vane = True
        elif inputNumber == 0 and prevNumber < 0:
            inputNumber = int(input("Lehetőleg ne írj be ugyanolyan előjelű számot!: "))
            if isPositive(inputNumber):
                vane = False
        elif isZero(inputNumber) and isPositive(prevNumber):
            inputNumber = int(input("Lehetőleg ne írj be ugyanolyan előjelű számot!: "))
            if isNegative(inputNumber):
                vane = False
        elif isZero(inputNumber) != isZero(prevNumber):
            vane = True
        elif isPositive(inputNumber) != isPositive(prevNumber):
            vane = True
        else:
            vane = False
        prevNumber = inputNumber
    print("Vége!")


feladat_9()


def feladat_10():
    # Írjunk programot, amely az ötöslottó számsorsolását modellezi!
    pass
