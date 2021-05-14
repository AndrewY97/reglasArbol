mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(diana).
mujer(vanessa).
mujer(martha).
mujer(olivia).

hombre(hugo).
hombre(paco).
hombre(luis).
hombre(mario).
hombre(marco).
hombre(juan). ninio(juan).
hombre(pedro).
hombre(raul).
hombre(gabriel).
hombre(sergio).a

madre(ana,sergio).
madre(ana,maria).
madre(ana,luis).
madre(martha,diana).
madre(romina,sergio).

padre(raul,rocio).
padre(marco,hugo).
padre(pedro,gabriel).
padre(sergio,paco).
padre(hugo,sergio).

%hijos
%abuelos
%listado PADRES
%listado MADRES

padres(X,Y):-padre(X,Y);madre(X,Y).
padres(X):-padre(X,Y);madre(X,Y).

%Padre de familia con sus hijos
padres_familia(X,Y):-padre(X,Y);madre(X,Y).
%listado Padres y madres de familia
%padres(X):_padre(X,_);madre(X,_).
%Listado de PAPAS in hijos
papa(X):-padre(X,_).

%MAMAS
mama(X):-madre(X,_).

%ABUELO
abuelos(Z,Y):- padre(Z,X),(padre(X,Y);madre(X,Y)),hombre(Z).
%ABuela
abuela(Z,Y):- madre(Z,X),(padre(X,Y);madre(X,Y)),mujer(Z).
%Esposos
esposo(Z,Y):-padre(Z,X),madre(Y,X).

%hermanos
hermanos(X,Y):-padre(Z,X),padre(Z,Y).