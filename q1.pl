%fatos.

entrada(pao).
entrada(salada).
prato(carne).
prato(peixe).
prato(massa).
sobremesa(fruta).
sobremesa(pudim).
sobremesa(sorvete).

% possiveisPratos e um predicado que define quando um tipo de prato e
% possivel de ser realizado.
possiveisPratos(X, Y, Z) :- entrada(X), prato(Y), sobremesa(Z).

% menu e uma query que reconhece os possiveis pratos e os exibe em
% sequencia.

menu :- write('menu : '), nl, possiveisPratos(X,Y,Z),write('prato : ') ,write(X), write(', '), write(Y), write(', '), write(Z), nl, false.

