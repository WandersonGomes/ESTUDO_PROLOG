% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 05
% Exercicio: 5.7
% Enunciado:
% Usando a tabela d(0, zero), d(1, um), ..., d(9, nove), defina o
% predicado txt(D, P) que converte uma lista de digitos numa lista de
% palavras. Por exemplo, txt([7, 2, 1], P) resulta em P = [sete, dois,
% um].
%
% facts
d(0, zero).
d(1, um).
d(2, dois).
d(3, tres).
d(4, quatro).
d(5, cinco).
d(6, seis).
d(7, sete).
d(8, oito).
d(9, nove).

% rules
anexa([], B, B).
anexa([X|A], B, [X|C]) :- anexa(A, B, C).

txt([],[]).
txt([X|Y], Palavras) :- txt(Y, Palavras1), d(X, Nome), anexa([Nome], Palavras1, Palavras).
