% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 06
% Exercicio: 6.3
% Enunciado:
% O predicado asserta adiciona um fato a base de dados,
% incondicionalmente, mesmo que ele ja esteja la. Para impedir essa
% redundancia, defina o predicado memorize, tal que seja semelhante a
% asserta, mas so adicione a base de dados fatos ineditos.
%
% facts
memorize(X) :- not(X), assert(X).
