DECLARE @v sql_variant 

IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'Event' 
	AND	[column].name = 'FixedDiscount'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.Event ADD
	FixedDiscount float NULL
	

SET @v = N'Admin override to fix discount level for price of credits for this event donation'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Event', N'COLUMN', N'FixedDiscount'

END