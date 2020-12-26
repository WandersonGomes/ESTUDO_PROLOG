% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 05
% Exercicio: 5.4
% Enunciado:
% Defina o predicado max(L, M) que determina o item maximo M da L. Por
% exemplo, max([4, 9, 1], M) resulta em M = 9.
%
% facts
maior(X, Y, Resultado) :- X >= Y, Resultado is X.
maior(X, Y, Resultado) :- Y > X, Resultado is Y.

max([X], X).
max([X|Fim], Maximo) :- max(Fim, Maximo1), maior(X, Maximo1, Maximo).
