% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 03
% Exercicio: 3.3
% Enunciado:
% Suponha que o predicado fail nao existisse em Prolog. Qual das duas
% definicoes a seguir poderia ser corretamente usada para causar falhas?
%
% a) falha :- (1 = 1).
% b) falha :- (1 = 2).
%
% facts

% rules
% falha :- (1=1).
falha :- (1=2).

% queries
% falha.
