USE PV_319_DDL;
GO

SELECT
			discipline_name			AS N'����������',
			COUNT(teacher_id)		AS N'���������� ��������������'
FROM		Disciplines,Teachers,TeachersDisciplinesRelation
WHERE		teacher = teacher_id
GROUP BY	discipline_name
;

