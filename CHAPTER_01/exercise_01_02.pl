% Autor: Wanderson Gomes da Costa
% Disciplina: Logica para Computacao
% Professor: David de Miranda Rodrigues
% Tarefa: Atividade Avaliativa Sobre Prolog
% Capitulo: 01
% Exercicio: 1.2
% Enunciado:
% Considere a arvore genealogica a seguir:
%  Ana + Ivo      Bia + Gil
%       \         /  |   \
%        \       /   |    \
%       Eva + Rai   Clo    Ary + Lia
%           |                  |
%           |                  |
%          Noe                Gal
%
%
% a) Usando fatos, defina as relacoes pai e mae. Em seguida, consulte o
%   sistema para ver se suas definicoes estao corretas.
% b) Acrescente ao programa os fatos necessarios para definir as relacoes
%   homem e mulher. Por exemplo, para estabelecer que Ana e mulher e Ivo e
%   homem, acrescente os fatos mulher(ana) e homem(ivo).
% c) Usando duas regras, defina a relacao gerou(X,Y) tal que X gerou Y se
%    se X e pai ou mae de Y. Faca consultas para verificar se sua definicao
%    esta correta. Por exemplo, para a consulta gerou(X, eva) o sistema devera
%    apresentar as respostas X = ana e X = ivo.
% d) Usando relacoes ja existentes, crie regras para definir as relacoes filho,
%    filha, tio, tia, primo, prima, avo e avo. Para cada relacao, desenhe o grafo
%    de relacionamentos, codifique a regra correspondente e faca consultas para
%    verificar a corretude.
%
% facts
mae(ana, eva).
mae(bia, rai).
mae(bia, clo).
mae(bia, ary).
mae(eva, noe).
mae(lia, gal).

pai(ivo, eva).
pai(gil, rai).
pai(gil, clo).
pai(gil, ary).
pai(rai, noe).
pai(ary,gal).

homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).

mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).

%rules
gerou(Genitor, Filho) :- pai(Genitor, Filho); mae(Genitor, Filho).

filho(Filho, Genitor) :- gerou(Genitor, Filho), homem(Filho).

filha(Filha, Genitor) :- gerou(Genitor, Filha), mulher(Filha).

irmao(Filho1, Filho2) :- gerou(Genitor, Filho1), gerou(Genitor, Filho2), Filho1 \= Filho2.

tio(Tio, Pessoa) :- gerou(Genitor, Pessoa), irmao(Genitor, Tio), homem(Tio).

tia(Tia, Pessoa) :- gerou(Genitor, Pessoa), irmao(Genitor, Tia), mulher(Tia).

primo(Primo, Pessoa) :- gerou(Genitor1, Primo), gerou(Genitor2, Pessoa), irmao(Genitor1, Genitor2), homem(Primo).

prima(Prima, Pessoa) :- gerou(Genitor1, Prima), gerou(Genitor2, Pessoa), irmao(Genitor1, Genitor2), mulher(Prima).

avoo(Avo, Neto) :- pai(Avo, Genitor), gerou(Genitor, Neto).

avoa(Avo, Neto) :- mae(Avo, Genitor), gerou(Genitor, Neto).

% queries
% item a:
%        pai(Pai).
%        mae(Mae).
% item b:
%        mulher(Mulher).
%        homem(Homem).
% item c:
%        gerou(Genitor, Filho).
%        gerou(X, eva).
% item d:
%        filho(Filho, Genitor).
%        filha(Filha, Genitor).
%        tio(Tio, Sobrinho).
%        tia(Tia, Sobrinho).
%        primo(Primo, Pessoa).
%        prima(Prima, Pessoa).
%        avoo(Avo, Neto).
%        avoa(Avo, Neto).














