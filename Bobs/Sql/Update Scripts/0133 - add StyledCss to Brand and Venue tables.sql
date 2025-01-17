IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'Brand' 
	AND	[column].name = 'StyledCss'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.Brand ADD
	StyledCss text NULL
	
DECLARE @v sql_variant 
SET @v = N'Css to emit for the styled pages'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Brand', N'COLUMN', N'StyledCss'

END





IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'Venue' 
	AND	[column].name = 'StyledCss'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.Venue ADD
	StyledCss text NULL
	
DECLARE @v1 sql_variant 
SET @v1 = N'Css to emit for the styled pages'
EXECUTE sp_addextendedproperty N'MS_Description', @v1, N'SCHEMA', N'dbo', N'TABLE', N'Venue', N'COLUMN', N'StyledCss'

END
