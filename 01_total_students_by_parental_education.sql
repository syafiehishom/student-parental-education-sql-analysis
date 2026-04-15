-- Total students by parental education
SELECT ParentalEducation, COUNT(*) AS total_students
FROM student_performance_data
GROUP BY ParentalEducation
ORDER BY ParentalEducation;