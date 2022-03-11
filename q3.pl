% pessoa(Nome,Sexo,Altura)
% fatos :

pessoa(ana,f,1.68).
pessoa(bia,f,1.75).
pessoa(ivo,m,1.73).
pessoa(rai,m,1.57).

% casal e uma regra que define um casal como um homem e uma mulher com o
% homem sendo mais alto qur a mulher.

casal(H,M) :- pessoa(H, m, X),pessoa(M, f, Y), X > Y.

% todosCasais e uma query que exibe os casais possiveis.

todosCasais :- casal(X,Y),
write('casal : '),
write(X),
write(' '),
write(Y),
nl,
false.
