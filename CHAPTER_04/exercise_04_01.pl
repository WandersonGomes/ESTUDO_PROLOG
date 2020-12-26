% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 04
% Exercicio: 4.1
% Enunciado:
% Defina um predicado recursivo para calcular o produto de dois numeros
% naturais usando apenas soma e subtracao.
%
% facts
produto(0, _, 0) :- !.
produto(_, 0, 0) :- !.

% rules
produto(X, Y, Produto) :- Y > 0, Z is Y - 1, produto(X, Z, Produto2), Produto is (X + Produto2).

% queries
% produto(0, 1, Produto).
% produto(1, 0, Produto).
% produto(10, 10, Produto).
