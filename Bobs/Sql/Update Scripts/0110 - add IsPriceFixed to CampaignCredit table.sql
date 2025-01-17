DECLARE @v sql_variant 

IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'CampaignCredit' 
	AND	[column].name = 'IsPriceFixed'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.CampaignCredit ADD
	IsPriceFixed bit NULL
	

SET @v = N'Flag to indicate if price is fixed and if to use FixedDiscount'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'CampaignCredit', N'COLUMN', N'IsPriceFixed'

END