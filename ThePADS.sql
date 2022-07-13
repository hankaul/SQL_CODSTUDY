WITH oc_group AS(
    SELECT CONCAT('There are a total of'," ",CONVERT(COUNT(*),CHAR)," ",LOWER(Occupation),'s.')
    FROM OCCUPATIONS 
    GROUP BY Occupation
    ORDER BY COUNT(Occupation), Occupation
    )
    
SELECT CONCAT(NAME,'(', SUBSTR(Occupation,1,1),')')
FROM (
      SELECT NAME, Occupation 
      FROM OCCUPATIONS
      ORDER BY NAME
      )foo
UNION ALL
SELECT *
FROM oc_group
