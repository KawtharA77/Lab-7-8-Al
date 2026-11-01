% Basket with 5 items
main :-
    Basket = [coffee, milk, chocolate, apple, juice],
    menu(Basket).

% Menu rule
menu(Basket) :-
    nl, write('*** SHOPPING LIST ***'), nl,
    write('d. Display all items'), nl,
    write('a. Add an item to the list'), nl,
    write('e. exit'), nl, nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice, Basket).

% Choice 'd': Display all items using recursion
action(d, Basket) :-
    nl, write('--- Current Item ---'), nl,
    display_items(Basket),
    menu(Basket).

% Choice 'a': Add a new item to the list
action(a, Basket) :-
    nl, write('Enter the item you want to add it: '),
    read(Item),
    NewBasket = [Item | Basket],
    write('The item has been added'), nl,
    menu(NewBasket).

% Choice 'e': Exit program
action(e, _) :-
    nl, write('Good bye!'), nl.

% Catch invalid options
action(_, Basket) :-
    nl, write('Invalid Option!, Please try again'), nl,
    menu(Basket).

% Helper predicate: Display items recursively
display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).
