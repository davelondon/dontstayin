IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'Usr' 
	AND	[column].name = 'LegalDrinkingAgeDateTime'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.Usr ADD
	LegalDrinkingAgeDateTime datetime NULL
	
DECLARE @v sql_variant 
SET @v = N'DateTime that this user attained legal dringing age in their country (e.g. dob + 18/21yrs)?'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Usr', N'COLUMN', N'LegalDrinkingAgeDateTime'

END