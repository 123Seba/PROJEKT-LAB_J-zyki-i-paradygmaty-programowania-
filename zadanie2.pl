osoba(jan, 22, pi³ka no¿na).
osoba(ania, 30, czytanie).
osoba(tomasz, 30, filmy).
osoba(marek, 42, koszykówka).

% Regu³a porównuj¹ca wiek
starszy(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX > WiekY.
m³odszy(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX < WiekY.
tenSamWiek(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX =:= WiekY, X\=Y.
