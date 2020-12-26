% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 02
% Exercicio: 2.2
% Enunciado:
% Inclua no Programa 2.2 as informacoes da tabela abaixo e faca as
% consultas indicadas a seguir:
%
% --------------------------------------------
% | Codigo | Nome | Salario    | Dependentes |
% --------------------------------------------
% |   4    | Leo  | R$ 2500.35 | Lia, Noe    |
% --------------------------------------------
% |   5    | Clo  | R$ 1800.00 |    Eli      |
% --------------------------------------------
% |   6    | Gil  | R$ 1100.00 |  .........  |
% --------------------------------------------
%
% a) Quem tem salario entre R$ 1500.00 e R$ 3000.00?
% b) Quem nao tem dependentes e ganha menos de R$ 1200.00?
% c) Quem depende de funcionario que ganha mais de R$ 1700.00?
%
% facts
funcionario(1, ana, 1000.90).
funcionario(2, bia, 1200.00).
funcionario(3, ivo, 903.50).
funcionario(4, leo, 2500.35).
funcionario(5, clo, 1800.00).
funcionario(6, gil, 1100.00).

dependente(1, ary).
dependente(3, rai).
dependente(3, eva).
dependente(4, lia).
dependente(4, noe).
dependente(5, eli).

% rules
salarioEntre1500e3000(Funcionario) :- funcionario(_, Funcionario, Salario), Salario >= 1500, Salario =< 3000.

semDependentesSalarioMenor1200(Funcionario) :- funcionario(Codigo, Funcionario, Salario), Salario < 1200, not(dependente(Codigo,_)).

dependenteFuncionarioSalarioMaior1700(Dependente) :- funcionario(Codigo,_,Salario), Salario > 1700, dependente(Codigo, Dependente).

% queries
% item a:
%        salarioEntre1500e3000(Funcionario).
%
% item b:
%        semDependentesSalarioMenor1200(Funcionario).
%
% item c:
%        dependenteFuncionarioSalarioMaior1700(Dependente).

