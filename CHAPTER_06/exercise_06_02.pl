% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 06
% Exercicio: 6.2
% Enunciado:
% Implemente os predicados liga, desliga e lampada para que eles
% funcionem conforme indicado pelos exemplos a seguir:
%
% ?- liga, lampada(X).
% X = acessa
% Yes
%
% ?- desliga, lampada(X).
% X = apagada
% Yes
%
% facts
lampada(apagada).
liga :- retract(lampada(apagada)), asserta(lampada(acessa)).
desliga :- retract(lampada(acessa)), asserta(lampada(apagada)).
