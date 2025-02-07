USE PV_319_DDL;
GO

SELECT
			direction_name		AS N'Направление обучения',
			COUNT(teacher_id)		AS N'Количество преподавателей'
FROM		Directions,Teachers,TeachersDisciplinesRelation,DisciplinesDirectionsRelation
WHERE		teacher = teacher_id
GROUP BY	direction_name
;
