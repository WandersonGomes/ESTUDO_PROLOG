% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 05
% Exercicio: 5.6
% Enunciado:
% Usando o predicado inv, defina o predicado sim(L), que verifica se uma
% lista e simetrica. Por exemplo, sim([a,r,a,r,a]) resulta em yes.
%
% facts
anexa([], B, B).
anexa([X|A], B, [X|C]) :- anexa(A, B, C).

inv([X], [X]).
inv([X|Fim], Reversa) :- inv(Fim, Reversa1), anexa(Reversa1, [X], Reversa).

sim(Lista) :- inv(Lista, Reversa), Reversa = Lista.
