%  1.- Verificar si un elemento pertenece a una lista dada.
pertenece(X,[X|_]).
pertenece(X,[_|L]) :- pertenece(X,L).

% 2.- Obtener la longitud de una lista.
size([],0).
size([_|Xs], L):- size(Xs, L2), L is L2 + 1.

% 3.- Obtener la concatenación de 2 listas dadas.
concatenar([],L2,L2).
concatenar([H1|T1],L2,[H1|R]):- concatenar(T1,L2,R).

% 4.- Eliminar un elemento de una lista
eliminar(_,[],[]).
eliminar(X,[X],[]).
eliminar(X,[H1|T1],[H1|TAIL]):- X =\= H1, eliminar(X,T1,TAIL).
eliminar(X,[H1|T1],TAIL):- X =:= H1, eliminar(X,T1,TAIL).

% 5.- Agregar un elemento a una lista.
agregar(E,L1,[E|L1]).

% 6.-Separar una lista en 2 listas (pares e impares).   
separar([ ],[ ],[ ]).
separar([L|R],[L|P],I):- E is L mod 2, E=0, separar(R,P,I).
separar([L|R],P,[L|I]):- C is L mod 2, C>0, separar(R,P,I).

% 7.- Verifica si una lista se encuentra de manera ascendente.
ascendente([_X]).
ascendente([X,Y|Ys]):-X < Y,ascendente([Y|Ys]). 

% 8.- Verifica si una lista se encuentra de manera descendente
descendente([_X]).
descendente([X,Y|Ys]):-X > Y,descendente([Y|Ys]). 

% 9.- aplanar(L, A), donde L es en general una lista de listas,
% tan compleja en su anidamiento como queramos imaginar,
% y A es la lista que resulta de reorganizar los elementos contenidos
% en las listas anidadas en un único nivel.

aplanar([], []).
aplanar([X|R], [X|P]):- atomic(X), aplanar(R, P).
aplanar([X|R], P):- not(atomic(X)), aplanar(X, P_X),
aplanar(R, P_R), append(P_X, P_R, P).

% 10.- Obtener una lista con elementos menores que el elemento HEAD.

menor([],[]).
menor([_],[]).
menor([X1,X2|TAIL], [X2|L]):-X1 > X2, menor([X1|TAIL],L).
menor([X1,X2|TAIL],L):-X1<X2, menor([X1|TAIL],L).

% 11.- Obtener una lista con elementos mayores que el elemento HEAD.

mayor([],[]).
mayor([_],[]).
mayor([X1,X2|TAIL], [X2|L]):-X1 < X2, mayor([X2|TAIL],L).
mayor([X1,X2|TAIL],L):-X1 > X2, mayor([X2|TAIL],L).

% 12.- Obtener una lista con los elementos invertidos.
% inv(Lista, Acumulador, Invertida)
inv([], I, I).
inv([X|R], A, I) :- inv(R, [X|A], I).

invertir(L,I) :- inv(L, [], I).