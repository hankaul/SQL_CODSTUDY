-- age,code -> one-one
-- select id, age, coins_needed, power
-- minmun gal group by age,power
-- order by power, age [desc,desc]

-- {1} : join , group by age,power min gal 
-- {2} : join id, order 

SELECT D.id, C.age, C.min_coins, C.power
FROM(
    SELECT Code,B.age, A.power, MIN(A.coins_needed) AS min_coins
    FROM Wands A
    JOIN Wands_Property B
    USING (Code)
    WHERE B.is_evil = 0
    GROUP BY  Code, B.age, A.power
    ) C
JOIN Wands D
ON (C.power = D.power) AND (C.min_coins = D.coins_needed)
    AND (C.Code = D.Code)
ORDER BY C.power DESC,  C.age DESC

