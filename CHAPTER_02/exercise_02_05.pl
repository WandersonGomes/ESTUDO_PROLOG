% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 02
% Exercicio: 2.5
% Enunciado:
% O peso ideal para uma modelo e no maximo 62.1 * Altura - 44.7. Alem
% disso, para ser modelo, uma mulher precisa ter mais que 1.70 m de
% altura e menos de 25 anos de idade. Com base nessas informacoes e
% considerando a tabela do exercicio anterior, defina um predicado
% capaz de recuperar apenas os nomes das mulheres que podem ser
% modelos.
% facts
pessoa(ana, feminino, 23, 1.55, 56.0).
pessoa(bia, feminino, 19, 1.71, 61.3).
pessoa(ivo, masculino, 22, 1.80, 70.5).
pessoa(lia, feminino, 17, 1.85, 57.3).
pessoa(eva, feminino, 28, 1.75, 68.7).
pessoa(ary, masculino, 25, 1.72, 68.9).

% rules
modeloMulher(Pessoa) :- pessoa(Pessoa, feminino, Idade, Altura, Peso), Altura > 1.70, Idade < 25, Peso =< (62.1*Altura-44.7).

% queries
%
% consult: modeloMulher(Pessoa).
