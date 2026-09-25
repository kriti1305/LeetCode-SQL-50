SELECT s.student_id,
	   s.student_name,
	   u.subject_name,
	   COUNT(x.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subjects u
LEFT JOIN Examinations x
ON s.student_id = x.student_id
AND u.subject_name = x.subject_name
GROUP BY s.student_id, s.student_name, u.subject_name
ORDER BY s.student_id, s.student_name, u.subject_name;
