%funcionario(código,Nome,Salário)
funcionario(1,'Ana',1000.90).
funcionario(2,'Bia',1200.00).
funcionario(3,'Ivo',903.50).
funcionario(4,'Leo',2500.35).
funcionario(5,'Clo',1800.00).
funcionario(6,'Gil',1100.00).

%dependente(codigo, nome)
dependente(1, 'Ary').
dependente(3, 'Ray').
dependente(3, 'Eva').
dependente(4, 'Lia').
dependente(4,'Noe').
dependente(5, 'Eli').

% dependentes de ivo
dependenteIvo :- dependente(3,X), write(X), nl, false.

% dependente de funcionario com salario inferior a RS 950
dependenteSemDinheiro :- dependente(X,Y),funcionario(X,_, S), S < 950.00, write(Y), nl, false.

% não tem dependente
semFilho :- funcionario(X,N,_), not(dependente(X,_)), write(N), nl, false.

% funcionario com salario entre RS 1500 e RS 3000
classeMedia :- funcionario(_,N,S), S < 3000.00,S > 1500.00, write(N), nl, false.


