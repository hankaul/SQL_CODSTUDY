WITH cnt_table AS(
    SELECT hacker_id, COUNT(challenge_id) AS cnt 
    FROM Challenges
    GROUP BY hacker_id
    ORDER BY cnt DESC , hacker_id
    ), -- 1번 : 각 학생들의 결과물을 카운트, 여기서 미리 정렬을 해둔다.
    max_cnt_table AS (
        SELECT MAX(cnt) AS max_cnt
        FROM cnt_table
        ), -- 2번 : 제출 회수의 최대값을 갖는 쿼리
    cnt_cnt_table AS (
        SELECT cnt,COUNT(cnt) AS cnt_cnt
        FROM cnt_table
        WHERE cnt < (
                     SELECT max_cnt
                     FROM max_cnt_table
                     ) -- 최대 제출 회수 제외
        GROUP BY cnt
        HAVING COUNT(cnt)>1 -- 중복되지 않은 제출 회수 제외
         )  -- 3. 최대 제출 횟수는 아니면서 중복된 제출 횟수를 가지는 집합     
SELECT hacker_id, B.name, A.cnt
FROM cnt_table A
JOIN Hackers B
USING (hacker_id)
WHERE A.cnt NOT IN (
                    SELECT C.cnt
                    FROM cnt_cnt_table C
                    ); -- 4. 3번 쿼리 결과에 없는 제출 횟수만을 출력