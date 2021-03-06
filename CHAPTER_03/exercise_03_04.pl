% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 03
% Exercicio: 3.4
% Enunciado:
% Considere o programa a seguir:
%
% animal(cao).
% animal(canario).
% animal(cobra).
% animal(morcego).
% animal(gaivota).
%
% voa(canario).
% voa(morcego).
% voa(gaivota).
%
% dif(X,X) :- !, fail.
% dif(_,_).
%
% passaro(X) :- animal(X), voa(X), dif(X, morcego).
%
% Desenhe a arvore de busca necessaria para responder a consulta
% ?- passaro(X).
%
% Em seguida, execute o programa para ver se as respostas do sistema
% correspondem aquelas que voce encontrou.
%
% facts
animal(cao).
animal(canario).
animal(cobra).
animal(morcego).
animal(gaivota).

voa(canario).
voa(morcego).
voa(gaivota).

% rules
dif(X,X) :- !, fail.
dif(_,_).

passaro(X) :- animal(X), voa(X), dif(X, morcego).

% queries
% passaro(X).
