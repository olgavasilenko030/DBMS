USE PV_319_Import;
SET DATEFIRST 1;
GO

--PRINT (dbo.GetGroupID(N'PV_319'));
--PRINT(dbo.GetDisciplineID(N'Hardware%'));
----EXEC sp_PrintScheduleForGroup N'PV_319';
--PRINT(dbo.CountSpentLessons(N'PV_319', N'����������� ����������������%'));
--PRINT (dbo.GetNewYearHolidaysStartDate(2024));
--PRINT(dbo.GetSummerHolidaysStart(2023));
--PRINT(dbo.GetHolidaysDuration(N'������%'));

--PRINT('--------------------------------------');

--DECLARE @holiday	AS NVARCHAR(150)	= N'���%';
--DECLARE @year		AS SMALLINT			=2025;
--PRINT (dbo.GetHolidaysStartDate(@holiday,@year));

--DECLARE		@month		AS TINYINT =(SELECT [month]FROM Holidays WHERE holiday_name LIKE @holiday);
--		DECLARE		@day		AS TINYINT =(SELECT [day]FROM Holidays WHERE holiday_name LIKE @holiday);
--		DECLARE		@start_date	AS DATE = 
--		(
--		CASE			
--		WHEN		@holiday		LIKE N'���%' THEN dbo.GetNewYearHolidaysStartDate(@year) 
--		WHEN		@holiday		LIKE N'���%'		THEN dbo.GetSummerHolidaysStart(@year) 
--		WHEN		@month != 0 AND @day !=0 THEN DATEFROMPARTS(@year,@month,@day)
--		END
--		)
--		PRINT(@start_date);

PRINT (dbo.GetEasterDate(2004));
--PRINT (dbo.GetHolidaysStartDate(N'����%', 2025));
PRINT(dbo.CetLastDateForGroup(N'PV_319'));


--PRINT (dbo.GetMaxLearningDayFor(N'PV_319'));
--EXEC sp_GetMaxLearningDayFor N'PV_319';
--INSERT Schedule([group], discipline, teacher, [date], [time], spent)
--VALUES (319, 5, 1, '2024-09-03', '18:30', 1);
PRINT (dbo.GetNextLearningDayFor(N'PV_319'));
EXEC sp_PrintScheduleForGroup N'PV_319';

DECLARE @group		AS NVARCHAR (10) =N'PV_319';
DECLARE @date		AS DATE = dbo.CetLastDateForGroup(@group);
WHILE @date <'2025-01-01'
BEGIN
	PRINT(@date);
	PRINT(DATENAME(WEEKDAY,@date));
	PRINT('----------------');
	SET @date = dbo.GetNextLearningDateFor(@group);
END