IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'Thread' 
	AND	[column].name = 'IsInCaptionCompetition'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.Thread ADD
	IsInCaptionCompetition bit NULL
	
DECLARE @v sql_variant 
SET @v = N'Is this thread in a caption competition?'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Thread', N'COLUMN', N'IsInCaptionCompetition'

END
