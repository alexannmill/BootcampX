SELECT students.name , AVG(assignment_submissions.duration) AS avg_assignment_time
FROM students JOIN assignment_submissions
ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY avg_assignment_time DESC;