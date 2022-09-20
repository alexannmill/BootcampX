SELECT day, count(assignments.id)
FROM assignments
GROUP BY assignments.day
HAVING count(assignments.id) >= 10 
ORDER BY assignments.day;