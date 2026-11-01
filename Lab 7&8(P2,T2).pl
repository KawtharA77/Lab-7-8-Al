% Base case: Adding X to an empty list gives [X]
add_at_the_end(X, [], [X]).

% Recursive case: Keep the head Head, and process the tail Tail
add_at_the_end(X, [Head|Tail], [Head|ResultTail]) :-
    add_at_the_end(X, Tail, ResultTail).
