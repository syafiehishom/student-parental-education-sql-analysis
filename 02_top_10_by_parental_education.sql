-- SAYA TAMBAH IDEA SENDIRI UNTUK JADIKAN TABLE HANYA TUNJUK TOP 10 SAHAJA
SELECT *
FROM (
SELECT
	StudentID,
	ParentalEducation,
	GPA,
	RANK() OVER(
		PARTITION BY ParentalEducation
		ORDER BY GPA DESC
	) AS rank_within_group
FROM student_performance_data
) RANKED
WHERE rank_within_group <= 10
ORDER BY ParentalEducation, rank_within_group;
