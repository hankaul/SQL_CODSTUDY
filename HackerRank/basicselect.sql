#Revising the Select Query I
SELECT *
FROM CITY  
WHERE POPULATION >= 100000 AND CountryCode  = 'USA';

#Revising the Select Query II
SELECT Name
FROM CITY  
WHERE POPULATION >= 120000 AND CountryCode  = 'USA';

#Select ALL
SELECT *
FROM CITY;

#Select By ID
SELECT *
FROM CITY 
WHERE ID = 1661


#Japanese Cities' Attributes
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN'

#Japanese Cities' Names
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN'


#Japanese Cities' Names
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN'
