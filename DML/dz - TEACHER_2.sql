USE PV_319_DDL;
GO 

SELECT
			last_name+ ' '+first_name+' ' +middle_name			AS N'�.�.�. �������������',
			COUNT(discipline_id)								AS N'���������� ���������'
FROM		Disciplines,Teachers,TeachersDisciplinesRelation
WHERE		discipline = discipline_id
GROUP BY	N'�.�.�. �������������'
;
