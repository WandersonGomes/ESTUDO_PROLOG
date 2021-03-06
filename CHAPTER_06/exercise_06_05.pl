% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 06
% Exercicio: 6.5
% Enunciado:
% Modifique o programa desenvolvido no exercicio anterior de modo que,
% quando for solicitado ao robo pegar um objeto cuja posicao e
% desconhecida, ele pergunte ao usuario onde esta esse objeto e atualize
% a sua base de dados com a nova informacao. Veja um exemplo:
%
% ?- pos(O,L).
% O = robo
% L = cozinha ;
% O = tv
% L = quarto ;
% No
% ?- pegue(lixo), ande(rua), solte(lixo), ande(garagem).
% Onde esta lixo? quintal
% anda de cozinha ate quintal
% pega lixo
% anda de quintal ate rua
% solta lixo
% anda de rua ate garagem
% Yes
%
% ?- pos(O, L).
% O = robo
% L = garagem ;
% O = lixo
% L = rua ;
% O = tv
% L = quarto ;
% No
%
% facts
pos(robo, cozinha).
pos(tv, quarto).

gets(S) :- read_line_to_codes(user_input, C), name(S,C).

%Robo ja nao se encontra no mesmo local
ande(Destino) :- pos(robo, Origem), Origem \= Destino, format('anda de ~w ate ~w', [Origem, Destino]), nl, retract(pos(robo, Origem)), asserta(pos(robo, Destino)).

%localizacao do robo igual a do objeto
pegue(Objeto) :- pos(robo, Localizacao1), pos(Objeto, Localizacao2), Localizacao1 = Localizacao2, format('pega ~w', [Objeto]), nl.

%localizacao do robo diferente da do objeto
pegue(Objeto) :- pos(robo, Localizacao1), pos(Objeto, Localizacao2), Localizacao1 \= Localizacao2, ande(Localizacao2), pegue(Objeto), !.

% objeto nao existe na base
pegue(Objeto) :- not(pos(Objeto,_)), format('Onde esta ~w?', [Objeto]), nl, gets(Localizacao), assertz(pos(Objeto, Localizacao)), pegue(Objeto), !.

%solta o objeto
solte(Objeto) :- pos(Objeto, Origem), retract(pos(Objeto, Origem)), pos(robo, Destino), assertz(pos(Objeto, Destino)), format('solta ~w', [Objeto]), nl.


