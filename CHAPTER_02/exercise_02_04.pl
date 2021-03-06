% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 02
% Exercicio: 2.4
% Enunciado:
% Codifique um programa contendo as informacoes da tabela abaixo e faca
% as consultas indicadas a seguir:
% ---------------------------------------
% | Nome | Sexo | Idade | Altura | Peso |
% ---------------------------------------
% | Ana  | fem  | 23    | 1.55   | 56.0 |
% ---------------------------------------
% | Bia  | fem  | 19    | 1.71   | 61.3 |
% ---------------------------------------
% | Ivo  | masc | 22    | 1.80   | 70.5 |
% ---------------------------------------
% | Lia  | fem  | 17    | 1.85   | 57.3 |
% ---------------------------------------
% | Eva  | fem  | 28    | 1.75   | 68.7 |
% ---------------------------------------
% | Ary  | masc | 25    | 1.72   | 68.9 |
% ---------------------------------------
%
% a) Quais sao as mulheres com mais de 20 anos de idade?
% b) Quem tem pelo menos 1.70 m de altura e menos de 65 kg?
% c) Quais sao os possiveis casais onde o homem e mais alto que a
% mulher?
%
% facts
pessoa(ana, feminino, 23, 1.55, 56.0).
pessoa(bia, feminino, 19, 1.71, 61.3).
pessoa(ivo, masculino, 22, 1.80, 70.5).
pessoa(lia, feminino, 17, 1.85, 57.3).
pessoa(eva, feminino, 28, 1.75, 68.7).
pessoa(ary, masculino, 25, 1.72, 68.9).

% rules
mulheresAcima20Anos(Mulher) :- pessoa(Mulher, feminino, Idade, _, _), Idade > 20.
alturaMaiorIgual170PesoMenor65(Pessoa) :- pessoa(Pessoa, _, _, Altura, Peso), Altura >= 1.70, Peso < 65.

casaisPossiveisHomemMaiorMulher(Pessoa1, Pessoa2) :- ((pessoa(Pessoa1, masculino,_, AlturaHomem, _), pessoa(Pessoa2, feminino, _, AlturaMulher, _)) ; (pessoa(Pessoa2, masculino, _, AlturaHomem, _), pessoa(Pessoa1, feminino, _, AlturaMulher,_))), AlturaHomem > AlturaMulher.

% queries
%
% item a:
%       mulheresAcima20Anos(Mulher).
%
% item b:
%       alturaMaiorIgual170PesoMenor65(Pessoa).
%
% item c:
%       casaisPossiveisHomemMaiorMulher(Pessoa1, Pessoa2).
%
