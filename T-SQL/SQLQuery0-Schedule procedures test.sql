USE PV_319_Import;
SET DATEFIRST 1;
GO

--EXEC sp_SetSheduleForStacionarGroup N'PV_319',N'%UML%',N'������', N'2024-08-01', N'18:30';
--EXEC sp_SetSheduleForStacionarGroup N'PD_321',N'%MS SQL Server%',N'�������', N'2024-06-01', N'13:30';

--EXEC sp_PrintScheduleForGroup N'PD_321';

--EXEC sp_PrintScheduleForGroupPeriod N'PV_319','2024-06-01','2024-07-01';

--DECLARE @salary SMALLMONEY;
--EXEC @salary= sp_CountTeachersMonthSalary N'������',2024,06;
--PRINT (@salary)
--SELECT *FROM Schedule;
 

--PRINT(DATENAME(WEEKDAY,N'2023-11-23'));
--PRINT(DATEPART(WEEKDAY,N'2023-11-23'));
--DROP PROCEDURE sp_ScheduleForBaseStacionarGroup;
DELETE FROM Schedule;
--EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'����������� ���������������� %', N'������', N'2023-11-23', '18:30', 2,4,6,2,1;
EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'Hardware%', N'�����������', N'2023-11-25', '18:30', 6,2,0;
EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'����������� ���������������� %', N'������', N'2023-11-23', '18:30', 4,2,1;
EXEC dbo.sp_SetSheduleForStacionarGroup N'PV_319', N'%��������%', N'������', N'2024-06-01', '18:30';
--EXEC dbo.sp_SetSheduleForStacionarGroup N'PV_319', N'%UML%', N'������', N'2024-08-10', '18:30';
EXEC dbo.sp_SetSheduleForStacionarGroup N'PV_319', N'����%C#', N'������';
EXEC sp_PrintScheduleForGroup N'PV_319';
