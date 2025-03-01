USE PV_319_Import;
SET DATEFIRST 1;
GO 

CREATE PROCEDURE sp_AddHolidays
@year		AS		SMALLINT,
@name		AS		NVARCHAR(150)
AS
BEGIN
		DECLARE	@start_date		AS DATE;
		CASE @name 
				WHEN	@name	LIKE	(N'Нов%')			THEN SET @start_date = dbo.GetNewYearHolidaysStartDate(@year)	; SET @durationdbo.GetHolidaysDuration(@name) END
		CASE	WHEN @name		LIKE	(N'Лет%каникулы')	THEN SET @start_date = dbo.GetSummerHolidaysStartDate(@year)	; SET @durationdbo.GetHolidaysDuration(@name) END
		
END