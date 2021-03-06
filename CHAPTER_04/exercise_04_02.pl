% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 04
% Exercicio: 4.2
% Enunciado:
% Defina um predicado recursivo exibir um numero natural em binario.
%
% facts
binario(1) :- write(1), !.
binario(0) :- write(0), !.
binario(Numero) :- Numero \= 0, Numero \= 1, N1 is (Numero // 2), binario(N1), Digito is Numero mod 2, write(Digito).

% rules

% queries
% binario(0).
% binario(1).
% binario(10).
