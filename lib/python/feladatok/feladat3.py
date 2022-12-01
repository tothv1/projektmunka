#3.Készíts madárnyelv-fordítót, ami egy tetszőleges magyar mondatot madárnyelvre alakít át! A madárnyelv szabálya hogy minden magánhangzó után beillesztünk egy v+magánhangzó szótagot ugyanazzal a magánhangzóval. Pl. informatika --> ivinfovormavativikava.
maganhangzok = 'aáeéiíoóöőuúüű'
szo = input('Adjon meg egy szót:')
xd = ""
for i in szo:
    if i in maganhangzok:
        xd += str(i)+'v'
    xd += i
print(xd)