% Base case: Deleting from an empty list gives an empty list
deleteElement(_, [], []).

% Case 1: If X is the head, skip X and recursively process the Tail
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).

% Case 2: If Head (Y) is not equal to X, keep Y and process the Tail
deleteElement(X, [Y|Tail], [Y|ResultTail]) :-
    X \= Y,
    deleteElement(X, Tail, ResultTail).
