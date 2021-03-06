% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 03
% Exercicio: 3.2
% Enunciado:
% O predicado num classifica numeros em tres categorias: positivos, nulo
% e negativos. Esse predicado, da maneira como esta definido,
% realiza retrocesso desnecessario. Explique por que isso acontece
% e, em seguida, utilize cortes para eliminar esse retrocesso.
%
% num(N, positivo) :- N > 0.
% num(0, nulo).
% num(N, negativo) :- N < 0.
%
% facts
num(N, positivo) :- N > 0, !.
num(0, nulo).
num(N, negativo) :- N < 0.

% rules

% queries
% num(10, Resultado).
% num(0, Resultado).
% num(-10, Resultado).
