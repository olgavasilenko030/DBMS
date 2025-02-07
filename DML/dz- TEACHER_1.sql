USE PV_319_DDL;
GO

SELECT
			discipline_name			AS N'Дисциплина',
			COUNT(teacher_id)		AS N'Количество преподавателей'
FROM		Disciplines,Teachers,TeachersDisciplinesRelation
WHERE		teacher = teacher_id
GROUP BY	discipline_name
;

