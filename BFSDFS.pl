% Graph edges
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).
edge(d, h).
edge(e, h).
edge(f, h).
edge(g, h).

dfs(Start, Goal, Path) :-
    dfs_helper(Start, Goal, [Start], Path).

dfs_helper(Goal, Goal, Visited, Path) :-
    reverse(Visited, Path).  

dfs_helper(Current, Goal, Visited, Path) :-
    edge(Current, Next),       
    \+ member(Next, Visited),  
    dfs_helper(Next, Goal, [Next|Visited], Path).  

bfs(Start, Goal, Path) :-
    bfs_helper([[Start]], Goal, Path).

bfs_helper([[Goal|RestPath] | _], Goal, Path) :-
    reverse([Goal|RestPath], Path).  

bfs_helper([[Current|RestPath] | OtherPaths], Goal, Path) :-
    findall([Next, Current|RestPath],
            (edge(Current, Next), \+ member(Next, [Current|RestPath])),
            NewPaths),                    
    append(OtherPaths, NewPaths, UpdatedQueue),  
    bfs_helper(UpdatedQueue, Goal, Path).  


% OUTPUT : ?- dfs(a, h, Path).
%    ?- bfs(a, h, Path).
