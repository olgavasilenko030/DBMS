USE PV_319_DDL;
GO

SELECT
			
			COUNT(time)*COUNT(lesson_id)	AS N'Количество часов'
FROM		Schedule;