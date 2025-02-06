﻿USE PV_319_DDL;
GO

SELECT
		--last_name	AS N'Фамилия',
		--first_name	AS N'Имя',
		--middle_name AS N'Очество',
		last_name +' '+first_name +' '+middle_name AS N'Ф.И.О. студента',
		birth_date		AS N'Дата рождения',
		[group_name]	AS N'Группа',
		direction_name  AS N'Направление обучения'

FROM Students,Groups,Directions
WHERE [group]=group_id --УСЛОВИЕ ОТБОРА
AND		direction = direction_id
ORDER BY N'Дата рождения' DESC --Descending (в порядке убывания), ASC - Ascending (в порядке возрастания)
;