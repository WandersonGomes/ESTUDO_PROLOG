% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 06
% Exercicio: 6.1
% Enunciado:
% Supondo que a base de dados esteja inicialmente vazia, indique qual
% sera o seu conteudo apos terem sido executadas as seguintes consultas.
%
% ?- asserta(metal(ferro)).
% ?- assertz(metal(cobre)).
% ?- asserta(metal(ouro)).
% ?- assertz(metal(zinco)).
% ?- retract(metal(X)).
%
% facts

% output
% ?- listing(metal).
% :- dynamic metal/1.
%
% metal(ouro).
% metal(ferro).
% metal(cobre).
% metal(zinco).
%
% true.
%
% ?- retract(metal(X)).
% X = ouro ;
% X = ferro ;
% X = cobre ;
% X = zinco.
%
% ?- listing(metal).
% :- dynamic metal/1.
%
% true.
%
% ?- _
