WITH name_rank_table AS(
    SELECT *, RANK()OVER(PARTITION BY occupation ORDER BY Name)AS name_rank
    FROM OCCUPATIONS 
    ),
    Doctor_table AS(
        SELECT Name , name_rank
        FROM name_rank_table
        WHERE occupation = 'Doctor'
        ), #3
    Professor_table AS(
        SELECT Name, name_rank
        FROM name_rank_table
        WHERE occupation = 'Professor'
        ),#3
    Singer_table AS(
        SELECT Name, name_rank
        FROM name_rank_table
        WHERE occupation = 'Singer'
        ),#4
    Actor_table AS( 
        SELECT Name, name_rank
        FROM name_rank_table
        WHERE occupation = 'Actor'
        )#4
SELECT D.Name, P.Name, S.Name, A.Name
FROM Doctor_table D
RIGHT JOIN Professor_table P 
USING (name_rank)
LEFT JOIN Singer_table S
USING (name_rank)
LEFT JOIN Actor_table A
USING (name_rank)