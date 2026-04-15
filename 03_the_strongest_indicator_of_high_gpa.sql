-- The strongest indicator of high-GPA students
SELECT
CASE
	WHEN GPA >= 3.0 THEN "High GPA"
		WHEN GPA >= 2.0 THEN "Medium GPA"
		ELSE "Low GPA"
END AS Performance_Group,
AVG(StudyTimeWeekly) AS "Avg Study Time",
AVG(Absences) AS "Avg Absences",
AVG(Tutoring) AS "Avg Tutoring",
AVG(ParentalSupport) AS "Avg Support"
FROM student_performance_data
GROUP BY Performance_Group;