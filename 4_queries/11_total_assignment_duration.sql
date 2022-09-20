SELECT assignments.day, COUNT(assignments.id) AS num_of_assignments,
SUM(assignments.duration) AS duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;