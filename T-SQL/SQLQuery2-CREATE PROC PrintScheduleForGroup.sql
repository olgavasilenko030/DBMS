USE PV_319_Import;
GO

ALTER PROCEDURE sp_PrintScheduleForGroup
	@group_name				NVARCHAR(16),
	@discipline_name		NVARCHAR(150) = Null

	AS
	BEGIN
		--DECLARE @group		AS INT			=(SELECT group_id		FROM Groups			WHERE group_name		= @group_name);
		--DECLARE @discipline	AS SMALLINT		=
		--IIF(@discipline_name=NULL,0,(SELECT discipline_id	FROM Disciplines	WHERE discipline_name	=@discipline_name));
		
		SELECT	
				[������]		= group_name,
				[����������]	= discipline_name,
				[�������������]	= FORMATMESSAGE(N'%s %s %s', last_name, first_name, middle_name),
				[����]			= DATENAME(WEEKDAY,[date]),
				[����]			= [date],
				[�����]			= [time],
				[������]		=IIF(spent =1,N'���������',N'�������������')
		FROM	Schedule, Groups,Disciplines,Teachers
		WHERE	[group]			= group_id
		AND		discipline		= discipline_id
		AND		teacher			= teacher_id
		AND		group_name		= @group_name
		AND		discipline_name	LIKE  IIF(@discipline_name = Null,N'%',discipline_name);
		;
	END