USE PV_319_DDL;
GO

SELECT
			direction_name			AS N'Направление обучения',
			COUNT(discipline_id)		AS N'Количество дисциплин'
FROM		Directions,DisciplinesDirectionsRelation, Disciplines
WHERE		discipline = discipline_id
GROUP BY	direction_name
;