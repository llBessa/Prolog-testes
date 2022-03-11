% filme(Título, Gênero, Ano, Duração)
%fatos :

filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor púrpura', drama, 1985, 152).
filme('Copacabana', comédia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

% O predicado filmesClassicos define que tipo de filme dentre os fatos
% foi desenvolvido antes de 1985.

filmesClassicos( T, G, A, D) :- filme( T, G, A, D),  A =< 1985.

% exibeClassicos e uma query que exibe todos os filmes calssicos e o seu
% respectivo ano.

exibeClassicos :- filmesClassicos(T, _, A, _), write(T),write(' ('),write(A),write(')'), nl, false.

% classicosNomeGenero e uma query que exibe os classicos por nome e
% genero.

classicosNomeGenero :- filmesClassicos(T,G,_, _), write(T),write(' ('),write(G),write(')'), nl, false.
