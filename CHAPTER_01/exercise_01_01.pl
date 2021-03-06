% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 01
% Exercicio: 1.1
% Enunciado:
% Digite o Programa 1.1, incluindo as regras que definem as relacoes
% avo e irmao, e realize as seguintes consultas:
% a) Quem sao os filhos de Adao?
% b) Quem sao os netos de Adao?
% c) Quem sao os tios de Enos?
%
% facts
pai(adao, cain).
pai(adao, abel).
pai(adao, seth).
pai(adao, eloi).
pai(seth, enos).

% rules
avo(Avo, Neto) :- pai(Avo, Pai), pai(Pai, Neto).

filho(Filho, Pai) :- pai(Pai, Filho).

neto(Neto, Avo) :- avo(Avo, Neto).

irmao(Filho1, Filho2) :- pai(Pai, Filho1), !, pai(Pai, Filho2), Filho1 \= Filho2.

tio(Tio, Sobrinho) :- pai(Pai, Sobrinho), irmao(Pai, Tio).

% queries
% filho(Filho, adao).
% neto(Neto, adao).
% tio(Tio, enos).
