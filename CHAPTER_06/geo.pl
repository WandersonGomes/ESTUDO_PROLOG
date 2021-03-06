:- dynamic capital/2.
geo :- carrega('geo.bd'),
       format('~n*** Memoriza capitais *** ~n~n'),
       repeat,
         pergunta(E),
         responde(E),
         continua(R),
       R = 'n',
       !,
       salva(capital, 'geo.bd').

carrega(A) :-
    exists_file(A),
    consult(A)
    ;
    true.

pergunta(E) :-
    format('~nQual o estado cuja capital voce quer saber? '), nl,
    gets(E).

responde(E) :-
    capital(C, E),
    !,
    format('~nA capital do ~w e ~w.~n', [E,C]).

responde(E) :-
    format('~nTambem nao sei. Qual e a capital de ~w? ', [E]), nl,
    gets(C),
    asserta(capital(C,E)).

continua(R) :-
    format('~nContinua? [s/n] '), nl,
    get_char(R),
    get_char('\n').

gets(S) :-
    read_line_to_codes(user_input,C),
    name(S, C).

salva(P, A) :-
    tell(A),
    listing(P),
    told.


