SELECT NAME, SUM(COUNT)
FROM (
    SELECT NAME, COUNT(ANIMAL_ID) COUNT
    FROM ANIMAL_INS
    GROUP BY ANIMAL_ID,NAME)
WHERE NAME IS NOT NULL
GROUP BY NAME
HAVING SUM(COUNT)>1
ORDER BY NAME 