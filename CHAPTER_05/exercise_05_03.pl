% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 05
% Exercicio: 5.3
% Enunciado:
% Defina o predicado soma(L, S) que calcula a soma S dos itens da lista
% L. Por exemplo, soma([4, 9, 1], S) resulta em S = 14.
%
% facts
soma([], 0).
soma([X|Fim], Soma) :- soma(Fim, Soma1), Soma is Soma1 + X.
