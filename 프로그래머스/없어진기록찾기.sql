-- ins에는 없고 outs 에는 있는 동물 ID 찾기 -> 차집합
SELECT B.ANIMAL_ID, B.NAME
FROM ANIMAL_INS A 
RIGHT JOIN ANIMAL_OUTS B
USING (ANIMAL_ID)
WHERE A.ANIMAL_ID IS NULL