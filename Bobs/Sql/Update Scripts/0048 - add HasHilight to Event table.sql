IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'Event' 
	AND	[column].name = 'HasHilight'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.Event ADD
	HasHilight bit NULL
	
DECLARE @v sql_variant 
SET @v = N'Shall we display this event with a hilight?'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Event', N'COLUMN', N'HasHilight'


END
