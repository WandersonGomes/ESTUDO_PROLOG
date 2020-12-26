% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 06
% Exercicio: 6.6
% Enunciado:
% Acrescente tambem ao programa do robo o predicado leve(Obj, Loc),
% que leva um objeto ate um determinado local. Por exemplo:
%
% ?- leve(tv, sala).
% anda de garagem ate quarto
% pega tv
% anda de quarto ate sala
% solta tv
% Yes
%
% facts
:- dynamic pos/2.
pos(robo, garagem).
pos(tv, quarto).

gets(S) :- read_line_to_codes(user_input, C), name(S,C).

%Robo ja nao se encontra no mesmo local
ande(Destino) :- pos(robo, Origem), Origem \= Destino, format('anda de ~w ate ~w', [Origem, Destino]), nl, retract(pos(robo, Origem)), asserta(pos(robo, Destino)).
ande(Destino) :- pos(robo, Origem), Origem = Destino.

%localizacao do robo igual a do objeto
pegue(Objeto) :- pos(robo, Localizacao1), pos(Objeto, Localizacao2), Localizacao1 = Localizacao2, format('pega ~w', [Objeto]), nl.

%localizacao do robo diferente da do objeto
pegue(Objeto) :- pos(robo, Localizacao1), pos(Objeto, Localizacao2), Localizacao1 \= Localizacao2, ande(Localizacao2), pegue(Objeto), !.

% objeto nao existe na base
pegue(Objeto) :- not(pos(Objeto,_)), format('Onde esta ~w?', [Objeto]), nl, gets(Localizacao), assertz(pos(Objeto, Localizacao)), pegue(Objeto), !.

%solta o objeto
solte(Objeto) :- pos(Objeto, Origem), retract(pos(Objeto, Origem)), pos(robo, Destino), assertz(pos(Objeto, Destino)), format('solta ~w', [Objeto]), nl.

leve(Objeto, Destino) :- pegue(Objeto), pos(Objeto, Localizacao), ande(Localizacao), ande(Destino), solte(Objeto), !.
