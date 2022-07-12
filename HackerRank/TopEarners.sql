SELECT months * salary, #1
       COUNT(*)
FROM Employee
WHERE months * salary = (SELECT MAX(months*salary)
                        FROM Employee)
GROUP BY 1
