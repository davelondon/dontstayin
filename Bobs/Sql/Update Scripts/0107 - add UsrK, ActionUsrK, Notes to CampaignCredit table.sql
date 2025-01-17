DECLARE @v sql_variant 
IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'CampaignCredit' 
	AND	[column].name = 'UsrK'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.CampaignCredit ADD
	UsrK int NULL
	

SET @v = N'UsrK of usr who this campaign credit was created for'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'CampaignCredit', N'COLUMN', N'UsrK'

END

IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'CampaignCredit' 
	AND	[column].name = 'ActionUsrK'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.CampaignCredit ADD
	ActionUsrK int NULL
	
SET @v = N'ActionUsrK of usr who created this campaign credit'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'CampaignCredit', N'COLUMN', N'ActionUsrK'

END


IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'CampaignCredit' 
	AND	[column].name = 'Notes'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.CampaignCredit ADD
	Notes text NULL
	
SET @v = N'Notes for this campaign credit'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'CampaignCredit', N'COLUMN', N'Notes'

END

