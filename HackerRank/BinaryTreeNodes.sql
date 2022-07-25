SELECT CASE WHEN P IS NULL THEN CONCAT(N,' Root') #1.
            WHEN N NOT IN (SELECT P 
                           FROM BST 
                           WHERE P IS NOT NULL) THEN CONCAT(N,' Leaf') #2.
            ELSE CONCAT(N,' Inner') END #3.
FROM BST
ORDER BY N