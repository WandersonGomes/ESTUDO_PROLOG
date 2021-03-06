% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 05
% Exercicio: 5.1
% Enunciado:
% Defina o predicado ultimo(L, U), que determina o ultimo item U numa
% lista L. Por exemplo, ultimo([a,b,c], U), result em U = c.
%
% facts
ultimo([Fim], Fim).
ultimo([_|Fim], Ultimo) :- ultimo(Fim, Ultimo).

% queries
% ultimo([a, b, c, d], Ultimo).
