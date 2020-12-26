% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 06
% Exercicio: 6.4
% Enunciado:
% Suponha um robo capaz de andar ate um certo local e pegar ou soltar
% objetos. Alem disso, suponha que esse robo mantem numa base de dados
% sua posicao corrente e as respectivas posicoes de uma serie de
% objetos. Implemente os predicados pos(Obj, Loc), ande(Dest),
% pegue(Obj) e solte(Obj), de modo que o comportamento desse robo possa
% ser simulado, conforme exemplificado a seguir:
% ?- pos(O, L).
% O = robo
% L = garagem ;
% O = tv
% L = sala ;
% No
% ?- pegue(tv), ande(quarto), solte(tv), ande(cozinha).
% anda de garagem ate sala
% pega tv
% anda de sala ate quarto
% solta tv
% anda de quarto ate cozinha
% Yes
%
% facts
:- dynamic pos/2.
pos(robo, garagem).
pos(tv, sala).

ande(Destino) :- pos(robo, Origem), Origem \= Destino, format('anda de ~w ate ~w', [Origem, Destino]), nl, retract(pos(robo, Origem)), asserta(pos(robo, Destino)).

pegue(Objeto) :- pos(robo, Localizacao1), pos(Objeto, Localizacao2), Localizacao1 = Localizacao2, format('pega ~w', [Objeto]), nl.

pegue(Objeto) :- pos(robo, Localizacao1), pos(Objeto, Localizacao2), Localizacao1 \= Localizacao2, ande(Localizacao2), pegue(Objeto), !.

solte(Objeto) :- format('solta ~w', [Objeto]), nl.





