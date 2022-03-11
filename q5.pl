%partida(voo, destino, hora prevista, hora real)
%Fatos :
partida('TP123', 'Lisboa', 14.30, 14.30).
partida('NI234', 'Manchester', 15.25, 16.00).
partida('TP876', 'Faro', 14.18, 14.30).
partida('NI498', 'Madrid', 15.00, 15.00).

%chegada(voo, origem, hora prevista, hora real).
%Fatos :
chegada('TP123', 'Lisboa', 14.00, 14.35).
chegada('NI533', 'Funchal', 15.00, 15.00).
chegada('TP877', 'Santiago', 14.30, 15.00).
chegada('NI498', 'Manchester', 16.00, 15.50).

%pareAHoras indica se o voo partiu no horario previsto
parteAHoras(C) :- partida(C,_,X,Y), X = Y.

%vaivem indica se o voo saiu e chegou no mesmo local
vaivem(C) :- partida(C,L,_,_), chegada(C,L,_,_).

% ligacao indica se existe um voo que chegou de uma origem e vai para um
% destino diferente.
ligacao(O,D) :- chegada(C,O,_,_),partida(C,D,_,_), not(O=D).

%pareAHoras indica se o voo chegou atrasado.
chegaAtrasado(C) :- chegada(C,_,X,Y), X < Y.

%emConflito indica se um voo saiu em um horario superior ao de chegada
emConflito(C) :- partida(C,_,_,X), chegada(C,_,_,Y),X >= Y.




