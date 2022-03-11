%CATALOGO DE FILMES
%filme(titulo,genero,diretor,ano,min)
%Fatos :
filme('Amnesia','Suspense','Nolan',2000,113).
filme('Babel','Drama','Inarritu',2006,142).
filme('Capote','Drama','Miller',2005,98).
filme('Casablanca','Romance','Curtiz',1942,102).
filme('Matrix','Ficcao','Wachowsk',1999,136).
filme('Rebecca','Suspense','Hitchcock',1940,130).
filme('Shrek','Aventura','Adamson',2001,90).
filme('Sinais','Ficcao','Shymalan',2002,106).
filme('Spartacus','Acao','Kubrik',1960,184).
filme('Superman','Aventura','Donner',1978,143).
filme('Titanic','Romance','Cameron',1997,194).
filme('Tubarao','Suspense','Spielberg',1975,124).
filme('Volver','Drama','Almodovar',2006,121).

%dirigiu o Titanic
dirigiuTitanic :- filme('Titanic',_,D,_,_), write(D),nl,false.

%filmes de suspense
suspenses :- filme(N,'Suspense',_,_,_), write(N),nl,false.

%filmes dirigidos por Donner
dirigidosDonner :- filme(N,_,'Donner',_,_), write(N),nl,false.

%sinaisAno retorna o ano de criacao do filme sinais
sinaisAno :- filme('Sinais',_,_,A,_), write(A),nl,false.

% filmesPequenos e uma query que retorna todos os filmes com menos de
% 100 minutos.
filmesPequenos :- filme(N,_,_,_,X),X < 100,write(N),nl,false.

%query que retorna filmes entre 2000 e 2005
filmes2000_05 :- filme(N,_,_,A,_),A =< 2005,A >= 2000,write(N),nl,false.

%predicado que retorna se um filme e classico ou nao.
classico(N) :- filme(N,_,_,A,_),A < 1980.

%predicado que retorna true se um filme e de um genero especifico
genero(N,G) :- filme(N,G,_,_,_).

%query que retorna os filmes classicos de suspense
classicoSus :- classico(N),genero(N,'Suspense'),write(N),nl,false.






































