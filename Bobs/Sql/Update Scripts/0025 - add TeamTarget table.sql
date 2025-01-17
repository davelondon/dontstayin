/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TeamTarget]') AND type in (N'U'))
BEGIN
	BEGIN TRANSACTION

	CREATE TABLE dbo.TeamTarget
		(
		Year int NOT NULL,
		Month int NOT NULL,
		Target float(53) NULL,
		Actual float(53) NULL
		)  ON [PRIMARY]

	DECLARE @v sql_variant 
	SET @v = N'Year'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'TeamTarget', N'COLUMN', N'Year'

	SET @v = N'Month'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'TeamTarget', N'COLUMN', N'Month'

	SET @v = N'Target that the sales people are aiming for'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'TeamTarget', N'COLUMN', N'Target'

	SET @v = N'Actual that the sales people got (null until the 15th)'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'TeamTarget', N'COLUMN', N'Actual'

	ALTER TABLE dbo.TeamTarget ADD CONSTRAINT
		IX_TeamTarget UNIQUE NONCLUSTERED 
		(
		Year,
		Month
		) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]


	SET @v = N'Monthly team targets used to calculate team bonus'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'TeamTarget', NULL, NULL

	COMMIT
END