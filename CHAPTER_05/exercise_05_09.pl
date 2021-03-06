% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 05
% Exercicio: 5.9
% Enunciado:
% Um retangulo e representado pela estrutura retangulo(A, B, C, D), cujo
% vertices sao A, B, C e D, nesta ordem.
%
% a) Defina o predicado regular(R) que resulta em yes apenas se R for um
% retangulo cujos lados sejam verticais e horizontais.
%
% b) Defina o predicado quadrado(R) que resulta em yes apenas se R for
% um retangulo cujos lados tem as mesmas medidas.
%
% facts
ponto(3,5).
linha(ponto(7,9), ponto(13,2)).
triangulo(ponto(3,5), ponto(7,9), ponto(13,2)).
retangulo(ponto(3,5), ponto(3,6), ponto(4, 5), ponto(4,6)).

vertical(linha(ponto(X,_), ponto(X,_))).
horizontal(linha(ponto(_,Y), ponto(_,Y))).

regular(retangulo(A,B,C,D)) :- vertical(linha(A,B)), vertical(linha(C,D)), horizontal(linha(B,C)), horizontal(linha(A,D)),!.
regular(retangulo(A,B,C,D)) :- vertical(linha(B,C)), vertical(linha(A,D)), horizontal(linha(A,B)), horizontal(linha(C,D)).

distancia(ponto(X1,Y1), ponto(X2,Y2), Distancia) :- Distancia is sqrt((X2-X1)^2 + (Y2-Y1)^2).

quadrado(retangulo(A,B,C,D)) :- distancia(A,B, Distancia1), distancia(B,C, Distancia2), distancia(C,D, Distancia3), distancia(A,D, Distancia4), Distancia1 =:= Distancia2, Distancia2 =:= Distancia3, Distancia3 =:= Distancia4.
