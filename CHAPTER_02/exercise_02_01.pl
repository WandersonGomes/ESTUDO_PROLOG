% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 02
% Exercicio: 2.1
% Enunciado:
% Inclua no Programa 2.1 uma regra para o predicado dens(P, D), que
% relaciona cada pais a sua densidade demografica correspondente D.
% Em seguida, faca consultas para descobrir:
%
% a) qual a densidade demografica de cada um dos paises.
% b) se a India e mais populosa que a China.
%
% facts
pais(brasil, 9, 130).
pais(china, 12, 1800).
pais(eua, 9, 230).
pais(india, 3, 450).

% rules
densidadeDemografica(Densidade, Pais) :- pais(Pais, Area, Populacao), Densidade is Populacao/Area.

maiorPopulacao(Pais1, Pais2) :- pais(Pais1, _, Populacao1), pais(Pais2, _, Populacao2), Populacao1 > Populacao2.

% queries
% item a:
%        densidadeDemografica(Densidade, Pais).
%
% item b:
%        maiorPopulacao(india, china).
