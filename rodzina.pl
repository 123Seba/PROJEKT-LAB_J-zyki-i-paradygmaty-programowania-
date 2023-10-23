osoba(zofia, null, null, kobieta, null).
osoba(andrzej, null, null, mê¿czyzna, null).
osoba(marcin, andrzej, zofia, mê¿czyzna, null).
osoba(kasia, andrzej, zofia, kobieta, null).
osoba(ania, marcin, kasia, kobieta, null).
osoba(krzyœ, marcin, kasia, mê¿czyzna, null).
osoba(miko³aj, krzyœ, null, mê¿czyzna, null).

rodzic(X, Y):- osoba(X, _, _, _, _), dziecko(Y, X).
kobieta(X) :- osoba(X, _, _, kobieta, _).
mê¿czyzna(X) :- osoba(X, _, _, mê¿czyzna, _).

potomek(Y, X) :- rodzic(X, Y).
matka(X, Y) :- rodzic(X, Y), kobieta(X).
dziadkowie(X, Z) :- rodzic(X, Y), rodzic(Y, Z).
siostra(X, Y) :- rodzic(Z, X), rodzic(Z, Y), kobieta(X), X\=Y.
