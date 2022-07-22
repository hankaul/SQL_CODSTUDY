-- a : min lat_n
-- b : min long_W
-- c : max lat_n
-- d : max long_w 
-- manhatten : c-a + d-b

SELECT ROUND(MAX(LAT_N) - MIN(LAT_N) + MAX(LONG_W) - MIN(LONG_W),4)
FROM STATION