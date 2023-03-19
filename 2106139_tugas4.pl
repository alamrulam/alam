
laki_laki(john, 1980).
laki_laki(jack, 1990).
laki_laki(peter, 1965).
laki_laki(david, 2000).
laki_laki(ray, 1975).

perempuan(susan, 1982).
perempuan(amy, 1995).
perempuan(liza, 1968).
perempuan(mary, 1970).
perempuan(karen, 2005).

orang_tua(john, susan).
orang_tua(john, amy).
orang_tua(liza, susan).
orang_tua(liza, mary).
orang_tua(peter, john).
orang_tua(peter, liza).
orang_tua(mary, john).
orang_tua(mary, liza).
orang_tua(david, mary).
orang_tua(david, ray).


anak(X, Y) :- orang_tua(Y, X).

kakak(X, Y) :- orang_tua(Z, X), orang_tua(Z, Y), X \= Y, tahun_lahir(X, T1), tahun_lahir(Y, T2), T1 < T2.

saudara_kandung(X, Y) :- orang_tua(Z, X), orang_tua(Z, Y), X \= Y.
anak_tunggal(jane).

anak_tunggal(X) :- orang_tua(X, Y), \+ (orang_tua(X, Z), Z \= Y).

tahun_lahir(X, T) :- laki_laki(X, T) ; perempuan(X, T).
