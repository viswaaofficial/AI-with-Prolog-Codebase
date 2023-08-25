# % refers to single line comments in prolog

% Define the graph using facts
edge(a, c).
edge(a, b).
edge(c, d).
edge(b, e).
edge(e, g).


% BFS traversal using a queue
bfs(Start) :-
    bfs([Start], []).

bfs([], _).
bfs([Node | QueueRest], Visited) :-
    % Check if the node has not been visited
    \+ member(Node, Visited),
    write(Node), write(' '), % Print the current node
    append(QueueRest, Neighbors, NewQueue), % Add neighbors to the queue
    findall(Neighbor, (edge(Node, Neighbor), \+ member(Neighbor, [Node | QueueRest])), Neighbors),
    bfs(NewQueue, [Node | Visited]).

% Start the BFS traversal from a specific node
start_bfs :- bfs(a).
