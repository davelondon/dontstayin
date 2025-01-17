DECLARE @v sql_variant 
IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'CampaignCredit' 
	AND	[column].name = 'FixedDiscount'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.CampaignCredit ADD
	FixedDiscount float NULL
	

SET @v = N'Admin override to fix discount level for price of credits for this campaign credit'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'CampaignCredit', N'COLUMN', N'FixedDiscount'

END

IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'Banner' 
	AND	[column].name = 'FixedDiscount'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.Banner ADD
	FixedDiscount float NULL
	

SET @v = N'Admin override to fix discount level for price of credits for this banner'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Banner', N'COLUMN', N'FixedDiscount'

END