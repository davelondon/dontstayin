IF NOT EXISTS(
	SELECT * FROM sys.tables [table] INNER JOIN sys.columns [column] ON [table].object_id = [column].object_id 	
	WHERE [table].name = 'Event' 
	AND	[column].name = 'TicketHeat'
) BEGIN
	 /* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
ALTER TABLE dbo.Event ADD
	TicketHeat float NULL
	
DECLARE @v sql_variant 
SET @v = N'How hot are the tickets (Tickets sold in the last 48 hrs x booking fee)'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Event', N'COLUMN', N'TicketHeat'

END