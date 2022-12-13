#7.Írjunk programot, amely a billentyűzetről karaktereket olvas mindaddig, amíg azok az angol ábécé betűi, majd a beolvasás után kiírja, hogy hány volt ezek közül kisbetű!
kisbetu = 'abcdefghijklmnopqrstuvwxyz'
nagybetu = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
db = 0
while True:
    bekeres = input('Adjon meg egy betűt(az angol ábécéből):')
    if bekeres=="0":
        break
    if len(bekeres)>1:
        print("Hibás adat.")
        continue
    if bekeres in kisbetu:
        db += 1

print('Kisbetűk száma:',db)