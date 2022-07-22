SELECT A.Name
FROM CITY A 
JOIN (
      SELECT *
      FROM COUNTRY
      WHERE CONTINENT = 'Africa'
      ) B
ON A.CountryCode  = B.Code