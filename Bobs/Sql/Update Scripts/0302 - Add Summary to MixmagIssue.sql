﻿IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'MixmagIssue' 
	AND	[column].name = 'Summary'
) BEGIN

ALTER TABLE dbo.MixmagIssue ADD
	Summary varchar(255) NULL
	
EXECUTE sp_addextendedproperty N'MS_Description', N'Short text description of the contents', N'SCHEMA', N'dbo', N'TABLE', N'MixmagIssue', N'COLUMN', N'Summary'

END
