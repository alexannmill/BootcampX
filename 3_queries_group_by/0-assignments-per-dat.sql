SELECT day, count(*)
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;