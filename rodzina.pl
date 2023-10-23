osoba(zofia, null, null, kobieta, null).
osoba(andrzej, null, null, m�czyzna, null).
osoba(marcin, andrzej, zofia, m�czyzna, null).
osoba(kasia, andrzej, zofia, kobieta, null).
osoba(ania, marcin, kasia, kobieta, null).
osoba(krzy�, marcin, kasia, m�czyzna, null).
osoba(miko�aj, krzy�, null, m�czyzna, null).

rodzic(X, Y):- osoba(X, _, _, _, _), dziecko(Y, X).
kobieta(X) :- osoba(X, _, _, kobieta, _).
m�czyzna(X) :- osoba(X, _, _, m�czyzna, _).

potomek(Y, X) :- rodzic(X, Y).
matka(X, Y) :- rodzic(X, Y), kobieta(X).
dziadkowie(X, Z) :- rodzic(X, Y), rodzic(Y, Z).
siostra(X, Y) :- rodzic(Z, X), rodzic(Z, Y), kobieta(X), X\=Y.
