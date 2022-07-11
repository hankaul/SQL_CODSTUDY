SELECT ANIMAL_ID , a.NAME
FROM ANIMAL_INS a
JOIN ANIMAL_OUTS b
USING (ANIMAL_ID)
ORDER BY DATEDIFF(b.DATETIME,a.DATETIME) DESC
LIMIT 2