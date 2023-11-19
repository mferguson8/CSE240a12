:- use_module(library(random)).

% Generate a random number between 1 and 10
generate_random_number(Number) :-
    random(1, 10, Number).

% play the guessing game
guess :-
    write('Try to guess a number between 1 and 10.'), nl,
    generate_random_number(Target),
    play_guessing_game(Target).

% Helper to handle the guessing logic
play_guessing_game(Target) :-
    write('|: '),
    read(Guess),
    check_guess(Guess, Target).

% Check if the guess is correct, higher, or lower
check_guess(Guess, Target) :-
    Guess =:= Target,
    write('Correct!'), nl, !.

check_guess(Guess, Target) :-
    Guess < Target,
    write('Higher. '), play_guessing_game(Target).

check_guess(Guess, Target) :-
    Guess > Target,
    write('Lower. '), play_guessing_game(Target).
