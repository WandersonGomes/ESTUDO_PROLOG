% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 02
% Exercicio: 2.3
% Enunciado:
% Inclua no Programa 2.3 as seguintes regras:
%
% a) Um filme e longo se tem duracao superior a 150 minutos.
% b) Um filme e lancamento se foi lancado a menos de 1 ano.
%
% facts
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor purpura', drama, 1985, 152).
filme('Copacabana', comedia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

% rules
filmeLongo(Filme) :- filme(Filme, _, _, Duracao), Duracao > 150.

filmeLancamento(Filme, AnoAtual) :- filme(Filme, _, AnoLancamento, _), (AnoAtual - AnoLancamento) =< 1.

% queries
%
% item a:
%        filmeLongo(Filme).
%
% item b:
%        filmeLancamento(Filme, AnoAtual).
