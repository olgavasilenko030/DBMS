USE PV_319_Import;
SET DATEFIRST 1;
GO

--PRINT (dbo.GetGroupID(N'PV_319'));
--PRINT(dbo.GetDisciplineID(N'Hardware%'));
----EXEC sp_PrintScheduleForGroup N'PV_319';
--PRINT(dbo.CountSpentLessons(N'PV_319', N'Процедурное программирование%'));
--PRINT (dbo.GetNewYearHolidaysStartDate(2024));
--PRINT(dbo.GetSummerHolidaysStart(2023));
--PRINT(dbo.GetHolidaysDuration(N'Летние%'));

--PRINT('--------------------------------------');

--DECLARE @holiday	AS NVARCHAR(150)	= N'Лет%';
--DECLARE @year		AS SMALLINT			=2025;
--PRINT (dbo.GetHolidaysStartDate(@holiday,@year));

--DECLARE		@month		AS TINYINT =(SELECT [month]FROM Holidays WHERE holiday_name LIKE @holiday);
--		DECLARE		@day		AS TINYINT =(SELECT [day]FROM Holidays WHERE holiday_name LIKE @holiday);
--		DECLARE		@start_date	AS DATE = 
--		(
--		CASE			
--		WHEN		@holiday		LIKE N'Нов%' THEN dbo.GetNewYearHolidaysStartDate(@year) 
--		WHEN		@holiday		LIKE N'Лет%'		THEN dbo.GetSummerHolidaysStart(@year) 
--		WHEN		@month != 0 AND @day !=0 THEN DATEFROMPARTS(@year,@month,@day)
--		END
--		)
--		PRINT(@start_date);

PRINT (dbo.GetEasterDate(2004));
--PRINT (dbo.GetHolidaysStartDate(N'День%', 2025));
PRINT(dbo.CetLastDateForGroup(N'PV_319'));