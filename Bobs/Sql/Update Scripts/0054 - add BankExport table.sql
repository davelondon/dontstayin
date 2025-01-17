/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BankExport]') AND type in (N'U'))
BEGIN
	BEGIN TRANSACTION

	CREATE TABLE dbo.BankExport
		(
		K int NOT NULL IDENTITY (1, 1),
		AddedDateTime datetime NOT NULL,
		OutputDateTime datetime NULL,
		ProcessingDateTime datetime NULL,
		TransferK int NULL,
		PromoterK int NULL,
		Type int NULL,
		Amount float(53) NULL,
		BatchRef varchar(18) NULL,
		Status int NULL,
		BankName varchar(35) NULL,
		BankAccountSortCode varchar(20) NULL,
		BankAccountNumber varchar(25) NULL,
		Details varchar(4000) NULL
		)  ON [PRIMARY]
		
	DECLARE @v sql_variant 
	SET @v = N'Primary Key'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'K'

	SET @v = N'Date when it was added'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'AddedDateTime'

	SET @v = N'Date when it was output was exported'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'OutputDateTime'

	SET @v = N'Date when it will be processed'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'ProcessingDateTime'

	SET @v = N'Transfer key reference'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'TransferK'
	
	SET @v = N'Promoter key reference'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'PromoterK'
	
	SET @v = N'Type enum: BACS = 1, Internal = 2'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'Type'
	
	SET @v = N'Amount of transaction'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'Amount'
	
	SET @v = N'Unique batch reference #'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'BatchRef'
	
	SET @v = N'Status enum: Added, AwaitingConfirmation, Successful, Failed, Cancelled.'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'Status'
	
	SET @v = N'Beneficiary''s bank name'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'BankName'
	
	SET @v = N'Beneficiary''s bank account sort code'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'BankAccountSortCode'
	
	SET @v = N'Beneficiary''s bank account number'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'BankAccountNumber'

	SET @v = N'Details of bank export for reference'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', N'COLUMN', N'Details'
	
	ALTER TABLE dbo.BankExport ADD CONSTRAINT
		PK_BankExport PRIMARY KEY CLUSTERED 
	(
	K
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]


	SET @v = N'Exports to bank for transferring funds'
	EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'BankExport', NULL, NULL

	COMMIT
END