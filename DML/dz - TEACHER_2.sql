USE PV_319_DDL;
GO 

SELECT
			last_name+ ' '+first_name+' ' +middle_name			AS N'Ф.И.О. преподавателя',
			COUNT(discipline_id)								AS N'Количество дисциплин'
FROM		Disciplines,Teachers,TeachersDisciplinesRelation
WHERE		discipline = discipline_id
GROUP BY	N'Ф.И.О. преподавателя'
;
