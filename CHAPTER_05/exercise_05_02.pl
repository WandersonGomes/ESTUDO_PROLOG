% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 05
% Exercicio: 5.2
% Enunciado:
% Defina o predicado tam(L, N), que determina o numero de itens N
% existente nuam lista L. Por exemplo, tam([a, b, c], N), resulta em N =
% 3.
%
% facts
tam([], 0).
tam([_|Fim], Tamanho) :- tam(Fim, Tamanho1), Tamanho is Tamanho1 + 1.
