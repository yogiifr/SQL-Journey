-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true

SELECT N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST
ORDER BY N;

/*
1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf
*/