osoba(jan, 22, pi�ka no�na).
osoba(ania, 30, czytanie).
osoba(tomasz, 30, filmy).
osoba(marek, 42, koszyk�wka).

% Regu�a por�wnuj�ca wiek
starszy(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX > WiekY.
m�odszy(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX < WiekY.
tenSamWiek(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX =:= WiekY, X\=Y.
