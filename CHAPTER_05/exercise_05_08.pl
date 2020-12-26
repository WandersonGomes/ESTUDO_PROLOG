% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 05
% Exercicio: 5.8
% Enunciado:
% O grafo a seguir representa um mapa, cujas cidades sao representadas
% por letras e cujas estradas sao representados por numeros.
%
% [Veja no PDF anexado, pg. 30]
%
% a) Usando o predicado estrada(Numero, Origem, Destino), crie um
% programa para representar essse mapa.
%
% b) Defina o predicado rota(A, B, R), que determina uma rota R (lista
% de estradas) que leva da cidade A ate a cidade B.
%
% facts
estrada(1, a, b).
estrada(2, a, d).
estrada(3, b, c).
estrada(4, c, d).
estrada(5, b, e).
estrada(6, c, f).
estrada(7, d, f).
estrada(8, e, f).

% rules
anexa([], L, L).
anexa([X|L1], L2, [X|L3]) :- anexa(L1, L2, L3).

rota(Origem, Destino, Rota) :- estrada(Numero, Origem, Destino), anexa([Numero], [], Rota).
rota(Origem, Destino, Rota) :- estrada(Numero1, Origem, Passagem), rota(Passagem, Destino, Rota1), anexa([Numero1],Rota1, Rota).
