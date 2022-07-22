SELECT SUM(A.POPULATION)
FROM CITY A 
JOIN (
      SELECT *
      FROM COUNTRY
      WHERE CONTINENT = 'Asia'
      ) B
ON A.CountryCode  = B.Code 
