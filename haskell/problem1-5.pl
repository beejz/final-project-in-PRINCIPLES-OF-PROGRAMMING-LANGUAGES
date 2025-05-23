Problem #1
:- initialization(main).

main :-
    read_numbers(List),
    nth1(7, List, M),
    A is M * 2.75,
    format('The multiplier is ~d! Lulu’s allowance for the week is $ ~2f!', [M, A]),
    halt.

read_numbers(List) :-
    read_line_to_codes(user_input, Codes),
    atom_codes(A, Codes),
    atomic_list_concat(Atoms, ' ', A),
    maplist(atom_number, Atoms, List).
Problem #2
:- initialization(main).

main :-
    read_line_to_codes(user_input, CN),
    number_codes(N, CN),
    process(N),
    halt.

process(0).
process(N) :-
    read_line_to_codes(user_input, Codes),
    atom_codes(A, Codes),
    atomic_list_concat([_TAtom, SAtom], ' ', A),
    atom_chars(SAtom, Chars),
    include(is_upper, Chars, Uppers),
    length(Uppers, Count),
    writeln(Count),
    N1 is N - 1,
    process(N1).

is_upper(C) :- char_type(C, upper).
Problem #3
:- initialization(main).

main :-
    read_line_to_codes(user_input, Codes),
    atom_codes(Atom, Codes),
    atomic_list_concat(Atoms, ' ', Atom),
    maplist(atom_number, Atoms, [A,B,C]),
    Avg is (A + B + C) / 3,
    format('~2f', [Avg]),
    halt.
Problem #4
:- initialization(main).

main :-
    read_line_to_codes(user_input, Codes),
    atom_codes(Atom, Codes),
    atomic_list_concat(Words, ' ', Atom),
    maplist(atom_number, Words, List),
    msort(List, Sorted),
    print_list(Sorted), nl,
    print_list(List),
    halt.

print_list([X])    :- write(X).
print_list([X|Xs]) :- write(X), write(' '), print_list(Xs).
Problem #5
:- initialization(main).

main :-
    read_input_lines.

read_input_lines :-
    read_line_to_codes(user_input, Codes),
    ( Codes == end_of_file -> true
    ; process(Codes), nl, read_input_lines
    ).

process(Codes) :-
    atom_codes(A, Codes),
    atomic_list_concat(Atoms, ' ', A),
    Atoms = [NAtom|NumAtoms],
    atom_number(NAtom, N),
    maplist(atom_number, NumAtoms, AllNums),
    length(Prefix, N), append(Prefix, _, AllNums),
    reverse(Prefix, Rev),
    include(even, Rev, Evens),
    print_list(Evens).

even(X) :- 0 is X mod 2.

print_list([]).
print_list([X])    :- write(X).
print_list([X|Xs]) :- write(X), write(' '), print_list(Xs).//