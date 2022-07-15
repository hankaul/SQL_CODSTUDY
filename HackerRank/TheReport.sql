# 8~10 등급 내림차순 ->  이름 오름차순,
# 1~7 이름 -> NULL , 등급 내림차순 -> MARK 오름차순

SELECT CASE WHEN B.Grade IN (8,9,10) THEN A.Name ELSE NULL END,
       B.Grade,  A.Marks
FROM Students A
JOIN Grades B
ON A.Marks BETWEEN B.Min_Mark  AND Max_Mark
ORDER BY B.Grade DESC, A.Name, A.Marks
