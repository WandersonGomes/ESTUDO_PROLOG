% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 04
% Exercicio: 4.3
% Enunciado:
% O grafo a seguir representa um mapa, cujas cidades sao representadas
% por letras e cujas estradas(de sentido unico) sao representados por
% numeros, que indicam sua extensao em km.
%
%  [Veja no PDF anexo].
%
%  a) Usando o predicado estrada(Origem, Destino, Km), crie um programa
%  para representar esse mapa.
%
%  b) Defina a relacao transitiva dist(A, B, D), que determina a
%  distancia D entre duas cidades A e B.
%
% facts
estrada(a, b, 25).
estrada(b, e, 32).
estrada(e, f, 26).
estrada(d, f, 30).
estrada(a, d, 23).
estrada(b, c, 19).
estrada(c, f, 28).
estrada(c, d, 14).

% rules
distancia(Origem, Destino, Distancia) :- estrada(Origem, Destino, Distancia).
distancia(Origem, Destino, Distancia) :- estrada(Origem, Cidade1, Distancia1), distancia(Cidade1, Destino, Distancia2), Distancia is (Distancia1 + Distancia2).

% queries

