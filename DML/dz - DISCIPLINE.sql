USE PV_319_DDL;
GO

SELECT
			direction_name			AS N'����������� ��������',
			COUNT(discipline_id)		AS N'���������� ���������'
FROM		Directions,DisciplinesDirectionsRelation, Disciplines
WHERE		discipline = discipline_id
GROUP BY	direction_name
;