#5.Írjunk programot, amely egész számokat olvas be a billentyűzetről mindaddig, míg 0-t nem gépelünk, és közben minden beolvasott számról eldönti, hogy páros-e vagy páratlan!
bekeres = int(input('Adjon meg egy számot:'))
while bekeres != 0:
    if bekeres % 2 == 0:
        print('páros')
    else:
        print('páratlan')            
    bekeres = int(input('Adjon meg egy számot:'))