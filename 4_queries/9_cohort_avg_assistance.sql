SELECT AVG(total_dutation)
FROM (SELECT SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_dutation
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
) AS total_time;