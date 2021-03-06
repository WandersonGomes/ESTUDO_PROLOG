% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 01
% Exercicio: 1.1
% Enunciado:
% Codifique as regras equivalentes as seguintes sentencas:
% a) Todo mundo que tem filhos e feliz.
% b) Um casal e formado por duas pessoas que tem filhos em comum.
%
% facts
pai(wanderson, sofia).
pai(sebastiao, wanderson).

mae(maria, sofia).
mae(sandra, wanderson).

% rules
feliz(Pessoa) :- pai(Pessoa,_); mae(Pessoa,_).

gerou(Genitor, Filho) :- pai(Genitor, Filho); mae(Genitor, Filho).

casal(Pessoa1, Pessoa2) :- gerou(Pessoa1, Filho), gerou(Pessoa2, Filho), Pessoa1 \= Pessoa2.

% queries
% item a:
%        feliz(Pessoa).
% item b:
%        casal(Pessoa1, Pessoa2).
