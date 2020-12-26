% program 1.1 - Uma arvore genealogica
% facts
pai(adao,cain).
pai(adao,abel).
pai(adao,seth).
pai(seth,enos).

% rules
avo(X,Y) :- pai(X,Z), pai(Z,Y).

irmao(X,Y) :- pai(Z,X), pai(Z,Y), X \= Y.

% queries
% pai(adao,cain).
% pai(adao,enos).
% pai(X,abel).
% pai(adao,X).
% pai(Y,enos), pai(X,Y).
% pai(X,_).
%
% avo(X,enos).
