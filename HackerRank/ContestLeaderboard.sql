--  total_score : sum of their maximum all challenges
--  desc score,  id asc,
-- totalscore 0 exclude
-- SELECT HACKER_ID ,NAME , total_score
-- 1.group by hacke_id, challenge_id, max(score) 2.hacker_id -> sum(max_score)

SELECT hacker_id, A.name , B.sum_score
FROM Hackers A
JOIN(
    SELECT hacker_id, SUM(max_score) AS sum_score
    FROM 
        (SELECT hacker_id, challenge_id, max(score) AS max_score
         FROM Submissions
         GROUP BY hacker_id, challenge_id) foo
    GROUP BY hacker_id
    )B
USING (hacker_id)
WHERE B.sum_score>0
ORDER BY B.sum_score DESC, hacker_id