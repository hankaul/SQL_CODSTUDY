SELECT hakcer_Id, H.name
FROM Hackers H
JOIN Submissions S  #1.
    USING (hacker_id) --hacker_id로 조인

JOIN (SELECT challenge_id,difficulty_level  #2.
      FROM Challenges) C  --여기서 hacker_id는 제작자이지 제출자가 아님
    USING (challenge_id) --챌린지로 조인

JOIN Difficulty D #3.
    USING (difficulty_level,score)


GROUP BY hacker_id, H.name --hacker_id와 name은 동치이다.
HAVING COUNT(*)>1 -- 제출횟수가 2 이상일 때 조건
ORDER BY COUNT(*) DESC, hacker_id ASC --제출 횟수 내림차순, id 오름차순