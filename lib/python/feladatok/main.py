import re
import string
import random


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
    stripCharIndex = int(input("Kérek egy indexet, ahol majd elvágjuk a bekért szöveget: ")) - 1
    outputText = ""
    asd = ""
    if len(inputText) == 1:
        print(inputText)
        return
    if len(inputText) >= stripCharIndex:
        if inputText[stripCharIndex] != ' ':
            for i in range(len(inputText)):
                if i < stripCharIndex:
                    outputText += inputText[i]
            for i in range(stripCharIndex, len(inputText)):
                asd += inputText[i]
            print(asd + outputText)
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


def feladat_10():
    # 10.Írjunk programot, amely az ötöslottó számsorsolását modellezi!
    import random
    adatok = list()
    for i in range(5):
        veletlen = random.randint(1, 100)
        adatok.append(veletlen)
    print(adatok)


# 14. Generáljon egy háromjegyű véletlenszámot és írja ki az összes pozitív osztóját vesszővel elválasztva.
def feladat_14():
    randomNumber = random.randint(100, 999)
    print(f"A random szám: {randomNumber}")
    db = 0
    text = ""
    for i in range(1, randomNumber + 1):
        if randomNumber % i == 0 and i % 2 == 0:
            db += 1
            text += str(i) + ", "
    if db >= 1:
        print(f"A {randomNumber} szám pozitív osztói: {text[0:-2]}")
    else:
        print(f"A {randomNumber} szám pozitív osztói: NINCS")


# 15. Kérjen be a felhasználó teljes nevét, majd írassa ki a monogramját. Tetszőleges számú keresztnévvel működjön! Kötőjellel írt (család)nevek esetében a kötőjel maradjon meg!
def feladat_15():
    inputName = input("Add meg a teljes nevedet: ")
    split = re.split(f"[{string.punctuation} ]", inputName)



feladat_15()


# 16. Egy szövegből válogassuk ki a természetes számokat és adjuk össze! (Pl. „jd1;ö5kjl 41lkj” esetén 1+5+41=47 lesz az eredmény.)
def feladat_16():
    randomRawText = ""
    outputText = ""
    value = 0
    number = ""
    index = 0
    for s in range(10):
        randomChar = [random.choice(string.ascii_letters), random.choice(string.digits),
                      random.choice(string.punctuation)]
        randomRawText += random.choice(randomChar)
    print(randomRawText)
    if any(char.isdigit() for char in randomRawText):
        for letter in randomRawText:
            if letter.isdigit():
                number += letter
                if index == len(randomRawText) - 1 and randomRawText[-1].isdigit():
                    outputText += number + "+"
                    value += int(number)
                    number = ""
            else:
                if number != "":
                    outputText += number + "+"
                    value += int(number)
                    number = ""
            index += 1
        outputText = outputText.strip('+')
        outputText += f"={value}"
        print(outputText)
    else:
        print("Nincs szám a random szövegben!")


# 17. Kérjük be egy háromszög három oldalának (nem feltétlenül egész) hosszúságát, ellenőrizzük, hogy lehet-e háromszög három oldala, majd írjuk ki,
# hogy egyenlő szárú háromszög, egyenlő oldalú háromszög vagy egyik sem.
def isValidTriangle(a, b, c):
    return a + b > c and a + c > b and b + c > a


def feladat_17():
    a = float(input("Kérem az első oldalt: "))
    b = float(input("Kérem a második oldalt: "))
    c = float(input("Kérem a harmadik oldalt: "))

    if isValidTriangle(a, b, c):
        if a == b != c:
            print("Ez egy egyenlő szárú háromszög!")
        elif a == b == c:
            print("Ez egy egyenlő oldalú háromszög!")
        else:
            print("Egyik sem!")
    else:
        print("Nem szerkeszthető meg a háromszög!")


# 18. Kérjen be egy számot és döntse el, hogy prímszám-e!
def isPrime(value):
    divs = 0
    if value <= 0 or value == 1:
        return False
    for div in range(1, value + 1):
        if value % div == 0:
            divs += 1
    if divs > 2:
        return False
    elif divs == 2:
        return True
    else:
        return False


def feladat_18():
    inputNumber = int(input("Kérek egy számot: "))
    if isPrime(inputNumber):
        print("Gratulálok, sikerült beírni egy prímszámot!")
    else:
        print("Sajnálom, de az általad beírt szám nem prímszám!")
