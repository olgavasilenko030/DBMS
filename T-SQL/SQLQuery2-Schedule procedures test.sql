USE PV_319_Import;
GO

EXEC sp_SetSheduleForStacionarGroup N'PV_319',N'%UML%',N'������', N'2024-08-10', N'18:30';

EXEC sp_PrintScheduleForGroup N'PV_319';
--SELECT *FROM Schedule;