% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 05
% Exercicio: 5.5
% Enunciado:
% Usando o predicado anexa, defina o predicado inv(L, R) que inverte a
% lista L. Por exemplo inv([b, c, a], R) resulta em R = [a, c, b].
%
% facts
anexa([], B, B).
anexa([X|A], B, [X|C]) :- anexa(A, B, C).

inv([X], [X]).
inv([X|Fim], Reversa) :- inv(Fim, Reversa1), anexa(Reversa1, [X], Reversa).
