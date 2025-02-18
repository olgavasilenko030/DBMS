USE PV_319_Import;
GO
SET DATEFIRST 1;
SELECT 
		[������]		= group_name,
		[����������]	=discipline_name,
		[�������������]	=FORMATMESSAGE(N'%s %s %s',last_name,first_name,middle_name),
		[����]			= DATENAME(WEEKDAY,[date]),
		[����]			= [date],
		[�����]			= [time],
		[������]		= IIF(spent =1,N'���������', N'�������������') 
FROM	Schedule, Groups,Disciplines,Teachers
WHERE	[group]			= group_id
AND		discipline		= discipline_id
AND		teacher			= teacher_id

;

--SELECT * FROM Schedule,Groups,Disciplines,Teachers
--WHERE	WHERE[date] BETWEEN '2024-07-01' AND '2024-07-31';