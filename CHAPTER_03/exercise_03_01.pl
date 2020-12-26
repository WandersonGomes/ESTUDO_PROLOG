% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 03
% Exercicio: 3.1
% Enunciado:
% O programa a seguir associa a cada pessoa seu esporte preferido.
%
% joga(ana, volei).
% joga(bia, tenis).
% joga(ivo, basquete).
% joga(eva, volei).
% joga(leo, tenis).
%
% Suponha que desejamos consultar esse programa para encontrar um
% parceiro P para jogar com Leo. Entao, podemos realizar essa consulta
% de duas formas:
%
% a) ?- joga(P, X), joga(leo, X), P \= leo.
% b) ?- joga(leo, X), joga(P, X), P \= leo.
%
% Desenhe as arvores de busca construidas pelo sistema ao responder cada
% uma dessas consultas. Qual consulta e mais eficiente, por que?
%
% facts
joga(ana, volei).
joga(bia, tenis).
joga(ivo, basquete).
joga(eva, volei).
joga(leo, tenis).

% rules

% queries
% joga(P, X), joga(leo, X), P \= leo.
% joga(leo, X), joga(P, X), P \= leo.
