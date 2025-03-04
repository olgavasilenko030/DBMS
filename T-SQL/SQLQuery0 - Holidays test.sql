USE PV_319_Import;
GO
--SELECT* FROM DaysOFF;

--EXEC sp_AddHolidays 2025, N'Майс%'
SELECT
		[Дата]		=	[date],
		[Праздник]			=	holiday_name
FROM DaysOFF,Holidays
WHERE holiday=holiday_id;