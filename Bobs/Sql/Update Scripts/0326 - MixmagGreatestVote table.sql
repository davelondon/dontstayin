﻿IF EXISTS(
	SELECT * FROM sys.tables WHERE Name = 'MixmagGreatestVote' 
) BEGIN
	drop table dbo.MixmagGreatestVote
END

GO

create TABLE dbo.MixmagGreatestVote
(
	FacebookUid bigint not null,
	MixmagGreatestDjK int not null,
	DateTime dateTime null,
	DidWallPost bit null,
	FacebookEmail varchar(255) null,
	WallPostPermission bit null,
	EmailPermission bit null

)
ALTER TABLE dbo.MixmagGreatestVote ADD CONSTRAINT
	PK_MixmagGreatestVote PRIMARY KEY CLUSTERED 
	(
		FacebookUid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

EXECUTE sp_addextendedproperty N'MS_Description', N'Vote for the mixmag greatest DJ competition', N'SCHEMA', N'dbo', N'TABLE', N'MixmagGreatestVote', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', N'Facebook unique id', N'SCHEMA', N'dbo', N'TABLE', N'MixmagGreatestVote', N'COLUMN', N'FacebookUid'
EXECUTE sp_addextendedproperty N'MS_Description', N'DJ that they voted for', N'SCHEMA', N'dbo', N'TABLE', N'MixmagGreatestVote', N'COLUMN', N'MixmagGreatestDjK'
EXECUTE sp_addextendedproperty N'MS_Description', N'Date time they voted', N'SCHEMA', N'dbo', N'TABLE', N'MixmagGreatestVote', N'COLUMN', N'DateTime'
EXECUTE sp_addextendedproperty N'MS_Description', N'Did we post to their facebook wall?', N'SCHEMA', N'dbo', N'TABLE', N'MixmagGreatestVote', N'COLUMN', N'DidWallPost'
EXECUTE sp_addextendedproperty N'MS_Description', N'Their email address from Facebook', N'SCHEMA', N'dbo', N'TABLE', N'MixmagGreatestVote', N'COLUMN', N'FacebookEmail'
EXECUTE sp_addextendedproperty N'MS_Description', N'Do we have wall post permission?', N'SCHEMA', N'dbo', N'TABLE', N'MixmagGreatestVote', N'COLUMN', N'WallPostPermission'
EXECUTE sp_addextendedproperty N'MS_Description', N'Do we have email send permission?', N'SCHEMA', N'dbo', N'TABLE', N'MixmagGreatestVote', N'COLUMN', N'EmailPermission'

GO

