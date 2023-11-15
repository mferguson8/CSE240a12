random_between(1, 10, _RandomNumber).

get_user_input :-
    write('Enter a value: '),
    read(UserInput),
    check_value(UserInput).

check_value(X) :-
    (X > _RandomNumber ->
        write('Higher');
        write('Lower')
    ).
