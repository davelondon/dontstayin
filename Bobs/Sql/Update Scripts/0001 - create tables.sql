/****** Object:  Table [dbo].[Performer]    Script Date: 04/16/2007 15:31:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Performer]') AND type in (N'U'))
BEGIN
CREATE TABLE [Performer](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[AdminNote] [text] NULL,
 CONSTRAINT [PK_Performer] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Performer', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Performer', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Performer', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the DJ, Band etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Performer', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Performer', N'COLUMN',N'FullName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name (for telling difference between performers with similar names)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Performer', @level2type=N'COLUMN',@level2name=N'FullName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Performer', N'COLUMN',N'AdminNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'note for admin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Performer', @level2type=N'COLUMN',@level2name=N'AdminNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Performer', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e.g. DJ, Band etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Performer'
GO
/****** Object:  View [dbo].[vw_index_list]    Script Date: 04/16/2007 15:31:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[vw_index_list]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [vw_index_list] AS
SELECT tbl.[name] AS TableName,
	idx.[name] AS IndexName,
	INDEX_COL( tbl.[name], idx.indid, 1 ) AS col1,
	INDEX_COL( tbl.[name], idx.indid, 2 ) AS col2,
	INDEX_COL( tbl.[name], idx.indid, 3 ) AS col3,
	INDEX_COL( tbl.[name], idx.indid, 4 ) AS col4,
	INDEX_COL( tbl.[name], idx.indid, 5 ) AS col5,
	INDEX_COL( tbl.[name], idx.indid, 6 ) AS col6,
	INDEX_COL( tbl.[name], idx.indid, 7 ) AS col7,
	INDEX_COL( tbl.[name], idx.indid, 8 ) AS col8,
	INDEX_COL( tbl.[name], idx.indid, 9 ) AS col9,
	INDEX_COL( tbl.[name], idx.indid, 10 ) AS col10,
	INDEX_COL( tbl.[name], idx.indid, 11 ) AS col11,
	INDEX_COL( tbl.[name], idx.indid, 12 ) AS col12,
	INDEX_COL( tbl.[name], idx.indid, 13 ) AS col13,
	INDEX_COL( tbl.[name], idx.indid, 14 ) AS col14,
	INDEX_COL( tbl.[name], idx.indid, 15 ) AS col15,
	INDEX_COL( tbl.[name], idx.indid, 16 ) AS col16,
	dpages,
	used,
	rowcnt,
	tbl.[id] tableid
FROM SYSINDEXES idx
INNER JOIN SYSOBJECTS tbl ON idx.[id] = tbl.[id]
WHERE indid > 0 
	AND INDEXPROPERTY( tbl.[id], idx.[name], ''IsStatistics'') = 0
'
GO
/****** Object:  Table [dbo].[PerformerMusicType]    Script Date: 04/16/2007 15:31:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PerformerMusicType]') AND type in (N'U'))
BEGIN
CREATE TABLE [PerformerMusicType](
	[PerformerK] [int] NOT NULL,
	[MusicTypeK] [int] NOT NULL,
 CONSTRAINT [IX_PerformerMusicType] UNIQUE NONCLUSTERED 
(
	[PerformerK] ASC,
	[MusicTypeK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformerMusicType', N'COLUMN',N'PerformerK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Performer table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformerMusicType', @level2type=N'COLUMN',@level2name=N'PerformerK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformerMusicType', N'COLUMN',N'MusicTypeK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the MusicType table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformerMusicType', @level2type=N'COLUMN',@level2name=N'MusicTypeK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformerMusicType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links a Performer to many MusicTypes that they play' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformerMusicType'
GO
/****** Object:  Table [dbo].[PhotoReview]    Script Date: 04/16/2007 15:31:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PhotoReview]') AND type in (N'U'))
BEGIN
CREATE TABLE [PhotoReview](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[UsrK] [int] NULL,
	[PhotoK] [int] NULL,
	[DateTime] [datetime] NULL,
	[Rating] [int] NULL,
	[RatingType] [int] NULL,
 CONSTRAINT [PK_PhotoReview] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PhotoReview]') AND name = N'_dta_index_PhotoReview_7_55671246__K2_1_3_4_5_6')
CREATE NONCLUSTERED INDEX [_dta_index_PhotoReview_7_55671246__K2_1_3_4_5_6] ON [PhotoReview] 
(
	[UsrK] ASC
)
INCLUDE ( [K],
[DateTime],
[Rating],
[RatingType],
[PhotoK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PhotoReview]') AND name = N'PhotoReview29')
CREATE NONCLUSTERED INDEX [PhotoReview29] ON [PhotoReview] 
(
	[PhotoK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PhotoReview', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhotoReview', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PhotoReview', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to one user - the user that submitted the review' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhotoReview', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PhotoReview', N'COLUMN',N'PhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to one photo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhotoReview', @level2type=N'COLUMN',@level2name=N'PhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PhotoReview', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/time the review was added' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhotoReview', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PhotoReview', N'COLUMN',N'Rating'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rate the photo 0-9 on...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhotoReview', @level2type=N'COLUMN',@level2name=N'Rating'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PhotoReview', N'COLUMN',N'RatingType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1=Cool, 2=Sexy, 3=Sexy (any more?)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhotoReview', @level2type=N'COLUMN',@level2name=N'RatingType'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_55671246_1_2_6' and object_id = object_id(N'[PhotoReview]'))
CREATE STATISTICS [_dta_stat_55671246_1_2_6] ON [PhotoReview]([K], [UsrK], [RatingType])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_55671246_2_6' and object_id = object_id(N'[PhotoReview]'))
CREATE STATISTICS [_dta_stat_55671246_2_6] ON [PhotoReview]([UsrK], [RatingType])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_55671246_3_1_2' and object_id = object_id(N'[PhotoReview]'))
CREATE STATISTICS [_dta_stat_55671246_3_1_2] ON [PhotoReview]([PhotoK], [K], [UsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_55671246_3_1_6' and object_id = object_id(N'[PhotoReview]'))
CREATE STATISTICS [_dta_stat_55671246_3_1_6] ON [PhotoReview]([PhotoK], [K], [RatingType])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_55671246_3_2_6_1' and object_id = object_id(N'[PhotoReview]'))
CREATE STATISTICS [_dta_stat_55671246_3_2_6_1] ON [PhotoReview]([PhotoK], [UsrK], [RatingType], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_55671246_3_6' and object_id = object_id(N'[PhotoReview]'))
CREATE STATISTICS [_dta_stat_55671246_3_6] ON [PhotoReview]([PhotoK], [RatingType])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PhotoReview', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rating of a photo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhotoReview'
GO
/****** Object:  Table [dbo].[Place]    Script Date: 04/16/2007 15:31:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Place]') AND type in (N'U'))
BEGIN
CREATE TABLE [Place](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Population] [float] NULL,
	[LatitudeDegreesNorth] [float] NULL,
	[LongitudeDegreesWest] [float] NULL,
	[SubCountry] [int] NULL,
	[CountryK] [int] NULL,
	[Enabled] [bit] NULL,
	[Pic] [uniqueidentifier] NULL,
	[DetailsHtml] [text] NULL,
	[TotalEvents] [int] NULL,
	[TotalComments] [int] NULL,
	[TotalCommentsShallow] [int] NULL,
	[LastPostShallow] [datetime] NULL,
	[LastPost] [datetime] NULL,
	[AverageCommentDateTime] [datetime] NULL,
	[AverageCommentDateTimeShallow] [datetime] NULL,
	[RegionAbbreviation] [varchar](10) NULL,
	[RegionK] [int] NULL,
	[Code] [varchar](10) NULL,
	[Type] [varchar](10) NULL,
	[IsRegionCapital] [bit] NULL,
	[IsCountryCapital] [bit] NULL,
	[ExcludeFromMap] [bit] NULL,
	[UrlName] [varchar](100) NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[PicMiscK] [int] NULL,
	[UrlFragment] [varchar](255) NULL,
 CONSTRAINT [PK_Town_1] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Place]') AND name = N'_dta_index_Place_7_71671303__K7_K11_K8_K1_K4_2_18_25_29')
CREATE NONCLUSTERED INDEX [_dta_index_Place_7_71671303__K7_K11_K8_K1_K4_2_18_25_29] ON [Place] 
(
	[CountryK] ASC,
	[TotalEvents] ASC,
	[Enabled] ASC,
	[K] ASC,
	[LatitudeDegreesNorth] ASC
)
INCLUDE ( [Name],
[UrlName],
[UrlFragment],
[RegionAbbreviation]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Place]') AND name = N'_dta_index_Place_8_71671303__K7_K1_2_18_25')
CREATE NONCLUSTERED INDEX [_dta_index_Place_8_71671303__K7_K1_2_18_25] ON [Place] 
(
	[CountryK] ASC,
	[K] ASC
)
INCLUDE ( [Name],
[UrlName],
[RegionAbbreviation]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Place]') AND name = N'Place27')
CREATE NONCLUSTERED INDEX [Place27] ON [Place] 
(
	[CountryK] ASC,
	[Enabled] ASC,
	[K] ASC,
	[Name] ASC,
	[RegionAbbreviation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Place]') AND name = N'Place31')
CREATE NONCLUSTERED INDEX [Place31] ON [Place] 
(
	[CountryK] ASC,
	[UrlName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Place]') AND name = N'Place35')
CREATE NONCLUSTERED INDEX [Place35] ON [Place] 
(
	[CountryK] ASC,
	[TotalEvents] DESC,
	[Population] DESC,
	[K] ASC,
	[Name] ASC,
	[Pic] ASC,
	[RegionAbbreviation] ASC,
	[UrlName] ASC,
	[UrlFragment] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Place]') AND name = N'Place39')
CREATE NONCLUSTERED INDEX [Place39] ON [Place] 
(
	[K] ASC,
	[Pic] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Place]') AND name = N'Place40')
CREATE NONCLUSTERED INDEX [Place40] ON [Place] 
(
	[K] ASC,
	[CountryK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Place]') AND name = N'Place48')
CREATE NONCLUSTERED INDEX [Place48] ON [Place] 
(
	[CountryK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Place]') AND name = N'Place56')
CREATE NONCLUSTERED INDEX [Place56] ON [Place] 
(
	[CountryK] ASC,
	[Enabled] ASC,
	[Name] ASC,
	[K] ASC,
	[RegionAbbreviation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Place name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'Population'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Population of the place in 1000''s' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'Population'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'LatitudeDegreesNorth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Latitude (degrees north)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'LatitudeDegreesNorth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'LongitudeDegreesWest'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Longitude (degrees west)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'LongitudeDegreesWest'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'SubCountry'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country (1=England, 2=Scotland, 3=Wales, 4=Northern Ireland)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'SubCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'CountryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the country table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'CountryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'Enabled'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the place is displayed in the full place list.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'Pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cropped image between 75*75 and 100*100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'Pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'DetailsHtml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Details displayed on the place page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'DetailsHtml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'TotalEvents'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of events' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'TotalEvents'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'TotalComments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'TotalComments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'LastPost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date/time of the last post that was posted in this board (including child objects)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'LastPost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'AverageCommentDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average date.time of all comments posted in this board (including child objects)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'AverageCommentDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'RegionAbbreviation'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Appended to end of FriendlyName. Usually US State abbreviation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'RegionAbbreviation'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'RegionK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Region table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'RegionK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'Code'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any regional place code (e.g. US FIPS code)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'Code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Place type - e.g. US CDP/Town/City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'IsRegionCapital'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this the capital of the region?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'IsRegionCapital'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'IsCountryCapital'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this the capital of the country?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'IsCountryCapital'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'ExcludeFromMap'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Leave this place off when drawing the map? (Usefull for outlying islands)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'ExcludeFromMap'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'UrlName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name used in the URL...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'UrlName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', N'COLUMN',N'UrlFragment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The url fragment - so that the url can be generated without accessing parent database records' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place', @level2type=N'COLUMN',@level2name=N'UrlFragment'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_1_8_11' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_1_8_11] ON [Place]([K], [Enabled], [TotalEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_1_8_3' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_1_8_3] ON [Place]([K], [Enabled], [Population])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_1_8_4' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_1_8_4] ON [Place]([K], [Enabled], [LatitudeDegreesNorth])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_1_8_5' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_1_8_5] ON [Place]([K], [Enabled], [LongitudeDegreesWest])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_11_3_7_8' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_11_3_7_8] ON [Place]([TotalEvents], [Population], [CountryK], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_11_8' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_11_8] ON [Place]([TotalEvents], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_2_7_8_11' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_2_7_8_11] ON [Place]([Name], [CountryK], [Enabled], [TotalEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_2_8' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_2_8] ON [Place]([Name], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_24_7_11' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_24_7_11] ON [Place]([ExcludeFromMap], [CountryK], [TotalEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_3_8' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_3_8] ON [Place]([Population], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_4_7_3_8_11' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_4_7_3_8_11] ON [Place]([LatitudeDegreesNorth], [CountryK], [Population], [Enabled], [TotalEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_4_7_8_11' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_4_7_8_11] ON [Place]([LatitudeDegreesNorth], [CountryK], [Enabled], [TotalEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_4_8' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_4_8] ON [Place]([LatitudeDegreesNorth], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_5_8' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_5_8] ON [Place]([LongitudeDegreesWest], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_7_1_11_8_4' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_7_1_11_8_4] ON [Place]([CountryK], [K], [TotalEvents], [Enabled], [LatitudeDegreesNorth])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_7_1_8_11_3' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_7_1_8_11_3] ON [Place]([CountryK], [K], [Enabled], [TotalEvents], [Population])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_7_11_3_8_1_4' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_7_11_3_8_1_4] ON [Place]([CountryK], [TotalEvents], [Population], [Enabled], [K], [LatitudeDegreesNorth])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_7_25_1_8' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_7_25_1_8] ON [Place]([CountryK], [UrlName], [K], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_7_25_8' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_7_25_8] ON [Place]([CountryK], [UrlName], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_7_3' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_7_3] ON [Place]([CountryK], [Population])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_7_6_3_8' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_7_6_3_8] ON [Place]([CountryK], [SubCountry], [Population], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_7_8_1_4' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_7_8_1_4] ON [Place]([CountryK], [Enabled], [K], [LatitudeDegreesNorth])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_8_1_2' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_8_1_2] ON [Place]([Enabled], [K], [Name])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_71671303_8_1_7_6_3' and object_id = object_id(N'[Place]'))
CREATE STATISTICS [_dta_stat_71671303_8_1_7_6_3] ON [Place]([Enabled], [K], [CountryK], [SubCountry], [Population])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Place', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e.g. Southampton, London' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Place'
GO
/****** Object:  Table [dbo].[Product]    Script Date: 04/16/2007 15:31:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [Product](
	[ProductK] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](500) NULL,
	[ProductDesc] [varchar](500) NULL,
	[ProductPriceDollars] [float] NULL,
	[ProductPricePounds] [float] NULL,
	[ProductPriceEuros] [float] NULL,
	[ProductCobParent] [int] NULL,
	[ProductEnabled] [int] NULL,
	[ProductLicensingProductK] [int] NULL,
	[ProductLicensingMajorVersion] [int] NULL,
	[ProductLicensingEdition] [int] NULL,
	[ProductLicensingType] [int] NULL,
	[ProductLicensingUrlRestriction] [int] NULL,
	[ProductLicensingTimeRestriction] [int] NULL,
	[ProductLicensingTimeRestrictionMonths] [int] NULL,
	[ProductShippingDollars] [float] NULL,
	[ProductShippingPounds] [float] NULL,
	[ProductShippingEuros] [float] NULL,
	[ProductLicensingServerNameRestriction] [int] NULL,
	[ProductLicensingLicensedServers] [int] NULL,
 CONSTRAINT [PK__PRODUCT__2F2FFC0C] PRIMARY KEY CLUSTERED 
(
	[ProductK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TicketPromoterEvent]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TicketPromoterEvent]') AND type in (N'U'))
BEGIN
CREATE TABLE [TicketPromoterEvent](
	[PromoterK] [int] NOT NULL,
	[EventK] [int] NOT NULL,
	[TotalTickets] [int] NULL,
	[SoldTickets] [int] NULL,
	[TotalFunds] [float] NULL,
	[FundsLockManual] [bit] NULL,
	[FundsLockManualUsrK] [int] NULL,
	[FundsLockManualDateTime] [datetime] NULL,
	[FundsLockManualNote] [varchar](500) NULL,
	[FundsLockFraudIpDuplicate] [bit] NULL,
	[FundsLockFraudIpCountry] [int] NULL,
	[FundsLockFraudGuid] [bit] NULL,
	[FundsLockUsrResponses] [bit] NULL,
	[FundsLockText] [varchar](2000) NULL,
	[FundsLockOverride] [bit] NULL,
	[FundsLockOverrideUsrK] [int] NULL,
	[FundsLockOverrideDateTime] [datetime] NULL,
	[FundsLockOverrideNote] [varchar](500) NULL,
	[FundsReleased] [bit] NULL,
	[FundsTransferK] [int] NULL,
 CONSTRAINT [PK_TicketPromoterEvent] PRIMARY KEY CLUSTERED 
(
	[PromoterK] ASC,
	[EventK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The promoter for the tickets' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The event for the tickets' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'TotalTickets'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of tickets available' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'TotalTickets'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'SoldTickets'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of tickets sold' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'SoldTickets'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'TotalFunds'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total amount of money from sold tickets' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'TotalFunds'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockManual'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Have the funds been locked manually' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockManual'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockManualUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user who locked the funds manually' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockManualUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockManualDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Timestamp for manual funds lock' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockManualDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockManualNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Note for manual funds lock' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockManualNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockFraudIpDuplicate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Are funds locked due to duplicate IP fraud' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockFraudIpDuplicate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockFraudIpCountry'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country origin of duplicate IP fraud' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockFraudIpCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockFraudGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Are funds locked due to GUID fraud' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockFraudGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockUsrResponses'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Are funds locked due to users negative responses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockUsrResponses'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text explaining any locks, readable by admins and used when making unlock decisions' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockText'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockOverride'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is funds lock overridden' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockOverride'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockOverrideUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user who overrode the funds lock' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockOverrideUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockOverrideDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Timestamp for funds lock override' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockOverrideDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsLockOverrideNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Note explaining why funds lock has been overridden' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsLockOverrideNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsReleased'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Have funds been released to promoter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsReleased'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', N'COLUMN',N'FundsTransferK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transfer reference for funds to promoter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent', @level2type=N'COLUMN',@level2name=N'FundsTransferK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketPromoterEvent', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TicketPromoter to Event relational table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketPromoterEvent'
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Purchase]') AND type in (N'U'))
BEGIN
CREATE TABLE [Purchase](
	[PurchaseK] [int] IDENTITY(1,1) NOT NULL,
	[UsrK] [int] NULL,
	[PurchaseBillingName] [varchar](150) NULL,
	[PurchaseBillingCompany] [varchar](150) NULL,
	[PurchaseBillingAddrStreet] [varchar](150) NULL,
	[PurchaseBillingAddrTown] [varchar](150) NULL,
	[PurchaseBillingAddrCounty] [varchar](150) NULL,
	[PurchaseBillingAddrPostcode] [varchar](150) NULL,
	[PurchaseBillingAddrCountryK] [int] NULL,
	[PurchasePriceDelivery] [float] NULL,
	[PurchaseUpgradeDiscount] [float] NULL,
	[PurchasePriceVatRate] [float] NULL,
	[PurchaseStatus] [int] NULL,
	[PurchaseAdminNote] [text] NULL,
	[PurchaseDateTime] [datetime] NULL,
	[PurchaseCurrency] [int] NULL,
	[PurchaseTel] [varchar](150) NULL,
	[PurchaseFax] [varchar](150) NULL,
	[PurchaseEmail] [varchar](150) NULL,
	[PurchaseWorldPayTransId] [varchar](15) NULL,
	[PurchaseEuVatRegistered] [int] NULL,
	[PurchaseEuVatNumber] [varchar](150) NULL,
	[PurchaseFree] [int] NULL,
	[PurchaseMarketingSource] [varchar](255) NULL,
	[PurchaseCampaignK] [int] NULL,
	[PurchaseAffiliateUsrK] [int] NULL,
	[PurchaseUpgradedFromPurchaseK] [int] NULL,
	[PurchaseUpgradedToPurchaseK] [int] NULL,
 CONSTRAINT [PK__PURCHASE__36D11DD4] PRIMARY KEY CLUSTERED 
(
	[PurchaseK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Purchase]') AND name = N'IPURCHASE1')
CREATE NONCLUSTERED INDEX [IPURCHASE1] ON [Purchase] 
(
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Region]') AND type in (N'U'))
BEGIN
CREATE TABLE [Region](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[CountryK] [int] NULL,
	[SubCountry] [int] NULL,
	[Name] [varchar](100) NULL,
	[Abbreviation] [varchar](10) NULL,
	[Population] [float] NULL,
	[Area] [float] NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Region', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Region', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Region', N'COLUMN',N'CountryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the country table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Region', @level2type=N'COLUMN',@level2name=N'CountryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Region', N'COLUMN',N'SubCountry'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SubCountry in the Places table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Region', @level2type=N'COLUMN',@level2name=N'SubCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Region', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Region', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Region', N'COLUMN',N'Abbreviation'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Abbreviation (usually US state code)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Region', @level2type=N'COLUMN',@level2name=N'Abbreviation'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Region', N'COLUMN',N'Population'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Population in thousands' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Region', @level2type=N'COLUMN',@level2name=N'Population'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Region', N'COLUMN',N'Area'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Area in sq km' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Region', @level2type=N'COLUMN',@level2name=N'Area'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Region', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A region is a sub-country - e.g. England/Scotland in the UK, or the States in the US.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Region'
GO
/****** Object:  Table [dbo].[TicketEventUsr]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TicketEventUsr]') AND type in (N'U'))
BEGIN
CREATE TABLE [TicketEventUsr](
	[UsrK] [int] NOT NULL,
	[EventK] [int] NOT NULL,
	[UserResponse] [int] NULL,
	[UserFeedback] [varchar](256) NULL,
 CONSTRAINT [PK_TicketEventUsr] PRIMARY KEY CLUSTERED 
(
	[UsrK] ASC,
	[EventK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketEventUsr', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that left the feedback' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketEventUsr', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketEventUsr', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The event reference' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketEventUsr', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketEventUsr', N'COLUMN',N'UserResponse'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Post event feedback enum: None=0, Good=1, Bad=2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketEventUsr', @level2type=N'COLUMN',@level2name=N'UserResponse'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketEventUsr', N'COLUMN',N'UserFeedback'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Post event feedback text for negative comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketEventUsr', @level2type=N'COLUMN',@level2name=N'UserFeedback'
GO
/****** Object:  Table [dbo].[Res]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Res]') AND type in (N'U'))
BEGIN
CREATE TABLE [Res](
	[ResK] [int] IDENTITY(1,1) NOT NULL,
	[ResName] [varchar](250) NULL,
	[ResTitle] [varchar](100) NULL,
	[ResDesc] [varchar](250) NULL,
	[ResBlob] [image] NULL,
	[ResProtectionLevel] [int] NULL,
	[ResProtectionData] [int] NULL,
	[ResDownloadType] [int] NULL,
	[ResEnabled] [int] NULL,
	[ResDataTypeK] [int] NULL,
	[ResCobK] [int] NULL,
	[ResHeight] [int] NULL,
	[ResWidth] [int] NULL,
	[ResCountable] [int] NULL,
	[ResCount] [int] NULL,
 CONSTRAINT [PK__RES__10416098] PRIMARY KEY CLUSTERED 
(
	[ResK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Res]') AND name = N'IRES2')
CREATE NONCLUSTERED INDEX [IRES2] ON [Res] 
(
	[ResDataTypeK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResDataType]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ResDataType]') AND type in (N'U'))
BEGIN
CREATE TABLE [ResDataType](
	[ResDataTypeK] [int] IDENTITY(1,1) NOT NULL,
	[ResDataTypeMimeType] [varchar](100) NULL,
	[ResDataTypeDesc] [varchar](100) NULL,
 CONSTRAINT [PK__ResDataType__3B95D2F1] PRIMARY KEY CLUSTERED 
(
	[ResDataTypeK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TicketRun]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TicketRun]') AND type in (N'U'))
BEGIN
CREATE TABLE [TicketRun](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[EventK] [int] NULL,
	[PromoterK] [int] NULL,
	[BrandK] [int] NULL,
	[Name] [varchar](30) NULL,
	[Description] [varchar](256) NULL,
	[Price] [float] NULL,
	[BookingFee] [float] NULL,
	[LockPrice] [bit] NULL,
	[FollowsTicketRunK] [int] NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[Enabled] [bit] NULL,
	[MaxTickets] [int] NULL,
	[SoldTickets] [int] NULL,
	[CustomData] [text] NULL,
	[CustomXml] [xml] NULL,
	[ListOrder] [float] NULL,
	[Paused] [bit] NULL,
	[DuplicateGuid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TicketRun] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Event this ticket is for' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Promoter selling the ticket' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'BrandK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand this ticket is for (zero if not relevant)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'BrandK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brief name for ticket run: i.e. VIP, Early bird, etc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description short description e.g. "Early Bird"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'Price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price in pounds' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'Price'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'BookingFee'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Our booking fee' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'BookingFee'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'LockPrice'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If locked, the promoter won''t be able to edit the price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'LockPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'FollowsTicketRunK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this is specified, these tickets aren''t offered until a different ticket type sells out or date ends' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'FollowsTicketRunK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'StartDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tickets are offered from this DateTime onward' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'StartDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'EndDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tickets are unavailable after this DateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'EndDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'Enabled'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this TicketRun enabled? E.g. may want to disable it early.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'MaxTickets'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Maximum number of tickets to sell' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'MaxTickets'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'SoldTickets'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of tickets sold at the moment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'SoldTickets'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'CustomData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'CustomData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'CustomXml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'CustomXml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'ListOrder'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order in the list on the event page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'ListOrder'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'Paused'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the selling of this ticket run been paused' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'Paused'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid to catch duplicate "save" clicks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TicketRun', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Run of tickets for sale' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TicketRun'
GO
/****** Object:  Table [dbo].[Shortcut]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Shortcut]') AND type in (N'U'))
BEGIN
CREATE TABLE [Shortcut](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Type] [int] NULL,
	[ObjectK] [int] NULL,
	[Url] [varchar](500) NULL,
	[Hits] [int] NULL,
 CONSTRAINT [PK_Shortcut] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Shortcut] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShortcutTraffic]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ShortcutTraffic]') AND type in (N'U'))
BEGIN
CREATE TABLE [ShortcutTraffic](
	[ShortcutK] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Hits] [int] NULL,
 CONSTRAINT [IX_ShortcutTraffic] UNIQUE NONCLUSTERED 
(
	[ShortcutK] ASC,
	[Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Site]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Site]') AND type in (N'U'))
BEGIN
CREATE TABLE [Site](
	[SiteK] [int] IDENTITY(0,1) NOT NULL,
	[SiteName] [varchar](50) NULL,
	[SiteUrl] [varchar](50) NULL,
	[SiteLogo1] [varchar](50) NULL,
	[SiteLogo2] [varchar](50) NULL,
	[SiteSearch] [int] NULL,
	[SiteSet] [int] NULL,
	[SiteCobTemplate] [varchar](255) NULL,
	[SiteNavHeader] [int] NULL,
	[SiteCobTemplateTextOnly] [varchar](255) NULL,
	[SiteDescription] [text] NULL,
	[SiteOrder] [int] NULL,
 CONSTRAINT [PK__SITE__770B9E7A] PRIMARY KEY CLUSTERED 
(
	[SiteK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SpotterOld]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SpotterOld]') AND type in (N'U'))
BEGIN
CREATE TABLE [SpotterOld](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[UsrK] [int] NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[AddressStreet] [varchar](50) NULL,
	[AddressArea] [varchar](50) NULL,
	[AddressTown] [varchar](50) NULL,
	[AddressCounty] [varchar](50) NULL,
	[AddressPostcode] [varchar](50) NULL,
	[AddressCountryK] [int] NULL,
	[AdminNote] [text] NULL,
	[Status] [int] NULL,
	[Pic] [uniqueidentifier] NULL,
	[PicNew] [uniqueidentifier] NULL,
	[AddressVerificationString] [varchar](5) NULL,
	[DateOfBirth] [datetime] NULL,
	[CardStatus] [int] NULL,
	[TotalCardsSent] [int] NULL,
 CONSTRAINT [PK_Contributor] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[importdata]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[importdata]') AND type in (N'U'))
BEGIN
CREATE TABLE [importdata](
	[lid] [int] NOT NULL,
	[lasttemplate] [varchar](255) NOT NULL,
	[lastlogid] [int] NOT NULL,
	[lastoffset] [bigint] NOT NULL,
	[lastdate] [int] NOT NULL,
 CONSTRAINT [PK__importdata__0E8E2250] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThreadUsr]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ThreadUsr]') AND type in (N'U'))
BEGIN
CREATE TABLE [ThreadUsr](
	[ThreadK] [int] NULL,
	[UsrK] [int] NULL,
	[InvitingUsrK] [int] NULL,
	[Status] [int] NULL,
	[DateTime] [datetime] NULL,
	[PrivateChatType] [int] NULL,
	[Favourite] [bit] NULL,
	[Deleted] [bit] NULL,
	[ViewDateTime] [datetime] NULL,
	[ViewDateTimeLatest] [datetime] NULL,
	[ViewComments] [int] NULL,
	[ViewCommentsLatest] [int] NULL,
	[StatusChangeDateTime] [datetime] NULL,
	[StatusChangeObjectType] [int] NULL,
	[StatusChangeObjectK] [int] NULL,
 CONSTRAINT [IX_ThreadUsr] UNIQUE CLUSTERED 
(
	[ThreadK] ASC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ThreadUsr]') AND name = N'_dta_index_ThreadUsr_8_247671930__K2_K4_K1_K13_7_9_10_11_12_14_15')
CREATE NONCLUSTERED INDEX [_dta_index_ThreadUsr_8_247671930__K2_K4_K1_K13_7_9_10_11_12_14_15] ON [ThreadUsr] 
(
	[UsrK] ASC,
	[Status] ASC,
	[ThreadK] ASC,
	[StatusChangeDateTime] ASC
)
INCLUDE ( [Favourite],
[StatusChangeObjectK],
[StatusChangeObjectType],
[ViewComments],
[ViewCommentsLatest],
[ViewDateTime],
[ViewDateTimeLatest]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ThreadUsr]') AND name = N'ThreadUsr22')
CREATE NONCLUSTERED INDEX [ThreadUsr22] ON [ThreadUsr] 
(
	[ThreadK] ASC,
	[Status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'ThreadK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The thread' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'ThreadK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that has been invited' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'InvitingUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that made the invitation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'InvitingUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0=New, 1=Accepted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Datetime invitation made' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'PrivateChatType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of private chat alert' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'PrivateChatType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'Favourite'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Favourite topic?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'Favourite'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'Deleted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Deleted invitation?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'ViewDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datetime that the thread was last viewed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'ViewDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'ViewDateTimeLatest'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The new datetime (when this is set, it''s value is copied to the DateTime if it is more than 5 mins ago) ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'ViewDateTimeLatest'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'ViewComments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of comments that have been viewed at the time of the ViewDateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'ViewComments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'ViewCommentsLatest'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of comments that have been viewed at the time of the ViewDateTimeLatest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'ViewCommentsLatest'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'StatusChangeDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Datetime of last status change' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'StatusChangeDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'StatusChangeObjectType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of object that caused the previous status change' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'StatusChangeObjectType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', N'COLUMN',N'StatusChangeObjectK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key of the object that caused the previous status change' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr', @level2type=N'COLUMN',@level2name=N'StatusChangeObjectK'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_247671930_1_4_2_3' and object_id = object_id(N'[ThreadUsr]'))
CREATE STATISTICS [_dta_stat_247671930_1_4_2_3] ON [ThreadUsr]([ThreadK], [Status], [UsrK], [InvitingUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_247671930_13_2_4' and object_id = object_id(N'[ThreadUsr]'))
CREATE STATISTICS [_dta_stat_247671930_13_2_4] ON [ThreadUsr]([StatusChangeDateTime], [UsrK], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_247671930_2_4_1_13' and object_id = object_id(N'[ThreadUsr]'))
CREATE STATISTICS [_dta_stat_247671930_2_4_1_13] ON [ThreadUsr]([UsrK], [Status], [ThreadK], [StatusChangeDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_247671930_8_1_4' and object_id = object_id(N'[ThreadUsr]'))
CREATE STATISTICS [_dta_stat_247671930_8_1_4] ON [ThreadUsr]([Deleted], [ThreadK], [Status])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ThreadUsr', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links a private thread to many users' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThreadUsr'
GO
/****** Object:  Table [dbo].[demographics_names]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[demographics_names]') AND type in (N'U'))
BEGIN
CREATE TABLE [demographics_names](
	[crcid] [int] NOT NULL,
	[type] [smallint] NOT NULL,
	[item] [varchar](255) NOT NULL,
 CONSTRAINT [PK__demographics_nam__10766AC2] PRIMARY KEY CLUSTERED 
(
	[crcid] ASC,
	[type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThreadUsrView]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ThreadUsrView]') AND type in (N'U'))
BEGIN
CREATE TABLE [ThreadUsrView](
	[ThreadK] [int] NOT NULL,
	[UsrK] [int] NOT NULL,
	[DateTime] [datetime] NULL,
	[DateTimeLatest] [datetime] NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ThreadUsrView]') AND name = N'ThreadUsrView5')
CREATE CLUSTERED INDEX [ThreadUsrView5] ON [ThreadUsrView] 
(
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ThreadUsrView]') AND name = N'IX_ThreadUsrView')
CREATE UNIQUE NONCLUSTERED INDEX [IX_ThreadUsrView] ON [ThreadUsrView] 
(
	[ThreadK] ASC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupEvent]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GroupEvent]') AND type in (N'U'))
BEGIN
CREATE TABLE [GroupEvent](
	[GroupK] [int] NOT NULL,
	[EventK] [int] NOT NULL,
 CONSTRAINT [IX_GroupEvent] UNIQUE NONCLUSTERED 
(
	[GroupK] ASC,
	[EventK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupEvent', N'COLUMN',N'GroupK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Group table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupEvent', @level2type=N'COLUMN',@level2name=N'GroupK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupEvent', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Event table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupEvent', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupEvent', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recommended events' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupEvent'
GO
/****** Object:  Table [dbo].[TmpEmails]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TmpEmails]') AND type in (N'U'))
BEGIN
CREATE TABLE [TmpEmails](
	[Email] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[names]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[names]') AND type in (N'U'))
BEGIN
CREATE TABLE [names](
	[crcid] [int] NOT NULL,
	[type] [smallint] NOT NULL,
	[item] [varchar](255) NOT NULL,
 CONSTRAINT [PK__names__125EB334] PRIMARY KEY CLUSTERED 
(
	[crcid] ASC,
	[type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Topic]') AND type in (N'U'))
BEGIN
CREATE TABLE [Topic](
	[TopicK] [int] IDENTITY(1,1) NOT NULL,
	[TopicParentCobK] [int] NULL,
	[TopicCreatorUsrK] [int] NULL,
	[TopicDateTime] [datetime] NULL,
	[TopicSummary] [varchar](250) NULL,
	[TopicTitle] [varchar](50) NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[TopicK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [Country](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[CurrencyCode] [varchar](255) NULL,
	[CurrencyName] [varchar](255) NULL,
	[CurrencyDecimals] [int] NULL,
	[Region] [int] NULL,
	[Code2Letter] [char](2) NULL,
	[Code3Letter] [char](3) NULL,
	[Code3Number] [char](3) NULL,
	[EuVatCodePrefix] [char](2) NULL,
	[PlacePopulationMinimum] [int] NULL,
	[FriendlyName] [varchar](255) NULL,
	[PostcodeType] [int] NULL,
	[Mature] [bit] NULL,
	[UseRegion] [bit] NULL,
	[RegionName] [varchar](50) NULL,
	[Enabled] [bit] NULL,
	[MinEventsForPlaceMenu] [int] NULL,
	[DialingCode] [int] NULL,
	[TotalEvents] [int] NULL,
	[UrlName] [varchar](255) NULL,
	[CustomHtml] [text] NULL,
	[PostageZone] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Country] UNIQUE NONCLUSTERED 
(
	[UrlName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Country]') AND name = N'_dta_index_Country_7_301244128__K20D_1_2_7_21')
CREATE NONCLUSTERED INDEX [_dta_index_Country_7_301244128__K20D_1_2_7_21] ON [Country] 
(
	[TotalEvents] DESC
)
INCLUDE ( [Code2Letter],
[K],
[Name],
[UrlName]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'CurrencyCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'three letter currency code - NULL if minor country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'CurrencyCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'CurrencyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Currency name (not currently used on site) - NULL if minor country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'CurrencyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'CurrencyDecimals'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of decimal places used in the currency (not currently used on site) - NULL if minor country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'CurrencyDecimals'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Region - BillingRegionEnum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'Code2Letter'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2 letter country code transmitted to WorldPay during order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'Code2Letter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'Code3Letter'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'3 letter country code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'Code3Letter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'Code3Number'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'3 number country code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'Code3Number'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'EuVatCodePrefix'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The two letter prefix to the VAT codes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'EuVatCodePrefix'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'PlacePopulationMinimum'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Minimum place population to display in the top places list' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'PlacePopulationMinimum'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'FriendlyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Abbreviated name - e.g. United Kingdom = UK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'FriendlyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'PostcodeType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Postcode type for user sign-up, venue entry and spotter sign-up' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'PostcodeType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'Mature'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does the country have loads of events? This restricts the past events on the FP to show only those with events etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'Mature'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'UseRegion'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Should the place names be followed by the region abbreviation? Should the All Places page have details about the Regions?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'UseRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'RegionName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What does this country call its regions (e.g. "State" for the US).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'RegionName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'Enabled'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the country enabled on the site?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'MinEventsForPlaceMenu'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Minimum events a place should have before being included on the place menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'MinEventsForPlaceMenu'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'DialingCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'International phone dialing prefix for this country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'DialingCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'TotalEvents'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total events in this country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'TotalEvents'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'UrlName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name used in url''s' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'UrlName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'CustomHtml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Custom Html shown on the country page.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'CustomHtml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', N'COLUMN',N'PostageZone'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Royal mail postage zone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'PostageZone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Country', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country'
GO
/****** Object:  Table [dbo].[resolvequeue]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[resolvequeue]') AND type in (N'U'))
BEGIN
CREATE TABLE [resolvequeue](
	[ip] [int] NOT NULL,
	[sid] [int] NOT NULL,
	[uday] [int] NOT NULL,
	[total] [int] NOT NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[resolvequeue]') AND name = N'PRI')
CREATE UNIQUE NONCLUSTERED INDEX [PRI] ON [resolvequeue] 
(
	[ip] ASC,
	[sid] ASC,
	[uday] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ticket]') AND type in (N'U'))
BEGIN
CREATE TABLE [Ticket](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[TicketRunK] [int] NULL,
	[EventK] [int] NULL,
	[BuyerUsrK] [int] NULL,
	[OwnerUsrK] [int] NULL,
	[OfferUsrK] [int] NULL,
	[Enabled] [bit] NULL,
	[Cancelled] [bit] NULL,
	[Refunded] [bit] NULL,
	[BuyDateTime] [datetime] NULL,
	[OfferDateTime] [datetime] NULL,
	[AcceptDateTime] [datetime] NULL,
	[AddressStreet] [varchar](150) NULL,
	[AddressArea] [varchar](50) NULL,
	[AddressTown] [varchar](50) NULL,
	[AddressCounty] [varchar](50) NULL,
	[AddressPostcode] [varchar](50) NULL,
	[AddressCountryK] [int] NULL,
	[Mobile] [varchar](50) NULL,
	[MobileCountryCode] [varchar](3) NULL,
	[MobileNumber] [varchar](50) NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[CardNumberHash] [uniqueidentifier] NULL,
	[CardNumberEnd] [varchar](6) NULL,
	[CardNumberDigits] [int] NULL,
	[Quantity] [int] NULL,
	[CustomData] [text] NULL,
	[CustomXml] [xml] NULL,
	[InvoiceK] [int] NULL,
	[InvoiceItemK] [int] NULL,
	[BrowserGuid] [uniqueidentifier] NULL,
	[Price] [float] NULL,
	[BookingFee] [float] NULL,
	[IpAddress] [varchar](15) NULL,
	[Feedback] [int] NULL,
	[FeedbackNote] [varchar](4096) NULL,
 CONSTRAINT [PK_TicketSale] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'TicketRunK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ticket run link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'TicketRunK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the event table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'BuyerUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that bought the ticket' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'BuyerUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'OwnerUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'OwnerUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'OfferUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'OfferUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'Enabled'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tickets that have been successfully processed should set Enabled = true. Tickets that are not enabled are a place holder to be used while trying to process.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'Cancelled'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the ticket has been cancelled' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'Cancelled'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'Refunded'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'Refunded'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'BuyDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date time of the original purchase' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'BuyDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'OfferDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'OfferDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'AcceptDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'AcceptDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'AddressStreet'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - Street' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'AddressStreet'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'AddressArea'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - Area' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'AddressArea'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'AddressTown'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - Place' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'AddressTown'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'AddressCounty'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - County' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'AddressCounty'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'AddressPostcode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - Postcode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'AddressPostcode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'AddressCountryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - Country (link to Country table)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'AddressCountryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'Mobile'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full mobile number including country code (e.g. 447971597702)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'Mobile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'MobileCountryCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country code of mobile number (e.g. 44)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'MobileCountryCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'MobileNumber'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mobile number excluding country code and leading zero (e.g. 7971597702)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'MobileNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First name, verified by credit card' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last name, verified by credit card' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'CardNumberHash'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cryptographic hash of the card number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'CardNumberHash'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'CardNumberEnd'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last 6 digits of the card number used to order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'CardNumberEnd'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'CardNumberDigits'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of digits on the card used to order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'CardNumberDigits'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Quantity of tickets (for multiple-entrance tickets)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'CustomData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Custom data specific to this ticket run (as a string)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'CustomData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'CustomXml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Custom data specific to this ticket run (as xml)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'CustomXml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'InvoiceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'InvoiceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'InvoiceItemK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the invoice item table - e.g. booking reference' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'InvoiceItemK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'BrowserGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid from the browser cookie' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'BrowserGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'Price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price in pounds' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'Price'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'BookingFee'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Our booking fee' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'BookingFee'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'IpAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Buyer''s IpAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'IpAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'Feedback'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Post event feedback enum: None=0, Good=1, Bad=2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'Feedback'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', N'COLUMN',N'FeedbackNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Post event feedback text for negative comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket', @level2type=N'COLUMN',@level2name=N'FeedbackNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Ticket', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'One ticket created each time someone buys a ticket' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket'
GO
/****** Object:  Table [dbo].[Comp]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Comp]') AND type in (N'U'))
BEGIN
CREATE TABLE [Comp](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[DateTimeAdded] [datetime] NULL,
	[DateTimeStart] [datetime] NULL,
	[DateTimeClose] [datetime] NULL,
	[Question] [varchar](200) NULL,
	[Answer1] [varchar](100) NULL,
	[Answer2] [varchar](100) NULL,
	[Answer3] [varchar](100) NULL,
	[CorrectAnswer] [int] NULL,
	[Prize] [varchar](200) NULL,
	[Prize2] [varchar](200) NULL,
	[Prize3] [varchar](200) NULL,
	[SponsorDetails] [text] NULL,
	[Winners] [int] NULL,
	[Winners2] [int] NULL,
	[Winners3] [int] NULL,
	[WinnersPicked] [bit] NULL,
	[OwnerUsrK] [int] NULL,
	[IconFilename] [varchar](100) NULL,
	[PrizeValueRange] [int] NULL,
	[Entries] [int] NULL,
	[Pic] [uniqueidentifier] NULL,
	[PicOriginal] [uniqueidentifier] NULL,
	[DisplayType] [int] NULL,
	[Status] [int] NULL,
	[PromoterK] [int] NULL,
	[BrandK] [int] NULL,
	[EventK] [int] NULL,
	[LinkType] [int] NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[PicMiscK] [int] NULL,
	[IsHtmlOverride] [bit] NULL,
 CONSTRAINT [PK_Comp] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Comp]') AND name = N'Comp90')
CREATE NONCLUSTERED INDEX [Comp90] ON [Comp] 
(
	[DateTimeStart] ASC,
	[DateTimeClose] ASC,
	[Status] ASC,
	[BrandK] ASC,
	[EventK] ASC,
	[PrizeValueRange] DESC,
	[K] ASC,
	[Prize] ASC,
	[Winners] ASC,
	[Pic] ASC,
	[LinkType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'DateTimeAdded'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the competition was added to the system' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'DateTimeAdded'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'DateTimeStart'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the competition starts' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'DateTimeStart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'DateTimeClose'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the competition closes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'DateTimeClose'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Question'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Question' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Question'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Answer1'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Multiple choice answer 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Answer1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Answer2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Multiple choice answer 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Answer2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Answer3'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Multiple choice answer 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Answer3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'CorrectAnswer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The correct answer - 1, 2 or 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'CorrectAnswer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Prize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the first prize' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Prize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Prize2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the second prize' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Prize2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Prize3'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the third prize' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Prize3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'SponsorDetails'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTML snippet about the sponsor. May include logo, link etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'SponsorDetails'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Winners'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of first prize winners' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Winners'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Winners2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of second prize winners' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Winners2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Winners3'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of third prize winners' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Winners3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'WinnersPicked'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Have the winners been picked and notified yet?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'WinnersPicked'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'OwnerUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The owner that has access to the results' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'OwnerUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'IconFilename'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The url of the icon (should be approx 30*30)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'IconFilename'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'PrizeValueRange'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prize value range - 1=£0-£100, 2=£100+, 3=£500+' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'PrizeValueRange'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Entries'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of entries' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Entries'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cropped image 100*100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'PicOriginal'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Original file for cropped image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'PicOriginal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'DisplayType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of entries' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'DisplayType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The owner promoter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'BrandK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The relevant brand (if any)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'BrandK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The relevant event (if any)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'LinkType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Where is this competition linking to?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'LinkType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', N'COLUMN',N'IsHtmlOverride'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this competition an HTML override?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp', @level2type=N'COLUMN',@level2name=N'IsHtmlOverride'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_811865959_20_25_3_27_4' and object_id = object_id(N'[Comp]'))
CREATE STATISTICS [_dta_stat_811865959_20_25_3_27_4] ON [Comp]([PrizeValueRange], [Status], [DateTimeStart], [BrandK], [DateTimeClose])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_811865959_27_25_3' and object_id = object_id(N'[Comp]'))
CREATE STATISTICS [_dta_stat_811865959_27_25_3] ON [Comp]([BrandK], [Status], [DateTimeStart])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_811865959_28_25_3_27' and object_id = object_id(N'[Comp]'))
CREATE STATISTICS [_dta_stat_811865959_28_25_3_27] ON [Comp]([EventK], [Status], [DateTimeStart], [BrandK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_811865959_28_27_3' and object_id = object_id(N'[Comp]'))
CREATE STATISTICS [_dta_stat_811865959_28_27_3] ON [Comp]([EventK], [BrandK], [DateTimeStart])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_811865959_3_25_4_28' and object_id = object_id(N'[Comp]'))
CREATE STATISTICS [_dta_stat_811865959_3_25_4_28] ON [Comp]([DateTimeStart], [Status], [DateTimeClose], [EventK])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A competition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comp'
GO
/****** Object:  Table [dbo].[rdnsqueue]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[rdnsqueue]') AND type in (N'U'))
BEGIN
CREATE TABLE [rdnsqueue](
	[ip] [int] NOT NULL,
	[sid] [int] NOT NULL,
	[uday] [int] NOT NULL,
	[total] [int] NOT NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[rdnsqueue]') AND name = N'PRI')
CREATE UNIQUE NONCLUSTERED INDEX [PRI] ON [rdnsqueue] 
(
	[ip] ASC,
	[sid] ASC,
	[uday] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsrDate]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UsrDate]') AND type in (N'U'))
BEGIN
CREATE TABLE [UsrDate](
	[UsrK] [int] NULL,
	[DateUsrK] [int] NULL,
	[Status] [int] NULL,
	[DateTime] [datetime] NULL,
	[PreMatch] [bit] NULL,
	[Match] [int] NULL,
	[MatchDateTime] [datetime] NULL,
	[MatchThreadK] [int] NULL,
 CONSTRAINT [IX_UsrDate] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC,
	[DateUsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[UsrDate]') AND name = N'UsrDate2')
CREATE CLUSTERED INDEX [UsrDate2] ON [UsrDate] 
(
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[UsrDate]') AND name = N'_dta_index_UsrDate_7_343672272__K1_K2_K3_4_5_6_7_8')
CREATE NONCLUSTERED INDEX [_dta_index_UsrDate_7_343672272__K1_K2_K3_4_5_6_7_8] ON [UsrDate] 
(
	[UsrK] ASC,
	[DateUsrK] ASC,
	[Status] ASC
)
INCLUDE ( [Match],
[MatchDateTime],
[MatchThreadK],
[PreMatch],
[DateTime]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrDate', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Usr table - the usr that initiated the date request' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrDate', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrDate', N'COLUMN',N'DateUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Usr table - the usr that they want to be introduced to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrDate', @level2type=N'COLUMN',@level2name=N'DateUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrDate', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrDate', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrDate', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the request was done' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrDate', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrDate', N'COLUMN',N'PreMatch'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this Yes UsrDate record matched to a similar ''reverse'' Yes record?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrDate', @level2type=N'COLUMN',@level2name=N'PreMatch'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrDate', N'COLUMN',N'Match'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Are these users fully matched? 0 = no match, 1 = matched, 3 = was matched, but change of prefs means not any more' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrDate', @level2type=N'COLUMN',@level2name=N'Match'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrDate', N'COLUMN',N'MatchDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datetime when the users were first fully matched.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrDate', @level2type=N'COLUMN',@level2name=N'MatchDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrDate', N'COLUMN',N'MatchThreadK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This it the ThreadK of the private message thread that we start when they are matched.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrDate', @level2type=N'COLUMN',@level2name=N'MatchThreadK'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_343672272_2_3' and object_id = object_id(N'[UsrDate]'))
CREATE STATISTICS [_dta_stat_343672272_2_3] ON [UsrDate]([DateUsrK], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_343672272_3_1_2' and object_id = object_id(N'[UsrDate]'))
CREATE STATISTICS [_dta_stat_343672272_3_1_2] ON [UsrDate]([Status], [UsrK], [DateUsrK])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrDate', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ratings in the dating system' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrDate'
GO
/****** Object:  Table [dbo].[whoson]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[whoson]') AND type in (N'U'))
BEGIN
CREATE TABLE [whoson](
	[sid] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[starttime] [int] NOT NULL,
	[endtime] [int] NOT NULL,
	[referrercrc] [int] NOT NULL,
	[browsercrc] [int] NOT NULL,
	[lasturlcrc] [int] NOT NULL,
	[totalkb] [int] NOT NULL,
	[totalhits] [smallint] NOT NULL,
	[totalpages] [smallint] NOT NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[whoson]') AND name = N'PRI')
CREATE UNIQUE NONCLUSTERED INDEX [PRI] ON [whoson] 
(
	[sid] ASC,
	[userid] ASC,
	[starttime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsrEventAttended]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UsrEventAttended]') AND type in (N'U'))
BEGIN
CREATE TABLE [UsrEventAttended](
	[UsrK] [int] NOT NULL,
	[EventK] [int] NOT NULL,
	[SendUpdate] [bit] NULL,
	[Spotter] [bit] NULL,
 CONSTRAINT [IX_UsrEventAttended] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC,
	[EventK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[UsrEventAttended]') AND name = N'UsrEventAttended13')
CREATE CLUSTERED INDEX [UsrEventAttended13] ON [UsrEventAttended] 
(
	[EventK] ASC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrEventAttended', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Usr table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrEventAttended', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrEventAttended', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Event table - an event that the user attended' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrEventAttended', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrEventAttended', N'COLUMN',N'SendUpdate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do we send emails about this event?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrEventAttended', @level2type=N'COLUMN',@level2name=N'SendUpdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrEventAttended', N'COLUMN',N'Spotter'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user taking pictures?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrEventAttended', @level2type=N'COLUMN',@level2name=N'Spotter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrEventAttended', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links a user to many events (I went to this event)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrEventAttended'
GO
/****** Object:  Table [dbo].[Hit]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Hit]') AND type in (N'U'))
BEGIN
CREATE TABLE [Hit](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[ServerId] [int] NULL,
	[StartTime] [datetime] NULL,
	[HasEnded] [bit] NULL,
	[EndTime] [datetime] NULL,
	[GetData] [text] NULL,
	[PostData] [text] NULL,
	[UsrK] [int] NULL,
	[CookieData] [text] NULL,
 CONSTRAINT [PK_Hit] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Hit', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hit', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Hit', N'COLUMN',N'ServerId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Which server did the request come in to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hit', @level2type=N'COLUMN',@level2name=N'ServerId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Hit', N'COLUMN',N'StartTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/time that the request was made' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hit', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Hit', N'COLUMN',N'HasEnded'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the request ended?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hit', @level2type=N'COLUMN',@level2name=N'HasEnded'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Hit', N'COLUMN',N'EndTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/time that the request was completed (requests under 5s in length are deleted)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hit', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Hit', N'COLUMN',N'GetData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Get string' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hit', @level2type=N'COLUMN',@level2name=N'GetData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Hit', N'COLUMN',N'PostData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Post data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hit', @level2type=N'COLUMN',@level2name=N'PostData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Hit', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The usr that was logged in (if any)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hit', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Hit', N'COLUMN',N'CookieData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cookie data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hit', @level2type=N'COLUMN',@level2name=N'CookieData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Hit', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Each page impression is logged here - deleted when it completes successfully' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hit'
GO
/****** Object:  Table [dbo].[UsrMusicTypeFavourite]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UsrMusicTypeFavourite]') AND type in (N'U'))
BEGIN
CREATE TABLE [UsrMusicTypeFavourite](
	[UsrK] [int] NOT NULL,
	[MusicTypeK] [int] NOT NULL,
 CONSTRAINT [IX_UsrMusicTypeFavourite] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC,
	[MusicTypeK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[UsrMusicTypeFavourite]') AND name = N'_dta_index_UsrMusicTypeFavourite_c_5_375672386__K1')
CREATE CLUSTERED INDEX [_dta_index_UsrMusicTypeFavourite_c_5_375672386__K1] ON [UsrMusicTypeFavourite] 
(
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[UsrMusicTypeFavourite]') AND name = N'_dta_index_UsrMusicTypeFavourite_7_375672386__K2_K1')
CREATE NONCLUSTERED INDEX [_dta_index_UsrMusicTypeFavourite_7_375672386__K2_K1] ON [UsrMusicTypeFavourite] 
(
	[MusicTypeK] ASC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrMusicTypeFavourite', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Usr table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrMusicTypeFavourite', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrMusicTypeFavourite', N'COLUMN',N'MusicTypeK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the MusicType table - a music type that the user listens to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrMusicTypeFavourite', @level2type=N'COLUMN',@level2name=N'MusicTypeK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrMusicTypeFavourite', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links a user to many music types (music I listen to)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrMusicTypeFavourite'
GO
/****** Object:  Table [dbo].[UsrPhotoFavourite]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UsrPhotoFavourite]') AND type in (N'U'))
BEGIN
CREATE TABLE [UsrPhotoFavourite](
	[UsrK] [int] NOT NULL,
	[PhotoK] [int] NOT NULL,
 CONSTRAINT [IX_UsrPhotoFavourite] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC,
	[PhotoK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrPhotoFavourite', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Usr table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrPhotoFavourite', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrPhotoFavourite', N'COLUMN',N'PhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Photo table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrPhotoFavourite', @level2type=N'COLUMN',@level2name=N'PhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrPhotoFavourite', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links a user to many photos (my favorite photos)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrPhotoFavourite'
GO
/****** Object:  Table [dbo].[InvoiceTransfer]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[InvoiceTransfer]') AND type in (N'U'))
BEGIN
CREATE TABLE [InvoiceTransfer](
	[InvoiceK] [int] NOT NULL,
	[TransferK] [int] NOT NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_InvoiceTransfer] PRIMARY KEY CLUSTERED 
(
	[InvoiceK] ASC,
	[TransferK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceTransfer', N'COLUMN',N'InvoiceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Invoice table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceTransfer', @level2type=N'COLUMN',@level2name=N'InvoiceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceTransfer', N'COLUMN',N'TransferK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Transfer table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceTransfer', @level2type=N'COLUMN',@level2name=N'TransferK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceTransfer', N'COLUMN',N'Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'+ve for DSI receiving money, -ve for DSI paying out money' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceTransfer', @level2type=N'COLUMN',@level2name=N'Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceTransfer', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Invoice to Transfer relational table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceTransfer'
GO
/****** Object:  Table [dbo].[Article]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Article]') AND type in (N'U'))
BEGIN
CREATE TABLE [Article](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Summary] [text] NULL,
	[Pic] [uniqueidentifier] NULL,
	[OwnerUsrK] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[Status] [int] NULL,
	[EnabledDateTime] [datetime] NULL,
	[EnabledUsrK] [int] NULL,
	[Relevance] [int] NULL,
	[ParentObjectType] [int] NULL,
	[ParentObjectK] [int] NULL,
	[EventK] [int] NULL,
	[VenueK] [int] NULL,
	[PlaceK] [int] NULL,
	[CountryK] [int] NULL,
	[HasSingleThread] [bit] NULL,
	[AdminNote] [text] NULL,
	[Views] [int] NULL,
	[IsWorldwide] [bit] NULL,
	[TotalComments] [int] NULL,
	[LastPost] [datetime] NULL,
	[AverageCommentDateTime] [datetime] NULL,
	[TotalCommentsShallow] [int] NULL,
	[LastPostShallow] [datetime] NULL,
	[AverageCommentDateTimeShallow] [datetime] NULL,
	[OverrideContents] [varchar](200) NULL,
	[HideOwner] [bit] NULL,
	[PicMiscK] [int] NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[UrlFragment] [varchar](255) NULL,
	[ThreadK] [int] NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Article]') AND name = N'_dta_index_Article_7_1453248232__K7_K13_K5_K8_1_2_4_6_9_10_11_12_14_15_16_17_19_20_21_22_23_24_25_26_27_28_29_30_31_32')
CREATE NONCLUSTERED INDEX [_dta_index_Article_7_1453248232__K7_K13_K5_K8_1_2_4_6_9_10_11_12_14_15_16_17_19_20_21_22_23_24_25_26_27_28_29_30_31_32] ON [Article] 
(
	[Status] ASC,
	[EventK] ASC,
	[OwnerUsrK] ASC,
	[EnabledDateTime] ASC
)
INCLUDE ( [AddedDateTime],
[AverageCommentDateTime],
[AverageCommentDateTimeShallow],
[CountryK],
[EnabledUsrK],
[HasSingleThread],
[HideOwner],
[IsWorldwide],
[K],
[LastPost],
[LastPostShallow],
[OverrideContents],
[ParentObjectK],
[ParentObjectType],
[Pic],
[PicMiscK],
[PicPhotoK],
[PicState],
[PlaceK],
[Relevance],
[Title],
[TotalComments],
[TotalCommentsShallow],
[UrlFragment],
[VenueK],
[Views]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Article]') AND name = N'Article96')
CREATE NONCLUSTERED INDEX [Article96] ON [Article] 
(
	[CountryK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the article. Less that 100 characters.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Title'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'Summary'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Summary - couple of sentances about the article. Less than 30 words.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Summary'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'Pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cropped image 100*100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'OwnerUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Owner' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'OwnerUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'AddedDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When the artical was originally added' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'AddedDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status - New, Edit, Enabled, Disabled' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'EnabledDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When the article was marked as enabled' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'EnabledDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'EnabledUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Who marked the article as enabled?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'EnabledUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'Relevance'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What''s the geographic relevance? 0=All, 1=Country, 2=Region, 3=Place, 4=Venue, 5=Event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Relevance'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'ParentObjectType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What''s the type of the parent object?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'ParentObjectType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'ParentObjectK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What''s the key of the parent object?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'ParentObjectK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Event that this article is relevant to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'VenueK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Venue that this article is relevant to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'VenueK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'PlaceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Place that this article is relevant to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'PlaceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'CountryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Place that this article is relevant to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'CountryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'HasSingleThread'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does the article have a single discussion thread, or does each paragraph have it''s own thread?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'HasSingleThread'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'AdminNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Admin note, to be edited by admins at Edit stage, and visible to the author' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'AdminNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'Views'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of views the article has had' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Views'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'IsWorldwide'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does the artical have worldwide relevance?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'IsWorldwide'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'TotalComments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of comments in all threads in this article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'TotalComments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'LastPost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime of thge last comments posted in this article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'LastPost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'AverageCommentDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average date/time of all the comments posted ion this article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'AverageCommentDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'OverrideContents'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Filename of the user control that will be displayed instead of the paragraphs.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'OverrideContents'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'HideOwner'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Shall we hide the owner image?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'HideOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'UrlFragment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The url fragment - so that the url can be generated without accessing parent database records' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'UrlFragment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', N'COLUMN',N'ThreadK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Main public thread (first one started)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'ThreadK'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1453248232_13_1_5' and object_id = object_id(N'[Article]'))
CREATE STATISTICS [_dta_stat_1453248232_13_1_5] ON [Article]([EventK], [K], [OwnerUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1453248232_5_7' and object_id = object_id(N'[Article]'))
CREATE STATISTICS [_dta_stat_1453248232_5_7] ON [Article]([OwnerUsrK], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1453248232_5_7_1' and object_id = object_id(N'[Article]'))
CREATE STATISTICS [_dta_stat_1453248232_5_7_1] ON [Article]([OwnerUsrK], [Status], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1453248232_7_14_5_8' and object_id = object_id(N'[Article]'))
CREATE STATISTICS [_dta_stat_1453248232_7_14_5_8] ON [Article]([Status], [VenueK], [OwnerUsrK], [EnabledDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1453248232_7_15_5_8' and object_id = object_id(N'[Article]'))
CREATE STATISTICS [_dta_stat_1453248232_7_15_5_8] ON [Article]([Status], [PlaceK], [OwnerUsrK], [EnabledDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1453248232_7_20_5_8' and object_id = object_id(N'[Article]'))
CREATE STATISTICS [_dta_stat_1453248232_7_20_5_8] ON [Article]([Status], [IsWorldwide], [OwnerUsrK], [EnabledDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1453248232_8_7_13' and object_id = object_id(N'[Article]'))
CREATE STATISTICS [_dta_stat_1453248232_8_7_13] ON [Article]([EnabledDateTime], [Status], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1453248232_8_7_14' and object_id = object_id(N'[Article]'))
CREATE STATISTICS [_dta_stat_1453248232_8_7_14] ON [Article]([EnabledDateTime], [Status], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1453248232_8_7_15' and object_id = object_id(N'[Article]'))
CREATE STATISTICS [_dta_stat_1453248232_8_7_15] ON [Article]([EnabledDateTime], [Status], [PlaceK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1453248232_8_7_20' and object_id = object_id(N'[Article]'))
CREATE STATISTICS [_dta_stat_1453248232_8_7_20] ON [Article]([EnabledDateTime], [Status], [IsWorldwide])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Article', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article'
GO
/****** Object:  Table [dbo].[Event]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Event]') AND type in (N'U'))
BEGIN
CREATE TABLE [Event](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[ShortDetailsHtml] [text] NULL,
	[LongDetailsHtml] [text] NULL,
	[LongDetailsPlain] [bit] NULL,
	[Pic] [uniqueidentifier] NULL,
	[DateTime] [datetime] NULL,
	[VenueK] [int] NULL,
	[AdminNote] [text] NULL,
	[Capacity] [int] NULL,
	[OwnerUsrK] [int] NULL,
	[PicNew] [uniqueidentifier] NULL,
	[TotalComments] [int] NULL,
	[TotalCommentsShallow] [int] NULL,
	[LastPostShallow] [datetime] NULL,
	[LastPost] [datetime] NULL,
	[AverageCommentDateTime] [datetime] NULL,
	[AverageCommentDateTimeShallow] [datetime] NULL,
	[TotalPhotos] [int] NULL,
	[LivePhotos] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[HasGuestlist] [bit] NULL,
	[LastLivePhoto] [datetime] NULL,
	[HasSpotter] [bit] NULL,
	[GuestlistOpen] [bit] NULL,
	[GuestlistFinished] [bit] NULL,
	[GuestlistLimit] [int] NULL,
	[GuestlistCount] [int] NULL,
	[GuestlistDetails] [text] NULL,
	[GuestlistPromoterK] [int] NULL,
	[GuestlistRegularPrice] [float] NULL,
	[GuestlistPrice] [float] NULL,
	[GuestlistPromotion] [bit] NULL,
	[StartTime] [int] NULL,
	[AdminEmail] [varchar](50) NULL,
	[Donated] [bit] NULL,
	[IsDescriptionText] [bit] NULL,
	[IsNew] [bit] NULL,
	[IsDescriptionCleanHtml] [bit] NULL,
	[IsEdited] [bit] NULL,
	[DuplicateGuid] [uniqueidentifier] NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[PicMiscK] [int] NULL,
	[UrlFragment] [varchar](255) NULL,
	[MusicTypesString] [text] NULL,
	[ModeratorUsrK] [int] NULL,
	[MustBuyTicket] [bit] NULL,
	[BuyableLockDateTime] [datetime] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'_dta_index_Event_7_1465772279__K12_K9_K1_K34_K45_K39_K40_K44_K43_K37_K38_2_8_63')
CREATE NONCLUSTERED INDEX [_dta_index_Event_7_1465772279__K12_K9_K1_K34_K45_K39_K40_K44_K43_K37_K38_2_8_63] ON [Event] 
(
	[VenueK] ASC,
	[DateTime] ASC,
	[K] ASC,
	[HasGuestlist] ASC,
	[GuestlistPromotion] ASC,
	[GuestlistLimit] ASC,
	[GuestlistCount] ASC,
	[GuestlistPrice] ASC,
	[GuestlistRegularPrice] ASC,
	[GuestlistOpen] ASC,
	[GuestlistFinished] ASC
)
INCLUDE ( [Name],
[Pic],
[UrlFragment]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'_dta_index_Event_7_1465772279__K9_K12_K1')
CREATE NONCLUSTERED INDEX [_dta_index_Event_7_1465772279__K9_K12_K1] ON [Event] 
(
	[DateTime] ASC,
	[VenueK] ASC,
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'_dta_index_Event_7_1465772279__K9_K36_K32_K1_K12')
CREATE NONCLUSTERED INDEX [_dta_index_Event_7_1465772279__K9_K36_K32_K1_K12] ON [Event] 
(
	[DateTime] ASC,
	[HasSpotter] ASC,
	[LivePhotos] ASC,
	[K] ASC,
	[VenueK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'_dta_index_Event_7_1465772279__K9D_K46_K52D_K32D_K16D_K36_1_2_8_12_53_55_63')
CREATE NONCLUSTERED INDEX [_dta_index_Event_7_1465772279__K9D_K46_K52D_K32D_K16D_K36_1_2_8_12_53_55_63] ON [Event] 
(
	[DateTime] DESC,
	[StartTime] ASC,
	[Donated] DESC,
	[LivePhotos] DESC,
	[Capacity] DESC,
	[HasSpotter] ASC
)
INCLUDE ( [VenueK],
[K],
[IsDescriptionCleanHtml],
[IsDescriptionText],
[Name],
[Pic],
[UrlFragment]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'_dta_index_Event_8_1465772279__K12_K9_K1_K46_K52_K16_2_32')
CREATE NONCLUSTERED INDEX [_dta_index_Event_8_1465772279__K12_K9_K1_K46_K52_K16_2_32] ON [Event] 
(
	[VenueK] ASC,
	[DateTime] ASC,
	[K] ASC,
	[StartTime] ASC,
	[Donated] ASC,
	[Capacity] ASC
)
INCLUDE ( [LivePhotos],
[Name]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'_dta_index_Event_8_1465772279__K12_K9_K1_K46_K52_K32_K16_2_8_53_55_63')
CREATE NONCLUSTERED INDEX [_dta_index_Event_8_1465772279__K12_K9_K1_K46_K52_K32_K16_2_8_53_55_63] ON [Event] 
(
	[VenueK] ASC,
	[DateTime] ASC,
	[K] ASC,
	[StartTime] ASC,
	[Donated] ASC,
	[LivePhotos] ASC,
	[Capacity] ASC
)
INCLUDE ( [IsDescriptionCleanHtml],
[IsDescriptionText],
[UrlFragment],
[Name],
[Pic]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'_dta_index_Event_8_1465772279__K18_K1_K9_K46_K52_K32_K16_2_5_8_12_19_20_21_22_23_24_25_31_33_34_35_36_37_38_39_40_42_43_44_45_')
CREATE NONCLUSTERED INDEX [_dta_index_Event_8_1465772279__K18_K1_K9_K46_K52_K32_K16_2_5_8_12_19_20_21_22_23_24_25_31_33_34_35_36_37_38_39_40_42_43_44_45_] ON [Event] 
(
	[OwnerUsrK] ASC,
	[K] ASC,
	[DateTime] ASC,
	[StartTime] ASC,
	[Donated] ASC,
	[LivePhotos] ASC,
	[Capacity] ASC
)
INCLUDE ( [AverageCommentDateTimeShallow],
[AverageCommentDateTime],
[AddedDateTime],
[AdminEmail],
[DuplicateGuid],
[IsDescriptionText],
[IsEdited],
[IsNew],
[IsDescriptionCleanHtml],
[HasSpotter],
[HasGuestlist],
[GuestlistPromotion],
[GuestlistPromoterK],
[GuestlistRegularPrice],
[GuestlistFinished],
[GuestlistLimit],
[GuestlistOpen],
[GuestlistPrice],
[GuestlistCount],
[LongDetailsPlain],
[Name],
[ModeratorUsrK],
[MustBuyTicket],
[LastPostShallow],
[LastPost],
[LastLivePhoto],
[Pic],
[PicPhotoK],
[PicState],
[PicNew],
[PicMiscK],
[UrlFragment],
[TotalPhotos],
[TotalCommentsShallow],
[TotalComments],
[VenueK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'_dta_index_Event_8_1465772279__K33')
CREATE NONCLUSTERED INDEX [_dta_index_Event_8_1465772279__K33] ON [Event] 
(
	[AddedDateTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'_dta_index_Event_8_1465772279__K9_K46_K52D_K16D_1_2_5_8_12_18_19_20_21_22_23_24_25_31_32_33_34_35_36_37_38_39_40_42_43_44_45_')
CREATE NONCLUSTERED INDEX [_dta_index_Event_8_1465772279__K9_K46_K52D_K16D_1_2_5_8_12_18_19_20_21_22_23_24_25_31_32_33_34_35_36_37_38_39_40_42_43_44_45_] ON [Event] 
(
	[DateTime] ASC,
	[StartTime] ASC,
	[Donated] DESC,
	[Capacity] DESC
)
INCLUDE ( [AdminEmail],
[AddedDateTime],
[AverageCommentDateTime],
[AverageCommentDateTimeShallow],
[DuplicateGuid],
[K],
[GuestlistCount],
[GuestlistPrice],
[GuestlistOpen],
[GuestlistLimit],
[GuestlistFinished],
[HasGuestlist],
[GuestlistPromoterK],
[GuestlistPromotion],
[GuestlistRegularPrice],
[HasSpotter],
[IsDescriptionText],
[IsDescriptionCleanHtml],
[IsNew],
[IsEdited],
[LongDetailsPlain],
[ModeratorUsrK],
[LivePhotos],
[MustBuyTicket],
[Name],
[LastLivePhoto],
[LastPost],
[LastPostShallow],
[OwnerUsrK],
[PicNew],
[PicMiscK],
[PicPhotoK],
[PicState],
[Pic],
[TotalCommentsShallow],
[TotalComments],
[TotalPhotos],
[UrlFragment],
[VenueK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'Event47')
CREATE NONCLUSTERED INDEX [Event47] ON [Event] 
(
	[K] ASC,
	[Pic] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'Event4848')
CREATE NONCLUSTERED INDEX [Event4848] ON [Event] 
(
	[DateTime] ASC,
	[VenueK] ASC,
	[HasGuestlist] ASC,
	[GuestlistOpen] ASC,
	[GuestlistFinished] ASC,
	[GuestlistLimit] ASC,
	[GuestlistCount] ASC,
	[GuestlistRegularPrice] ASC,
	[GuestlistPrice] ASC,
	[GuestlistPromotion] ASC,
	[K] ASC,
	[Name] ASC,
	[Pic] ASC,
	[UrlFragment] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'Event49')
CREATE NONCLUSTERED INDEX [Event49] ON [Event] 
(
	[VenueK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'Event4949')
CREATE NONCLUSTERED INDEX [Event4949] ON [Event] 
(
	[K] ASC,
	[VenueK] ASC,
	[Name] ASC,
	[Pic] ASC,
	[DateTime] ASC,
	[UrlFragment] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Event]') AND name = N'Event50')
CREATE NONCLUSTERED INDEX [Event50] ON [Event] 
(
	[VenueK] ASC,
	[K] ASC,
	[Name] ASC,
	[DateTime] ASC,
	[UrlFragment] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'ShortDetailsHtml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'All the details about the event for summary boxes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'ShortDetailsHtml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'LongDetailsHtml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'All the details about the event main event page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'LongDetailsHtml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'LongDetailsPlain'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the longDetails plain html? - e.g. rendered outsite the yellow box?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'LongDetailsPlain'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'Pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cropped image between 75*75 and 100*100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date that the event takes place' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'VenueK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to one Venue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'VenueK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'AdminNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Note for admins only' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'AdminNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'Capacity'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capacity of the event (max number of people that can attent)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Capacity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'OwnerUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that added this event (0 if added by admin)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'OwnerUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'PicNew'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the owner wants to upload another image after the this has been enabled, it is stored here' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'PicNew'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'TotalComments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'TotalComments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'LastPost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date/time of the last post that was posted in this board (including child objects)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'LastPost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'AverageCommentDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average date.time of all comments posted in this board (including child objects)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'AverageCommentDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'TotalPhotos'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of photos in the event (live + disabled + new)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'TotalPhotos'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'LivePhotos'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of live photos on this event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'LivePhotos'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'AddedDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was the event added to the system?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'AddedDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'HasGuestlist'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does the event have a guestlist?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'HasGuestlist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'LastLivePhoto'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the last photo was made live' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'LastLivePhoto'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'HasSpotter'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does the event have a spotter?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'HasSpotter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'GuestlistOpen'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the guestlist is running - the event owner can disable it when they want it closed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'GuestlistOpen'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'GuestlistFinished'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Once this is set to true, the owner can''t open the list again - they''ve been billed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'GuestlistFinished'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'GuestlistLimit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Limit the total number of people on the guestlist?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'GuestlistLimit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'GuestlistCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of people currently on the list' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'GuestlistCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'GuestlistDetails'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Html details about the guestlist' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'GuestlistDetails'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'GuestlistPromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Promoter that controls this guestlist' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'GuestlistPromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'GuestlistRegularPrice'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Regular (non-guestlist) price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'GuestlistRegularPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'GuestlistPrice'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reduced guestlist price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'GuestlistPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'GuestlistPromotion'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the guestlist promoted on the front page of the site?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'GuestlistPromotion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'StartTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When is the event? Morning, Daytime or Evening?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'AdminEmail'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The email address of the admin contact for sorting spoters with guestlists' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'AdminEmail'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'Donated'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Donated - highlight the event, and give it a duck' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Donated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'IsDescriptionText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the description text or html?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'IsDescriptionText'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'IsNew'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the event been seen by an admin or not?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'IsNew'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'IsDescriptionCleanHtml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Should the description just have "\n" replaced with "&lt;br&gt;"? (This overrides IsDescriptionText)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'IsDescriptionCleanHtml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'IsEdited'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the event been recently edited?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'IsEdited'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid used to ensure duplicate events don''t get posted if the user refreshes the page after saving.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'UrlFragment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The url fragment - so that the url can be generated without accessing parent database records' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'UrlFragment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'MusicTypesString'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Music types, comma seperated' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'MusicTypesString'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'ModeratorUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The moderator that has been assigned to moderate this event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'ModeratorUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'MustBuyTicket'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you have to own a ticket to be listed in the "Who''s coming" box?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'MustBuyTicket'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', N'COLUMN',N'BuyableLockDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time stamp to record when someone is trying to purchase an IBuyable item that is linked to this Bob. No lock = DateTime.MinValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'BuyableLockDateTime'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_12_9_46_52_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_12_9_46_52_16] ON [Event]([K], [VenueK], [DateTime], [StartTime], [Donated], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_39_40_44_43_12_34_45_37_38' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_39_40_44_43_12_34_45_37_38] ON [Event]([K], [GuestlistLimit], [GuestlistCount], [GuestlistPrice], [GuestlistRegularPrice], [VenueK], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen], [GuestlistFinished])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_39_40_44_43_12_9_34' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_39_40_44_43_12_9_34] ON [Event]([K], [GuestlistLimit], [GuestlistCount], [GuestlistPrice], [GuestlistRegularPrice], [VenueK], [DateTime], [HasGuestlist])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_39_40_44_43_34_45_37' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_39_40_44_43_34_45_37] ON [Event]([K], [GuestlistLimit], [GuestlistCount], [GuestlistPrice], [GuestlistRegularPrice], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_46_52_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_46_52_16] ON [Event]([K], [StartTime], [Donated], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_46_52_32_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_46_52_32_16] ON [Event]([K], [StartTime], [Donated], [LivePhotos], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_9_18_46_52_32_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_9_18_46_52_32_16] ON [Event]([K], [DateTime], [OwnerUsrK], [StartTime], [Donated], [LivePhotos], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_9_32_36_46_52' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_9_32_36_46_52] ON [Event]([K], [DateTime], [LivePhotos], [HasSpotter], [StartTime], [Donated])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_9_32_46_52_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_9_32_46_52_16] ON [Event]([K], [DateTime], [LivePhotos], [StartTime], [Donated], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_9_34_45_37' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_9_34_45_37] ON [Event]([K], [DateTime], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_9_36' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_9_36] ON [Event]([K], [DateTime], [HasSpotter])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_1_9_46_52_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_1_9_46_52_16] ON [Event]([K], [DateTime], [StartTime], [Donated], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_12_2_9' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_12_2_9] ON [Event]([VenueK], [Name], [DateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_12_20' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_12_20] ON [Event]([VenueK], [TotalComments])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_12_9_1_46_52_32_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_12_9_1_46_52_32_16] ON [Event]([VenueK], [DateTime], [K], [StartTime], [Donated], [LivePhotos], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_12_9_32_1' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_12_9_32_1] ON [Event]([VenueK], [DateTime], [LivePhotos], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_12_9_32_36_1_46_52_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_12_9_32_36_1_46_52_16] ON [Event]([VenueK], [DateTime], [LivePhotos], [HasSpotter], [K], [StartTime], [Donated], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_12_9_34_45_37_38_1_39_40_44' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_12_9_34_45_37_38_1_39_40_44] ON [Event]([VenueK], [DateTime], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen], [GuestlistFinished], [K], [GuestlistLimit], [GuestlistCount], [GuestlistPrice])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_2_9' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_2_9] ON [Event]([Name], [DateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_32_1_12' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_32_1_12] ON [Event]([LivePhotos], [K], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_34_45_37_38_1_39_40_44_43' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_34_45_37_38_1_39_40_44_43] ON [Event]([HasGuestlist], [GuestlistPromotion], [GuestlistOpen], [GuestlistFinished], [K], [GuestlistLimit], [GuestlistCount], [GuestlistPrice], [GuestlistRegularPrice])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_36_1_12_9' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_36_1_12_9] ON [Event]([HasSpotter], [K], [VenueK], [DateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_36_12_9_32_46_52_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_36_12_9_32_46_52_16] ON [Event]([HasSpotter], [VenueK], [DateTime], [LivePhotos], [StartTime], [Donated], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_39_40_44_43_12_9_34_45_37' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_39_40_44_43_12_9_34_45_37] ON [Event]([GuestlistLimit], [GuestlistCount], [GuestlistPrice], [GuestlistRegularPrice], [VenueK], [DateTime], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_46_52_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_46_52_16] ON [Event]([StartTime], [Donated], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_46_52_32_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_46_52_32_16] ON [Event]([StartTime], [Donated], [LivePhotos], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_53_33' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_53_33] ON [Event]([IsDescriptionText], [AddedDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_53_54_58' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_53_54_58] ON [Event]([IsDescriptionText], [IsNew], [IsEdited])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_53_54_65' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_53_54_65] ON [Event]([IsDescriptionText], [IsNew], [ModeratorUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_53_58_65_54' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_53_58_65_54] ON [Event]([IsDescriptionText], [IsEdited], [ModeratorUsrK], [IsNew])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_54_65' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_54_65] ON [Event]([IsNew], [ModeratorUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_9_12_46_52_32_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_9_12_46_52_32_16] ON [Event]([DateTime], [VenueK], [StartTime], [Donated], [LivePhotos], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_9_32_1' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_9_32_1] ON [Event]([DateTime], [LivePhotos], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_9_32_36_1' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_9_32_36_1] ON [Event]([DateTime], [LivePhotos], [HasSpotter], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_9_32_36_46_52' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_9_32_36_46_52] ON [Event]([DateTime], [LivePhotos], [HasSpotter], [StartTime], [Donated])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_9_34_45_37_38_39_40_44_43' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_9_34_45_37_38_39_40_44_43] ON [Event]([DateTime], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen], [GuestlistFinished], [GuestlistLimit], [GuestlistCount], [GuestlistPrice], [GuestlistRegularPrice])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_9_46_12' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_9_46_12] ON [Event]([DateTime], [StartTime], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_9_46_52_16_12' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_9_46_52_16_12] ON [Event]([DateTime], [StartTime], [Donated], [Capacity], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_9_46_52_32_16' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_9_46_52_32_16] ON [Event]([DateTime], [StartTime], [Donated], [LivePhotos], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_9_46_52_32_16_18' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_9_46_52_32_16_18] ON [Event]([DateTime], [StartTime], [Donated], [LivePhotos], [Capacity], [OwnerUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1465772279_9_46_52_32_16_36_1' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_1465772279_9_46_52_32_16_36_1] ON [Event]([DateTime], [StartTime], [Donated], [LivePhotos], [Capacity], [HasSpotter], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_1_27_28_32_31_8_22_33_25_26' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_1_27_28_32_31_8_22_33_25_26] ON [Event]([K], [GuestlistLimit], [GuestlistCount], [GuestlistPrice], [GuestlistRegularPrice], [VenueK], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen], [GuestlistFinished])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_1_7_25_26_33_22_28_31_32_27' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_1_7_25_26_33_22_28_31_32_27] ON [Event]([K], [DateTime], [GuestlistOpen], [GuestlistFinished], [GuestlistPromotion], [HasGuestlist], [GuestlistCount], [GuestlistRegularPrice], [GuestlistPrice], [GuestlistLimit])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_1_7_8_34_36_10' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_1_7_8_34_36_10] ON [Event]([K], [DateTime], [VenueK], [StartTime], [Donated], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_22_1' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_22_1] ON [Event]([HasGuestlist], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_22_33_25_26' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_22_33_25_26] ON [Event]([HasGuestlist], [GuestlistPromotion], [GuestlistOpen], [GuestlistFinished])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_25_1_22_33_26_7_27_28_32' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_25_1_22_33_26_7_27_28_32] ON [Event]([GuestlistOpen], [K], [HasGuestlist], [GuestlistPromotion], [GuestlistFinished], [DateTime], [GuestlistLimit], [GuestlistCount], [GuestlistPrice])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_26_1_22_33' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_26_1_22_33] ON [Event]([GuestlistFinished], [K], [HasGuestlist], [GuestlistPromotion])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_27_1_22_33_25_26' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_27_1_22_33_25_26] ON [Event]([GuestlistLimit], [K], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen], [GuestlistFinished])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_28_1_22_33_25_26' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_28_1_22_33_25_26] ON [Event]([GuestlistCount], [K], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen], [GuestlistFinished])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_31_1_22_33_25_26_7_27_28' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_31_1_22_33_25_26_7_27_28] ON [Event]([GuestlistRegularPrice], [K], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen], [GuestlistFinished], [DateTime], [GuestlistLimit], [GuestlistCount])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_32_1_22_33_25_26_7_27' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_32_1_22_33_25_26_7_27] ON [Event]([GuestlistPrice], [K], [HasGuestlist], [GuestlistPromotion], [GuestlistOpen], [GuestlistFinished], [DateTime], [GuestlistLimit])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_33_1_22' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_33_1_22] ON [Event]([GuestlistPromotion], [K], [HasGuestlist])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_37_1' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_37_1] ON [Event]([IsDescriptionText], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_7_1_34_36_10' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_7_1_34_36_10] ON [Event]([DateTime], [K], [StartTime], [Donated], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_7_34_36_10' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_7_34_36_10] ON [Event]([DateTime], [StartTime], [Donated], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_7_34_36_20_10' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_7_34_36_20_10] ON [Event]([DateTime], [StartTime], [Donated], [LivePhotos], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_7_8_1_34_36_20_10' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_7_8_1_34_36_20_10] ON [Event]([DateTime], [VenueK], [K], [StartTime], [Donated], [LivePhotos], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_747865731_8_7_25_26_33_22_28_31_32' and object_id = object_id(N'[Event]'))
CREATE STATISTICS [_dta_stat_747865731_8_7_25_26_33_22_28_31_32] ON [Event]([VenueK], [DateTime], [GuestlistOpen], [GuestlistFinished], [GuestlistPromotion], [HasGuestlist], [GuestlistCount], [GuestlistRegularPrice], [GuestlistPrice])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Event', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'One single event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event'
GO
/****** Object:  Table [dbo].[UsrEventGuestlist]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UsrEventGuestlist]') AND type in (N'U'))
BEGIN
CREATE TABLE [UsrEventGuestlist](
	[UsrK] [int] NULL,
	[EventK] [int] NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [IX_UsrEventGuestlist] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC,
	[EventK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrEventGuestlist', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Usr table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrEventGuestlist', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrEventGuestlist', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Event table - an event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrEventGuestlist', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrEventGuestlist', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime when the usr signed up' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrEventGuestlist', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrEventGuestlist', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guestlist usr-event linking table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrEventGuestlist'
GO
/****** Object:  Table [dbo].[UsrEventSpotter]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UsrEventSpotter]') AND type in (N'U'))
BEGIN
CREATE TABLE [UsrEventSpotter](
	[UsrK] [int] NULL,
	[EventK] [int] NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[UsrEventSpotter]') AND name = N'IX_UsrEventSpotter')
CREATE NONCLUSTERED INDEX [IX_UsrEventSpotter] ON [UsrEventSpotter] 
(
	[UsrK] ASC,
	[EventK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuestlistCredit]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GuestlistCredit]') AND type in (N'U'))
BEGIN
CREATE TABLE [GuestlistCredit](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[PromoterK] [int] NULL,
	[DateTimeCreated] [datetime] NULL,
	[Credits] [int] NULL,
	[TotalPrice] [float] NULL,
	[Done] [bit] NULL,
	[DateTimeDone] [datetime] NULL,
	[BuyableLockDateTime] [datetime] NULL,
 CONSTRAINT [PK_GuestlistCredit] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GuestlistCredit', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GuestlistCredit', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GuestlistCredit', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the promoter table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GuestlistCredit', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GuestlistCredit', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime the credit request was created' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GuestlistCredit', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GuestlistCredit', N'COLUMN',N'Credits'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of credits bought' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GuestlistCredit', @level2type=N'COLUMN',@level2name=N'Credits'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GuestlistCredit', N'COLUMN',N'TotalPrice'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total price charged' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GuestlistCredit', @level2type=N'COLUMN',@level2name=N'TotalPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GuestlistCredit', N'COLUMN',N'Done'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the confirmation been received from paypal?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GuestlistCredit', @level2type=N'COLUMN',@level2name=N'Done'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GuestlistCredit', N'COLUMN',N'DateTimeDone'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the confirmation been received from paypal?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GuestlistCredit', @level2type=N'COLUMN',@level2name=N'DateTimeDone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GuestlistCredit', N'COLUMN',N'BuyableLockDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time stamp to record when someone is trying to purchase an IBuyable item that is linked to this Bob. No lock = DateTime.MinValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GuestlistCredit', @level2type=N'COLUMN',@level2name=N'BuyableLockDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GuestlistCredit', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guestlist credit top-up items' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GuestlistCredit'
GO
/****** Object:  Table [dbo].[PllayMobile]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PllayMobile]') AND type in (N'U'))
BEGIN
CREATE TABLE [PllayMobile](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Mobile] [varchar](100) NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK_PllayMobile] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Guest]') AND type in (N'U'))
BEGIN
CREATE TABLE [Guest](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[AddedDateTime] [datetime] NULL,
	[GuestEventK] [int] NULL,
	[MobileK] [int] NULL,
	[GuestPromotionK] [int] NULL,
	[Code] [varchar](5) NULL,
	[Attended] [bit] NULL,
	[Rating] [int] NULL,
 CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GuestClient]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GuestClient]') AND type in (N'U'))
BEGIN
CREATE TABLE [GuestClient](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[AddedDateTime] [datetime] NULL,
	[Email] [varchar](50) NULL,
	[TotalList] [int] NULL,
	[TotalAttended] [int] NULL,
	[TextPricePence] [int] NULL,
	[EventPricePounds] [int] NULL,
 CONSTRAINT [PK_GuestClient] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PllayEmail]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PllayEmail]') AND type in (N'U'))
BEGIN
CREATE TABLE [PllayEmail](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK_PllayEmail] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Admin]') AND type in (N'U'))
BEGIN
CREATE TABLE [Admin](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[UsrK] [int] NULL,
	[ObjectType] [int] NULL,
	[ObjectK] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Admin', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Admin', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the user table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Admin', N'COLUMN',N'ObjectType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Object type - 1=Country, 2=Place' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'ObjectType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Admin', N'COLUMN',N'ObjectK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key in object table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'ObjectK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Admin', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Specifies admin privilages for users' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin'
GO
/****** Object:  Table [dbo].[GuestList]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GuestList]') AND type in (N'U'))
BEGIN
CREATE TABLE [GuestList](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[GuestEventK] [int] NULL,
	[MobileK] [int] NULL,
	[GuestPromotionK] [int] NULL,
	[Code] [varchar](5) NULL,
	[Attended] [bit] NULL,
	[Rating] [int] NULL,
 CONSTRAINT [PK_GuestList] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Abuse]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Abuse]') AND type in (N'U'))
BEGIN
CREATE TABLE [Abuse](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[ReportUsrK] [int] NULL,
	[AbuseUsrK] [int] NULL,
	[ObjectType] [int] NULL,
	[ObjectK] [int] NULL,
	[ObjectString] [varchar](500) NULL,
	[ReportDescription] [varchar](500) NULL,
	[ReportDateTime] [datetime] NULL,
	[Status] [int] NULL,
	[ResolveDateTime] [datetime] NULL,
	[ResolveStatus] [int] NULL,
	[ResolveDescription] [varchar](500) NULL,
	[ResolveUsrK] [int] NULL,
 CONSTRAINT [PK_Abuse] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'ReportUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The usr reporting the abuse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'ReportUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'AbuseUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user doing the abuse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'AbuseUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'ObjectType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of the target object' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'ObjectType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'ObjectK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The K of the target object' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'ObjectK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'ObjectString'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'String reprasentation of the taget object - for use after the target has been deleted.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'ObjectString'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'ReportDescription'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text of the abuse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'ReportDescription'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'ReportDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the report was made' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'ReportDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Abuse was found = 1, NoAbuse = 2, Overturned = 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'ResolveDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was this report resolved?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'ResolveDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'ResolveStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What was the decision of the moderator?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'ResolveStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'ResolveDescription'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the resolution (if needed)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'ResolveDescription'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', N'COLUMN',N'ResolveUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The moderator that resolved the report' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse', @level2type=N'COLUMN',@level2name=N'ResolveUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Abuse', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reports of abuse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abuse'
GO
/****** Object:  Table [dbo].[Ancestor]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Ancestor]') AND type in (N'U'))
BEGIN
CREATE TABLE [Ancestor](
	[CobK] [int] NOT NULL,
	[AncestorCobK] [int] NOT NULL,
	[AncestorLevel] [int] NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Ancestor]') AND name = N'IX_Ancestor')
CREATE NONCLUSTERED INDEX [IX_Ancestor] ON [Ancestor] 
(
	[CobK] ASC,
	[AncestorCobK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuestMessage]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GuestMessage]') AND type in (N'U'))
BEGIN
CREATE TABLE [GuestMessage](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[AddedDateTime] [datetime] NULL,
	[DateTime] [datetime] NULL,
	[Message] [varchar](500) NULL,
	[GuestClientK] [int] NULL,
	[Sent] [bit] NULL,
	[RestrictToActive] [bit] NULL,
	[RestrictToAttended] [bit] NULL,
	[RestrictToNotAttended] [bit] NULL,
	[RestrictToHighRating] [bit] NULL,
	[RestrictionMinimumRating] [int] NULL,
	[RestrictToEvent] [bit] NULL,
	[RestrictionGuestEventK] [int] NULL,
	[RestrictToMusicType] [bit] NULL,
	[RestrictionMusicTypeK] [int] NULL,
	[RestrictToPlace] [bit] NULL,
	[RestrictionPlaceK] [int] NULL,
 CONSTRAINT [PK_GuestMessage] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompEntry]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CompEntry]') AND type in (N'U'))
BEGIN
CREATE TABLE [CompEntry](
	[CompK] [int] NULL,
	[UsrK] [int] NULL,
	[Answer] [int] NULL,
	[Winner] [bit] NULL,
	[Prize] [int] NULL,
	[WinnerThreadK] [int] NULL,
 CONSTRAINT [IX_CompEntry] UNIQUE NONCLUSTERED 
(
	[CompK] ASC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CompEntry', N'COLUMN',N'CompK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Comp table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompEntry', @level2type=N'COLUMN',@level2name=N'CompK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CompEntry', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Usr table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompEntry', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CompEntry', N'COLUMN',N'Answer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Answer - 1,2 or 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompEntry', @level2type=N'COLUMN',@level2name=N'Answer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CompEntry', N'COLUMN',N'Winner'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this entry a winner?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompEntry', @level2type=N'COLUMN',@level2name=N'Winner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CompEntry', N'COLUMN',N'Prize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What prize did they win? 1,2 or 3?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompEntry', @level2type=N'COLUMN',@level2name=N'Prize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CompEntry', N'COLUMN',N'WinnerThreadK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to PM thread with owner' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompEntry', @level2type=N'COLUMN',@level2name=N'WinnerThreadK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CompEntry', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Competition entry' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompEntry'
GO
/****** Object:  Table [dbo].[Async]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Async]') AND type in (N'U'))
BEGIN
CREATE TABLE [Async](
	[AsyncK] [int] IDENTITY(1,1) NOT NULL,
	[AsyncActive] [bit] NULL,
	[AsyncLastActivity] [datetime] NULL,
	[AsyncDesc] [varchar](50) NULL,
	[AsyncSuccessAtStart] [int] NULL,
	[AsyncFailAtStart] [int] NULL,
	[AsyncData] [varchar](50) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF__Async__rowguid__7C1A6C5A]  DEFAULT (newid()),
 CONSTRAINT [PK_Async] PRIMARY KEY CLUSTERED 
(
	[AsyncK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Async]') AND name = N'index_1993058136')
CREATE UNIQUE NONCLUSTERED INDEX [index_1993058136] ON [Async] 
(
	[rowguid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuestPromoter]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GuestPromoter]') AND type in (N'U'))
BEGIN
CREATE TABLE [GuestPromoter](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[AddedDateTime] [datetime] NULL,
	[Email] [varchar](50) NULL,
	[AverageGuestRating] [float] NULL,
	[TotalList] [int] NULL,
	[TotalAttended] [int] NULL,
 CONSTRAINT [PK_GuestPromoter] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Buddy]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Buddy]') AND type in (N'U'))
BEGIN
CREATE TABLE [Buddy](
	[UsrK] [int] NOT NULL,
	[BuddyUsrK] [int] NOT NULL,
	[FullBuddy] [bit] NULL,
	[LastPopupHoldOff] [datetime] NULL,
	[CanInvite] [bit] NULL,
	[CanBuddyInvite] [bit] NULL,
 CONSTRAINT [IX_Buddy] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC,
	[BuddyUsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Buddy]') AND name = N'Buddy12')
CREATE CLUSTERED INDEX [Buddy12] ON [Buddy] 
(
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Buddy]') AND name = N'_dta_index_Buddy_7_1691153070__K1_K3_K2')
CREATE NONCLUSTERED INDEX [_dta_index_Buddy_7_1691153070__K1_K3_K2] ON [Buddy] 
(
	[UsrK] ASC,
	[FullBuddy] ASC,
	[BuddyUsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Buddy]') AND name = N'_dta_index_Buddy_7_1691153070__K2_K3_K1_6')
CREATE NONCLUSTERED INDEX [_dta_index_Buddy_7_1691153070__K2_K3_K1_6] ON [Buddy] 
(
	[BuddyUsrK] ASC,
	[FullBuddy] ASC,
	[UsrK] ASC
)
INCLUDE ( [CanBuddyInvite]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Buddy', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that added the buddy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Buddy', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Buddy', N'COLUMN',N'BuddyUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The buddy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Buddy', @level2type=N'COLUMN',@level2name=N'BuddyUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Buddy', N'COLUMN',N'FullBuddy'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the buddy added this user to his buddy list?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Buddy', @level2type=N'COLUMN',@level2name=N'FullBuddy'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Buddy', N'COLUMN',N'LastPopupHoldOff'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the user asked not to be alerted by pop-up from this buddy? If so, this is set to the data/time that the request was made. For 15 mins pop-up alerts will not be sent.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Buddy', @level2type=N'COLUMN',@level2name=N'LastPopupHoldOff'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Buddy', N'COLUMN',N'CanInvite'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Can BuddyUsr invite Buddy to threads?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Buddy', @level2type=N'COLUMN',@level2name=N'CanInvite'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Buddy', N'COLUMN',N'CanBuddyInvite'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Can Buddy invite BuddyUsr to threads?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Buddy', @level2type=N'COLUMN',@level2name=N'CanBuddyInvite'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1691153070_2_1_3' and object_id = object_id(N'[Buddy]'))
CREATE STATISTICS [_dta_stat_1691153070_2_1_3] ON [Buddy]([BuddyUsrK], [UsrK], [FullBuddy])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1691153070_3_2' and object_id = object_id(N'[Buddy]'))
CREATE STATISTICS [_dta_stat_1691153070_3_2] ON [Buddy]([FullBuddy], [BuddyUsrK])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Buddy', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links one user to another' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Buddy'
GO
/****** Object:  Table [dbo].[GuestPromotion]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GuestPromotion]') AND type in (N'U'))
BEGIN
CREATE TABLE [GuestPromotion](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[AddedDateTime] [datetime] NULL,
	[GuestEventK] [int] NULL,
	[Type] [int] NULL,
	[GuestPromoterK] [int] NULL,
	[Name] [varchar](50) NULL,
	[TotalList] [int] NULL,
	[TotalAttended] [int] NULL,
	[Shortcut] [varchar](50) NULL,
 CONSTRAINT [PK_GuestPromotion] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Campaign]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Campaign]') AND type in (N'U'))
BEGIN
CREATE TABLE [Campaign](
	[CampaignK] [int] IDENTITY(1,1) NOT NULL,
	[CampaignTypeK] [int] NULL,
	[CampaignName] [varchar](500) NULL,
	[CampaignStart] [datetime] NULL,
	[CampaignEnd] [datetime] NULL,
	[CampaignCost] [float] NULL,
	[CampaignSales] [float] NULL,
	[CampaignSessions] [int] NULL,
	[CampaignUsers] [int] NULL,
	[IsPublic] [bit] NULL,
 CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED 
(
	[CampaignK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GuestWinner]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GuestWinner]') AND type in (N'U'))
BEGIN
CREATE TABLE [GuestWinner](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[AddedDateTime] [datetime] NULL,
	[GuestEventK] [int] NULL,
	[MobileK] [int] NULL,
	[Code] [char](5) NULL,
	[Claimed] [bit] NULL,
 CONSTRAINT [PK_GuestWinner] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CampaignType]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CampaignType]') AND type in (N'U'))
BEGIN
CREATE TABLE [CampaignType](
	[CampaignTypeK] [int] IDENTITY(1,1) NOT NULL,
	[CampaignTypeName] [varchar](500) NULL,
 CONSTRAINT [PK_CampaignType] PRIMARY KEY CLUSTERED 
(
	[CampaignTypeK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChatMessage]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ChatMessage]') AND type in (N'U'))
BEGIN
CREATE TABLE [ChatMessage](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[FromUsrK] [int] NULL,
	[ToUsrK] [int] NULL,
	[Text] [varchar](200) NULL,
	[DateTime] [datetime] NULL,
	[IsLol] [bit] NULL,
	[LolCommentK] [int] NULL,
	[IsPrivate] [bit] NULL,
	[PrivateThreadK] [int] NULL,
 CONSTRAINT [PK_ChatMessage] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ChatMessage]') AND name = N'IX_ChatMessage_2')
CREATE NONCLUSTERED INDEX [IX_ChatMessage_2] ON [ChatMessage] 
(
	[DateTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ChatMessage', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChatMessage', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ChatMessage', N'COLUMN',N'FromUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User that sent the message' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChatMessage', @level2type=N'COLUMN',@level2name=N'FromUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ChatMessage', N'COLUMN',N'ToUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is 0 for a public message. Private messages it''s the UsrK of the recipient.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChatMessage', @level2type=N'COLUMN',@level2name=N'ToUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ChatMessage', N'COLUMN',N'Text'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text of the message' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChatMessage', @level2type=N'COLUMN',@level2name=N'Text'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ChatMessage', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/time that the message was sent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChatMessage', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ChatMessage', N'COLUMN',N'IsLol'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this a LOL message?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChatMessage', @level2type=N'COLUMN',@level2name=N'IsLol'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ChatMessage', N'COLUMN',N'LolCommentK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this a LOL message?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChatMessage', @level2type=N'COLUMN',@level2name=N'LolCommentK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ChatMessage', N'COLUMN',N'IsPrivate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this a private chat message?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChatMessage', @level2type=N'COLUMN',@level2name=N'IsPrivate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ChatMessage', N'COLUMN',N'PrivateThreadK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this is a private chat message, this is the thread that it was posted to.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChatMessage', @level2type=N'COLUMN',@level2name=N'PrivateThreadK'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1739153241_2_3_1' and object_id = object_id(N'[ChatMessage]'))
CREATE STATISTICS [_dta_stat_1739153241_2_3_1] ON [ChatMessage]([FromUsrK], [ToUsrK], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1739153241_3_1' and object_id = object_id(N'[ChatMessage]'))
CREATE STATISTICS [_dta_stat_1739153241_3_1] ON [ChatMessage]([ToUsrK], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1739153241_3_2_5_1' and object_id = object_id(N'[ChatMessage]'))
CREATE STATISTICS [_dta_stat_1739153241_3_2_5_1] ON [ChatMessage]([ToUsrK], [FromUsrK], [DateTime], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1739153241_3_5_1' and object_id = object_id(N'[ChatMessage]'))
CREATE STATISTICS [_dta_stat_1739153241_3_5_1] ON [ChatMessage]([ToUsrK], [DateTime], [K])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ChatMessage', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chat messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChatMessage'
GO
/****** Object:  Table [dbo].[CobType]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CobType]') AND type in (N'U'))
BEGIN
CREATE TABLE [CobType](
	[CobTypeK] [int] IDENTITY(1,1) NOT NULL,
	[CobTypeName] [varchar](50) NULL,
	[CobTypeDefaultUserControl] [varchar](100) NULL,
	[CobTypeLongDesc] [varchar](250) NULL,
	[CobTypeShortDesc] [varchar](20) NULL,
	[CobTypeCssClassK] [int] NULL,
	[CobTypeClient] [int] NULL,
 CONSTRAINT [PK__CobType__21D600EE] PRIMARY KEY CLUSTERED 
(
	[CobTypeK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [Comment](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Text] [text] NULL,
	[DateTime] [datetime] NULL,
	[ThreadK] [int] NULL,
	[UsrK] [int] NULL,
	[Enabled] [bit] NULL,
	[DuplicateGuid] [uniqueidentifier] NULL,
	[IsEdited] [bit] NULL,
	[EditDateTime] [datetime] NULL,
	[LolCount] [int] NULL,
	[IndexInThread] [int] NULL,
	[Ip] [varchar](15) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Comment]') AND name = N'_dta_index_Comment_7_1787153412__K4_K11')
CREATE NONCLUSTERED INDEX [_dta_index_Comment_7_1787153412__K4_K11] ON [Comment] 
(
	[ThreadK] ASC,
	[IndexInThread] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Comment]') AND name = N'_dta_index_Comment_7_1787153412__K4_K11_K5_1')
CREATE NONCLUSTERED INDEX [_dta_index_Comment_7_1787153412__K4_K11_K5_1] ON [Comment] 
(
	[ThreadK] ASC,
	[IndexInThread] ASC,
	[UsrK] ASC
)
INCLUDE ( [K]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Comment]') AND name = N'Comment10')
CREATE NONCLUSTERED INDEX [Comment10] ON [Comment] 
(
	[UsrK] ASC,
	[DateTime] ASC,
	[ThreadK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Comment]') AND name = N'Comment26')
CREATE NONCLUSTERED INDEX [Comment26] ON [Comment] 
(
	[ThreadK] ASC,
	[DateTime] ASC,
	[K] ASC,
	[UsrK] ASC,
	[IndexInThread] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Comment]') AND name = N'Comment27')
CREATE NONCLUSTERED INDEX [Comment27] ON [Comment] 
(
	[DuplicateGuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Comment]') AND name = N'Comment34')
CREATE NONCLUSTERED INDEX [Comment34] ON [Comment] 
(
	[DateTime] ASC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'Text'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text of comment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'Text'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date / time posted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'ThreadK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links to one Thread' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'ThreadK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links to one User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'Enabled'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this is set to false, the comment will not be displayed (for disabling offensive posts)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid used to ensure duplicate messages don''t get posted if the user refreshes the page after posting a message.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'IsEdited'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the comment has been edited by it''s author, this is true' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'IsEdited'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'EditDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the comment has been edited by it''s author, this will show the date/time that the edit took place' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'EditDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'LolCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of users that Lol''ed at this comment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'LolCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'IndexInThread'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Index of thie comment in the thread' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'IndexInThread'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', N'COLUMN',N'Ip'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ip of the user when posted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment', @level2type=N'COLUMN',@level2name=N'Ip'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1787153412_11_4_5_3' and object_id = object_id(N'[Comment]'))
CREATE STATISTICS [_dta_stat_1787153412_11_4_5_3] ON [Comment]([IndexInThread], [ThreadK], [UsrK], [DateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1787153412_3_4_11' and object_id = object_id(N'[Comment]'))
CREATE STATISTICS [_dta_stat_1787153412_3_4_11] ON [Comment]([DateTime], [ThreadK], [IndexInThread])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1787153412_4_1_6' and object_id = object_id(N'[Comment]'))
CREATE STATISTICS [_dta_stat_1787153412_4_1_6] ON [Comment]([ThreadK], [K], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1787153412_4_11_1' and object_id = object_id(N'[Comment]'))
CREATE STATISTICS [_dta_stat_1787153412_4_11_1] ON [Comment]([ThreadK], [IndexInThread], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1787153412_4_6' and object_id = object_id(N'[Comment]'))
CREATE STATISTICS [_dta_stat_1787153412_4_6] ON [Comment]([ThreadK], [Enabled])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1787153412_6_3' and object_id = object_id(N'[Comment]'))
CREATE STATISTICS [_dta_stat_1787153412_6_3] ON [Comment]([Enabled], [DateTime])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Comment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Comment - discussion comment either under a photo or a thread' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comment'
GO
/****** Object:  Table [dbo].[IncomingSms]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IncomingSms]') AND type in (N'U'))
BEGIN
CREATE TABLE [IncomingSms](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Message] [varchar](400) NULL,
	[DateTime] [datetime] NULL,
	[MobileK] [int] NULL,
	[ServiceType] [int] NULL,
 CONSTRAINT [PK_IncomingSms] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IncomingSms', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IncomingSms', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IncomingSms', N'COLUMN',N'Message'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text of the text message (should start "tonight")' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IncomingSms', @level2type=N'COLUMN',@level2name=N'Message'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IncomingSms', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the message arrived' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IncomingSms', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IncomingSms', N'COLUMN',N'MobileK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The mobile number that this sms came from.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IncomingSms', @level2type=N'COLUMN',@level2name=N'MobileK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IncomingSms', N'COLUMN',N'ServiceType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Incoming type - Tonight or Pllay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IncomingSms', @level2type=N'COLUMN',@level2name=N'ServiceType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IncomingSms', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table where all incoming sms''s are logged' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IncomingSms'
GO
/****** Object:  Table [dbo].[CommentAlert]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CommentAlert]') AND type in (N'U'))
BEGIN
CREATE TABLE [CommentAlert](
	[UsrK] [int] NULL,
	[ParentObjectType] [int] NULL,
	[ParentObjectK] [int] NULL,
 CONSTRAINT [IX_CommentAlert] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC,
	[ParentObjectType] ASC,
	[ParentObjectK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[CommentAlert]') AND name = N'CommentAlert7')
CREATE CLUSTERED INDEX [CommentAlert7] ON [CommentAlert] 
(
	[ParentObjectK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CommentAlert', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Usr table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CommentAlert', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CommentAlert', N'COLUMN',N'ParentObjectType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Photo=1, Event=2, Venue=4, Place=5, Thread=6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CommentAlert', @level2type=N'COLUMN',@level2name=N'ParentObjectType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CommentAlert', N'COLUMN',N'ParentObjectK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key of parent object' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CommentAlert', @level2type=N'COLUMN',@level2name=N'ParentObjectK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CommentAlert', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Alerts to send emails when comments are posted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CommentAlert'
GO
/****** Object:  Table [dbo].[BannerStat]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BannerStat]') AND type in (N'U'))
BEGIN
CREATE TABLE [BannerStat](
	[BannerK] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Hits] [int] NULL,
	[Clicks] [int] NULL,
	[HitsTargetted] [int] NULL,
	[HitsPlaceTargetted] [int] NULL,
	[HitsMusicTargetted] [int] NULL,
	[ClicksPlaceTargetted] [int] NULL,
	[ClicksMusicTargetted] [int] NULL,
 CONSTRAINT [IX_BannerStat] UNIQUE NONCLUSTERED 
(
	[BannerK] ASC,
	[Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[BannerStat]') AND name = N'_dta_index_BannerStat_c_7_1227867441__K2_K1')
CREATE CLUSTERED INDEX [_dta_index_BannerStat_c_7_1227867441__K2_K1] ON [BannerStat] 
(
	[Date] ASC,
	[BannerK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerStat', N'COLUMN',N'BannerK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tha banner that this stat is recording' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerStat', @level2type=N'COLUMN',@level2name=N'BannerK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerStat', N'COLUMN',N'Date'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that these stats were recorded in' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerStat', @level2type=N'COLUMN',@level2name=N'Date'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerStat', N'COLUMN',N'Hits'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of times that the banner was displayed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerStat', @level2type=N'COLUMN',@level2name=N'Hits'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerStat', N'COLUMN',N'Clicks'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of times that the banner was clicked on - must remind user that this may not be recorded if they don''t link to the required url.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerStat', @level2type=N'COLUMN',@level2name=N'Clicks'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerStat', N'COLUMN',N'HitsTargetted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of times that the banner was displayed on a relevant page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerStat', @level2type=N'COLUMN',@level2name=N'HitsTargetted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerStat', N'COLUMN',N'HitsPlaceTargetted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of times that the banner was displayed on a place-relevant page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerStat', @level2type=N'COLUMN',@level2name=N'HitsPlaceTargetted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerStat', N'COLUMN',N'HitsMusicTargetted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of times that the banner was displayed on a music-relevant page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerStat', @level2type=N'COLUMN',@level2name=N'HitsMusicTargetted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerStat', N'COLUMN',N'ClicksPlaceTargetted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of times that the banner was clicked after being displayed on a place-relevant page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerStat', @level2type=N'COLUMN',@level2name=N'ClicksPlaceTargetted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerStat', N'COLUMN',N'ClicksMusicTargetted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of times that the banner was clicked after being displayed on a music-relevant page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerStat', @level2type=N'COLUMN',@level2name=N'ClicksMusicTargetted'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1227867441_5_1_2' and object_id = object_id(N'[BannerStat]'))
CREATE STATISTICS [_dta_stat_1227867441_5_1_2] ON [BannerStat]([HitsTargetted], [BannerK], [Date])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerStat', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This tracks the hits / clicks each benner gets for each day it''s online' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerStat'
GO
/****** Object:  Table [dbo].[CssClass]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CssClass]') AND type in (N'U'))
BEGIN
CREATE TABLE [CssClass](
	[CssClassK] [int] NOT NULL,
	[CssClassSuffix] [varchar](50) NULL,
	[CssClassShortDesc] [varchar](20) NULL,
	[CssClassName] [varchar](50) NULL,
 CONSTRAINT [PK__CssClass__24B26D99] PRIMARY KEY CLUSTERED 
(
	[CssClassK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesStatusChange]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SalesStatusChange]') AND type in (N'U'))
BEGIN
CREATE TABLE [SalesStatusChange](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[DuplicateGuid] [uniqueidentifier] NOT NULL,
	[UsrK] [int] NOT NULL,
	[PromoterK] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_SalesStatusChange] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesStatusChange', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesStatusChange', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesStatusChange', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Duplicate guid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesStatusChange', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesStatusChange', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sales person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesStatusChange', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesStatusChange', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The promoter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesStatusChange', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesStatusChange', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date time of the activity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesStatusChange', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesStatusChange', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 = NewProactiveClient, 2 = NewActiveClient' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesStatusChange', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesStatusChange', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logs changes in sales status, required for reports' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesStatusChange'
GO
/****** Object:  Table [dbo].[InvoiceItem]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[InvoiceItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [InvoiceItem](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceK] [int] NULL,
	[Type] [int] NULL,
	[KeyData] [int] NULL,
	[CustomData] [varchar](255) NULL,
	[ItemProcessed] [bit] NULL,
	[Description] [varchar](255) NULL,
	[Price] [float] NULL,
	[Vat] [float] NULL,
	[Total] [float] NULL,
	[RevenueStartDate] [datetime] NULL,
	[RevenueEndDate] [datetime] NULL,
	[VatCode] [int] NULL,
	[BuyableObjectType] [int] NULL,
	[BuyableObjectK] [int] NULL,
 CONSTRAINT [PK_InvoiceItem] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'InvoiceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The invoice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'InvoiceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of the invoiceitem (Misc=0, Banner=1, etc.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'KeyData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key of the item (e.g. BannerK)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'KeyData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'CustomData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional data needed to enable the item on the site' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'CustomData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'ItemProcessed'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the code been processed?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'ItemProcessed'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the item (for when there isn''t a code)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'Price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price excluding VAT (+ve for invoices, -ve for credits)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'Price'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'Vat'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vat (+ve for invoices, -ve for credits)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'Vat'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'Total'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price including VAT (+ve for invoices, -ve for credits)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'Total'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'RevenueStartDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The revenue start date of the invoice item' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'RevenueStartDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'RevenueEndDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The revenue end date of the invoice item' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'RevenueEndDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'VatCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'T0, T1, T9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'VatCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'BuyableObjectType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The IBuyable Bob type of that the invoiceitem points to (Banner=1, etc.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'BuyableObjectType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', N'COLUMN',N'BuyableObjectK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The IBuyable ObjectType reference Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem', @level2type=N'COLUMN',@level2name=N'BuyableObjectK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Invoice / credit note line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItem'
GO
/****** Object:  Table [dbo].[GuestEvent]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GuestEvent]') AND type in (N'U'))
BEGIN
CREATE TABLE [GuestEvent](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[GuestClientK] [int] NULL,
	[PlaceK] [int] NULL,
	[MusicTypeK] [int] NULL,
	[Name] [varchar](50) NULL,
	[AddedDateTime] [datetime] NULL,
	[Date] [datetime] NULL,
	[Email] [varchar](50) NULL,
	[HasReminder] [bit] NULL,
	[ReminderDateTime] [datetime] NULL,
	[ReminderMessage] [varchar](500) NULL,
	[ReminderSent] [bit] NULL,
	[CodeDateTime] [datetime] NULL,
	[CodeMessage] [varchar](500) NULL,
	[CodeSent] [bit] NULL,
	[ConfirmationMessage] [varchar](500) NULL,
	[AttendedListComplete] [bit] NULL,
	[HasWinner] [bit] NULL,
	[WinnerCount] [int] NULL,
	[WinnerMessage] [varchar](500) NULL,
	[WinnerDateTime] [datetime] NULL,
	[WinnerSent] [bit] NULL,
	[UnclaimedWinnerMessage] [varchar](500) NULL,
	[ClaimedWinnersComplete] [bit] NULL,
	[TotalList] [int] NULL,
	[TotalAttended] [int] NULL,
	[ListClosedMessage] [varchar](500) NULL,
	[AfterEventMessage] [varchar](500) NULL,
 CONSTRAINT [PK_GuestEvent] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OutgoingSms]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[OutgoingSms]') AND type in (N'U'))
BEGIN
CREATE TABLE [OutgoingSms](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NULL,
	[Type] [int] NULL,
	[IncomingSmsK] [int] NULL,
	[PostString] [varchar](500) NULL,
	[Message] [varchar](400) NULL,
	[ErrorCode] [int] NULL,
	[ErrorText] [varchar](100) NULL,
	[SubmissionReference] [varchar](100) NULL,
	[ChargeType] [int] NULL,
	[Sent] [bit] NULL,
	[MobileK] [int] NULL,
	[ServiceType] [int] NULL,
 CONSTRAINT [PK_OutgoingSms] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datetime that the message was sent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type - the type of response' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'IncomingSmsK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If theis sms was triggered by an incoming sms, this is the link to the IncomingSms table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'IncomingSmsK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'PostString'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is the full string that was posted to iTagg to send the message' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'PostString'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'Message'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The message' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'Message'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'ErrorCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Did the sms send OK? 0=OK, !0=Error' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'ErrorCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'ErrorText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error string returned' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'ErrorText'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'SubmissionReference'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Submission reference returned by the sms server' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'SubmissionReference'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'ChargeType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How is this outgoing sms charged?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'ChargeType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'Sent'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the text been sent to the sms server properly?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'Sent'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'MobileK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The mobile that the message is being sent to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'MobileK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', N'COLUMN',N'ServiceType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Incoming type - Tonight or Pllay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms', @level2type=N'COLUMN',@level2name=N'ServiceType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OutgoingSms', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table where all outgoing sms''s are logged' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OutgoingSms'
GO
/****** Object:  Table [dbo].[Email]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Email]') AND type in (N'U'))
BEGIN
CREATE TABLE [Email](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Subject] [varchar](200) NULL,
	[FromEmail] [varchar](100) NULL,
	[FromName] [varchar](100) NULL,
	[Body] [text] NULL,
	[RedirectUrl] [varchar](200) NULL,
	[Active] [bit] NULL,
	[LastActivity] [datetime] NULL,
	[SuccessAtStart] [int] NULL,
	[FailAtStart] [int] NULL,
	[AsyncData] [varchar](50) NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BinRange]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BinRange]') AND type in (N'U'))
BEGIN
CREATE TABLE [BinRange](
	[Low] [int] NOT NULL,
	[High] [int] NOT NULL,
	[Type] [int] NULL,
	[Order] [int] NULL,
 CONSTRAINT [IX_BinRange] UNIQUE NONCLUSTERED 
(
	[Low] ASC,
	[High] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BinRange', N'COLUMN',N'Low'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The bottom number of the range' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BinRange', @level2type=N'COLUMN',@level2name=N'Low'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BinRange', N'COLUMN',N'High'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The top number of the range' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BinRange', @level2type=N'COLUMN',@level2name=N'High'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BinRange', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The card type: None=0, Delta=1, Electron=2, VisaPurchasing=3, Visa=4, MasterCard=5, Switch=6, Solo=7, JCB=8, Maestro=9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BinRange', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BinRange', N'COLUMN',N'Order'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order they are retreived from the database (for generics)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BinRange', @level2type=N'COLUMN',@level2name=N'Order'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BinRange', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Database to help guess the credit card type from bank identification number (BIN - the first 6 numbers)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BinRange'
GO
/****** Object:  Table [dbo].[Div]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Div]') AND type in (N'U'))
BEGIN
CREATE TABLE [Div](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Abbreviation] [varchar](5) NULL,
	[CountryName] [varchar](255) NULL,
	[CountryCode] [varchar](5) NULL,
	[Population] [float] NULL,
	[Area] [float] NULL,
	[CountryK] [int] NULL,
 CONSTRAINT [PK_'Div'] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventMusicType]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EventMusicType]') AND type in (N'U'))
BEGIN
CREATE TABLE [EventMusicType](
	[EventK] [int] NOT NULL,
	[MusicTypeK] [int] NOT NULL,
 CONSTRAINT [IX_EventMusicType] UNIQUE NONCLUSTERED 
(
	[EventK] ASC,
	[MusicTypeK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[EventMusicType]') AND name = N'_dta_index_EventMusicType_c_7_1899153811__K2_K1')
CREATE CLUSTERED INDEX [_dta_index_EventMusicType_c_7_1899153811__K2_K1] ON [EventMusicType] 
(
	[MusicTypeK] ASC,
	[EventK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventMusicType', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Event table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventMusicType', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventMusicType', N'COLUMN',N'MusicTypeK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the MusicType table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventMusicType', @level2type=N'COLUMN',@level2name=N'MusicTypeK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventMusicType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links an event to many MusicTypes - the Music types that will be played' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventMusicType'
GO
/****** Object:  Table [dbo].[Misc]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Misc]') AND type in (N'U'))
BEGIN
CREATE TABLE [Misc](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Guid] [uniqueidentifier] NULL,
	[Extention] [varchar](50) NULL,
	[UsrK] [int] NULL,
	[PromoterK] [int] NULL,
	[Size] [int] NULL,
	[DateTime] [datetime] NULL,
	[DateTimeExpires] [datetime] NULL,
	[Folder] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[Note] [text] NULL,
	[Xml] [text] NULL,
	[NeedsAuth] [bit] NULL,
	[BannerLinkTag] [bit] NULL,
	[BannerTargetTag] [bit] NULL,
	[BannerMotionTime] [int] NULL,
	[BannerMotionLoop] [bit] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[RequiredFlashVersion] [varchar](15) NULL,
 CONSTRAINT [PK_Misc] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Misc]') AND name = N'Misc39')
CREATE NONCLUSTERED INDEX [Misc39] ON [Misc] 
(
	[NeedsAuth] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'Guid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the file stored on the fileserver' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'Guid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'Extention'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'File extention' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'Extention'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The owner of the file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this file was uploaded by a promoter, this is the promoter account' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'Size'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'File size in bytes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'Size'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime the file was added' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'DateTimeExpires'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime the file expires (for /popup/misc/x retreiver)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'DateTimeExpires'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'Folder'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A user can store files in folders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'Folder'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The original name of the file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A note that is added to the file - editable and readable by the user that uploaded the file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'Xml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Xml meta data - e.g. banner admin verification data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'Xml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'NeedsAuth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this file waiting for admin to authorise it?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'NeedsAuth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'BannerLinkTag'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does the flash banner use the LinkTag arguement to link to a URL?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'BannerLinkTag'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'BannerTargetTag'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does the flash banner use the LinkTarget as the target when linking?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'BannerTargetTag'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'BannerMotionTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'BannerMotionTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'BannerMotionLoop'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'BannerMotionLoop'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'Width'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width in pixels if it''s an image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'Width'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'Height'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height in pixels if it''s an image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'Height'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', N'COLUMN',N'RequiredFlashVersion'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Override the required flash version for SWF''s' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc', @level2type=N'COLUMN',@level2name=N'RequiredFlashVersion'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1901249828_14_13' and object_id = object_id(N'[Misc]'))
CREATE STATISTICS [_dta_stat_1901249828_14_13] ON [Misc]([BannerLinkTag], [NeedsAuth])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Misc', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Misc files' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Misc'
GO
/****** Object:  Table [dbo].[Pla]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pla]') AND type in (N'U'))
BEGIN
CREATE TABLE [Pla](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Region] [varchar](255) NULL,
	[Country] [varchar](255) NULL,
	[CountryCode] [varchar](5) NULL,
	[Capital] [varchar](5) NULL,
	[Population] [float] NULL,
	[LatitudeString] [varchar](10) NULL,
	[LongitudeString] [varchar](10) NULL,
	[CountryK] [int] NULL,
	[RegionK] [int] NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
 CONSTRAINT [PK_'Pla'] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventOrganiser]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EventOrganiser]') AND type in (N'U'))
BEGIN
CREATE TABLE [EventOrganiser](
	[EventK] [int] NOT NULL,
	[OrganiserK] [int] NOT NULL,
 CONSTRAINT [IX_EventOrganiser] UNIQUE NONCLUSTERED 
(
	[EventK] ASC,
	[OrganiserK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Mobile]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Mobile]') AND type in (N'U'))
BEGIN
CREATE TABLE [Mobile](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[UsrK] [int] NULL,
	[Number] [varchar](20) NULL,
	[Network] [int] NULL,
	[TotalIncoming] [int] NULL,
	[TotalOutgoing] [int] NULL,
	[ListingsRequests] [int] NULL,
	[ListingsResponseFound] [int] NULL,
	[ListingsResponseNone] [int] NULL,
	[EventDetailRequests] [int] NULL,
	[VenueDetailRequests] [int] NULL,
	[TotalError] [int] NULL,
	[TotalFollowOn] [int] NULL,
	[SentIntro] [bit] NULL,
	[SentBusinessCard] [bit] NULL,
	[DateTimeCreated] [datetime] NULL,
	[DateTimeLastIncoming] [datetime] NULL,
	[TotalOutgoingFreeBudget] [int] NULL,
	[TotalOutgoingFreeAdvanced] [int] NULL,
	[TotalOutgoingFreePremier] [int] NULL,
	[TotalOutgoingFreePremierPorted] [int] NULL,
	[TotalOutgoingFreePremierPlus] [int] NULL,
	[TotalOutgoingPremium25p] [int] NULL,
	[TotalOutgoingPremium50p] [int] NULL,
	[TotalOutgoingPremium100p] [int] NULL,
	[TotalOutgoingPremium150p] [int] NULL,
	[IsPllay] [bit] NULL,
	[IsTonight] [bit] NULL,
	[ServiceType] [int] NULL,
	[GuestClientK] [int] NULL,
	[SendUpdates] [bit] NULL,
	[TotalIncomingMms] [int] NULL,
 CONSTRAINT [PK_Mobile] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Usr table if this mobile number has been linked to a user.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'Number'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The mobile number, incluting the 2 digit country code, and excluding the leading zero.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'Number'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'Network'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 2-digit int network id - 10=O2, 15=Vodaphone, 30=T-Mobile/Virgin, 33=Orange' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'Network'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalIncoming'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of incoming messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalIncoming'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalOutgoing'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of outgoing messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalOutgoing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'ListingsRequests'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of listings requests received' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'ListingsRequests'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'ListingsResponseFound'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of listings responses that found events (£1.50)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'ListingsResponseFound'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'ListingsResponseNone'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of listings responses that found no events (25p)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'ListingsResponseNone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'EventDetailRequests'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of event detail retuests (£1.50)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'EventDetailRequests'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'VenueDetailRequests'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of venue detail retuests (£1.50)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'VenueDetailRequests'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalError'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of error responses (25p)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalError'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalFollowOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of sms continuation messages (free - max 5 per £1.50 message)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalFollowOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'SentIntro'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Have the listing intro text''s been sent? (they only get sent on the first successfull £1.50 charge).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'SentIntro'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'SentBusinessCard'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Have the vCard been sent (can''t do this right now + they only get sent on the first successfull £1.50 charge).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'SentBusinessCard'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the forst incoming was received, and the account was created.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'DateTimeLastIncoming'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the last message arrived' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'DateTimeLastIncoming'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalOutgoingFreeBudget'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total outgoing FreeBudget messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalOutgoingFreeBudget'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalOutgoingFreeAdvanced'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total outgoing FreeAdvanced messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalOutgoingFreeAdvanced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalOutgoingFreePremier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total outgoing FreePremier messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalOutgoingFreePremier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalOutgoingFreePremierPorted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total outgoing FreePremierPorted messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalOutgoingFreePremierPorted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalOutgoingFreePremierPlus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total outgoing FreePremierPlus messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalOutgoingFreePremierPlus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalOutgoingPremium25p'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total outgoing Premium25p messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalOutgoingPremium25p'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalOutgoingPremium50p'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total outgoing Premium50p messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalOutgoingPremium50p'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalOutgoingPremium100p'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total outgoing Premium100p messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalOutgoingPremium100p'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalOutgoingPremium150p'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total outgoing Premium150p messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalOutgoingPremium150p'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'IsPllay'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this mobile signed up to the PLLAY updates?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'IsPllay'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'IsTonight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this mobile signed up to the TONIGHT updates?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'IsTonight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'ServiceType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Service type that this mobile is specific to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'ServiceType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'SendUpdates'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this mobile has opted out of further bulk updates, this is false.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'SendUpdates'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', N'COLUMN',N'TotalIncomingMms'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of incoming Mms''s that have been received from this number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile', @level2type=N'COLUMN',@level2name=N'TotalIncomingMms'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Mobile', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A mobile number (tracks vaious stats)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mobile'
GO
/****** Object:  Table [dbo].[ClubDetails]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ClubDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [ClubDetails](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Company] [nvarchar](255) NULL,
	[WebLink] [nvarchar](255) NULL,
	[Telephone] [nvarchar](64) NULL,
	[Address] [nvarchar](255) NULL,
	[PostCode] [nvarchar](10) NULL,
	[ExtraInfo] [nvarchar](255) NULL,
	[PromoterK] [int] NULL,
	[VenueK] [int] NULL,
	[DoneDate] [datetime] NULL,
	[Dead] [int] NULL,
 CONSTRAINT [PK_ClubDetails] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'Company'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Company' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'Company'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'WebLink'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WebLink' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'WebLink'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'Telephone'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telephone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'Telephone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'PostCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PostCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'ExtraInfo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ExtraInfo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'ExtraInfo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PromoterK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'VenueK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VenueK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'VenueK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'DoneDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DoneDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'DoneDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', N'COLUMN',N'Dead'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dead' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails', @level2type=N'COLUMN',@level2name=N'Dead'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClubDetails', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Club details harvested from Yellow pages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClubDetails'
GO
/****** Object:  Table [dbo].[EventPerformer]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EventPerformer]') AND type in (N'U'))
BEGIN
CREATE TABLE [EventPerformer](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[EventK] [int] NULL,
	[PerformerK] [int] NULL,
	[Note] [varchar](50) NULL,
	[Order] [float] NULL,
	[Time] [varchar](50) NULL,
 CONSTRAINT [PK_EventEntertainer] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventPerformer', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventPerformer', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventPerformer', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventPerformer', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventPerformer', N'COLUMN',N'PerformerK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Performer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventPerformer', @level2type=N'COLUMN',@level2name=N'PerformerK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventPerformer', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Note - e.g. "On from 9-10"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventPerformer', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventPerformer', N'COLUMN',N'Order'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order in any list of performers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventPerformer', @level2type=N'COLUMN',@level2name=N'Order'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventPerformer', N'COLUMN',N'Time'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time that the performer will play' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventPerformer', @level2type=N'COLUMN',@level2name=N'Time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventPerformer', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links an Event to many Performers - with additional data about the performance' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventPerformer'
GO
/****** Object:  Table [dbo].[SalesCall]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SalesCall]') AND type in (N'U'))
BEGIN
CREATE TABLE [SalesCall](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[DuplicateGuid] [uniqueidentifier] NOT NULL,
	[UsrK] [int] NOT NULL,
	[PromoterK] [int] NOT NULL,
	[DateTimeStart] [datetime] NOT NULL,
	[DateTimeEnd] [datetime] NULL,
	[Duration] [float] NULL,
	[InProgress] [bit] NOT NULL,
	[Direction] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Effective] [bit] NOT NULL,
	[IsCall] [bit] NOT NULL,
	[Note] [text] NULL,
	[Dismissed] [bit] NULL,
	[IsImportant] [bit] NULL,
 CONSTRAINT [PK_SalesCall] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_SalesCall] UNIQUE NONCLUSTERED 
(
	[DuplicateGuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SalesCall]') AND name = N'IX_SalesCall_1')
CREATE NONCLUSTERED INDEX [IX_SalesCall_1] ON [SalesCall] 
(
	[InProgress] DESC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Duplicate guid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sales person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The promoter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'DateTimeStart'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start of the call' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'DateTimeStart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'DateTimeEnd'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End of the call' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'DateTimeEnd'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'Duration'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Duration in minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'Duration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'InProgress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the call still in progress?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'InProgress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'Direction'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 = Outgoing, 2 = Incoming' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'Direction'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 = Cold, 2 = ProactiveFollowUp, 3 = Active' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'Effective'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the call got through to the right person?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'Effective'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'IsCall'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this a call or just a note?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'IsCall'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text note added by the sales person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'Dismissed'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the "hang up" button been clicked?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'Dismissed'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', N'COLUMN',N'IsImportant'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag for important notes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall', @level2type=N'COLUMN',@level2name=N'IsImportant'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SalesCall', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sales phone call made / received by a sales person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCall'
GO
/****** Object:  Table [dbo].[EventSeries]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EventSeries]') AND type in (N'U'))
BEGIN
CREATE TABLE [EventSeries](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[DetailsHtml] [text] NULL,
	[Pic] [uniqueidentifier] NULL,
	[PicNew] [uniqueidentifier] NULL,
	[Status] [int] NULL,
	[OwnerUsrK] [int] NULL,
	[AdminEmail] [varchar](50) NULL,
 CONSTRAINT [PK_EventSeries] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TonightQuestion]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TonightQuestion]') AND type in (N'U'))
BEGIN
CREATE TABLE [TonightQuestion](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[UsrK] [int] NULL,
	[Answer] [int] NULL,
 CONSTRAINT [PK_TonightQuestion] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Global]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Global]') AND type in (N'U'))
BEGIN
CREATE TABLE [Global](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](200) NULL,
	[ValueString] [varchar](200) NULL,
	[ValueInt] [int] NULL,
	[ValueDouble] [float] NULL,
	[ValueDateTime] [datetime] NULL,
	[ValueText] [text] NULL,
 CONSTRAINT [PK_Global] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Global', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Global', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Global', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Global', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Global', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Global', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Global', N'COLUMN',N'ValueString'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Value (200 chars)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Global', @level2type=N'COLUMN',@level2name=N'ValueString'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Global', N'COLUMN',N'ValueInt'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Global', @level2type=N'COLUMN',@level2name=N'ValueInt'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Global', N'COLUMN',N'ValueDouble'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Global', @level2type=N'COLUMN',@level2name=N'ValueDouble'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Global', N'COLUMN',N'ValueDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Global', @level2type=N'COLUMN',@level2name=N'ValueDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Global', N'COLUMN',N'ValueText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unlimited length string value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Global', @level2type=N'COLUMN',@level2name=N'ValueText'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Global', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Global variables' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Global'
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Banner]') AND type in (N'U'))
BEGIN
CREATE TABLE [Banner](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[FirstDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EventK] [int] NULL,
	[DisplayType] [int] NULL,
	[MiscK] [int] NULL,
	[MiscGuid] [uniqueidentifier] NULL,
	[CustomHtml] [text] NULL,
	[CustomXml] [text] NULL,
	[Position] [int] NULL,
	[HitsToday] [int] NULL,
	[DateLastHit] [datetime] NULL,
	[Weight] [float] NULL,
	[HitsTodayNormalised] [float] NULL,
	[Status] [int] NULL,
	[AdminNote] [text] NULL,
	[UsrK] [int] NULL,
	[PromoterK] [int] NULL,
	[BrandK] [int] NULL,
	[LinkUrl] [varchar](250) NULL,
	[TotalHitsTargetMatch] [int] NULL,
	[TotalHits] [int] NULL,
	[TotalClicks] [int] NULL,
	[IsMusicTargetted] [bit] NULL,
	[IsPlaceTargetted] [bit] NULL,
	[LinkTarget] [int] NULL,
	[IsPriceFixed] [bit] NULL,
	[PriceStored] [float] NULL,
	[NewMiscK] [int] NULL,
	[CustomiseFirstLine] [varchar](255) NULL,
	[CustomiseFirstLineSize] [int] NULL,
	[CustomiseSecondLine] [varchar](255) NULL,
	[CustomiseThirdLine] [varchar](255) NULL,
	[FailedMiscK] [int] NULL,
	[TotalHitsPlaceMatch] [int] NULL,
	[TotalHitsMusicMatch] [int] NULL,
	[TotalClicksPlaceMatch] [int] NULL,
	[TotalClicksMusicMatch] [int] NULL,
	[DesignType] [int] NULL,
	[BuyableLockDateTime] [datetime] NULL,
	[DesignProcessed] [bit] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Banner]') AND name = N'_dta_index_Banner_7_2013250227__K11_K16_K3_K4_14')
CREATE NONCLUSTERED INDEX [_dta_index_Banner_7_2013250227__K11_K16_K3_K4_14] ON [Banner] 
(
	[Position] ASC,
	[Status] ASC,
	[FirstDay] ASC,
	[LastDay] ASC
)
INCLUDE ( [Weight]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Banner]') AND name = N'_dta_index_Banner_7_2013250227__K16_K3_K4_K11_K19_K25_K26_K1')
CREATE NONCLUSTERED INDEX [_dta_index_Banner_7_2013250227__K16_K3_K4_K11_K19_K25_K26_K1] ON [Banner] 
(
	[Status] ASC,
	[FirstDay] ASC,
	[LastDay] ASC,
	[Position] ASC,
	[PromoterK] ASC,
	[IsMusicTargetted] ASC,
	[IsPlaceTargetted] ASC,
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the banner for admin etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'FirstDay'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date that the banners start to be displayed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'FirstDay'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'LastDay'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last day that the banners are displayed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'LastDay'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links to an event if the advert is advertising an event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'DisplayType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How the banner is rendered - 1=Auto event banner, 2=Custom auto event banner, 3=Animated gif, 4=Jpg, 5=Flash movie, 6=Custom HTML' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'DisplayType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'MiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The misc of the animated gif / jpg / flash movie' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'MiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'MiscGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The guid of the animated gif / jpg / flash movie' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'MiscGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'CustomHtml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Html to render if DisplayType = CustomHtml' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'CustomHtml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'CustomXml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Xml used to customise the text of the auto event banners' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'CustomXml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'Position'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Position - TopBanner=1, Hotbox=2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'Position'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'HitsToday'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of hits today' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'HitsToday'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'DateLastHit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the last hit happened' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'DateLastHit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'Weight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of slots occupied by this banner. Value of 2 indicates double the normal number of hits.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'Weight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'HitsTodayNormalised'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The normalised hits today - e.g. as if Weight=1. Calculated as HitsToday / Weight' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'HitsTodayNormalised'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status of the banner: New (awaiting payment etc.) = 1, Enabled (booked, live on the site, or finished) = 2, Disabled = 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'AdminNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Note visible only to admins' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'AdminNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that added this banner' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The promoter that added this banner (if it''s a promoter banner)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'BrandK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The brand that this banner advertises' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'BrandK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'LinkUrl'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URL to link to if it''s a custom URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'LinkUrl'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'TotalHitsTargetMatch'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total banner impressions on a page that has matched the banners targetting' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'TotalHitsTargetMatch'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'TotalHits'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total banner impressions' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'TotalHits'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'TotalClicks'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total banner clicks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'TotalClicks'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'IsMusicTargetted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does this banner have target MusicTypes selected?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'IsMusicTargetted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'IsPlaceTargetted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does this banner have target Places selected?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'IsPlaceTargetted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'LinkTarget'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Where does the banner link to?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'LinkTarget'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'IsPriceFixed'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has admin fixed a special price on this banner?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'IsPriceFixed'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'PriceStored'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If IsPriceFixed=true, this is the price that will be charged. If IsBooked=true, this the price that was paid.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'PriceStored'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'NewMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'File waiting for authorisation. When it''s authorised, it''ll be swapped in.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'NewMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'CustomiseFirstLine'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customised banner - first line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'CustomiseFirstLine'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'CustomiseFirstLineSize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customised banner - font size of first line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'CustomiseFirstLineSize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'CustomiseSecondLine'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customised banner - second line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'CustomiseSecondLine'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'CustomiseThirdLine'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customised banner - third line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'CustomiseThirdLine'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'FailedMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When uploading a file for a banner - this is the K of the misc if it FAILS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'FailedMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'TotalHitsPlaceMatch'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total hits with place matching' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'TotalHitsPlaceMatch'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'TotalHitsMusicMatch'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total hits with music matching' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'TotalHitsMusicMatch'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'TotalClicksPlaceMatch'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total clicks with place matching' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'TotalClicksPlaceMatch'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'TotalClicksMusicMatch'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total clicks with music matching' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'TotalClicksMusicMatch'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'DesignType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How will the artwork be created?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'DesignType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'BuyableLockDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time stamp to record when someone is trying to purchase an IBuyable item that is linked to this Bob. No lock = DateTime.MinValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'BuyableLockDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', N'COLUMN',N'DesignProcessed'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the design been processed (for the invoice system)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'DesignProcessed'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_1_11_16_3_4_19_13_15' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_1_11_16_3_4_19_13_15] ON [Banner]([K], [Position], [Status], [FirstDay], [LastDay], [PromoterK], [DateLastHit], [HitsTodayNormalised])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_1_16_3_4' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_1_16_3_4] ON [Banner]([K], [Status], [FirstDay], [LastDay])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_1_19_11_13' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_1_19_11_13] ON [Banner]([K], [PromoterK], [Position], [DateLastHit])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_1_19_13_15' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_1_19_13_15] ON [Banner]([K], [PromoterK], [DateLastHit], [HitsTodayNormalised])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_1_3_11_16_4_19_26_25_13_15' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_1_3_11_16_4_19_26_25_13_15] ON [Banner]([K], [FirstDay], [Position], [Status], [LastDay], [PromoterK], [IsPlaceTargetted], [IsMusicTargetted], [DateLastHit], [HitsTodayNormalised])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_1_3_11_16_4_25_13' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_1_3_11_16_4_25_13] ON [Banner]([K], [FirstDay], [Position], [Status], [LastDay], [IsMusicTargetted], [DateLastHit])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_1_3_11_16_4_26_13' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_1_3_11_16_4_26_13] ON [Banner]([K], [FirstDay], [Position], [Status], [LastDay], [IsPlaceTargetted], [DateLastHit])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_1_3_19_11_16_4' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_1_3_19_11_16_4] ON [Banner]([K], [FirstDay], [PromoterK], [Position], [Status], [LastDay])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_11_1_13_15_16_3_4_26' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_11_1_13_15_16_3_4_26] ON [Banner]([Position], [K], [DateLastHit], [HitsTodayNormalised], [Status], [FirstDay], [LastDay], [IsPlaceTargetted])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_11_1_16_3_4_26' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_11_1_16_3_4_26] ON [Banner]([Position], [K], [Status], [FirstDay], [LastDay], [IsPlaceTargetted])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_11_16' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_11_16] ON [Banner]([Position], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_11_19' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_11_19] ON [Banner]([Position], [PromoterK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_13_15_1_3_19_11_16_4_26' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_13_15_1_3_19_11_16_4_26] ON [Banner]([DateLastHit], [HitsTodayNormalised], [K], [FirstDay], [PromoterK], [Position], [Status], [LastDay], [IsPlaceTargetted])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_13_15_11_16_3_4_26' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_13_15_11_16_3_4_26] ON [Banner]([DateLastHit], [HitsTodayNormalised], [Position], [Status], [FirstDay], [LastDay], [IsPlaceTargetted])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_13_15_19_11_1' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_13_15_19_11_1] ON [Banner]([DateLastHit], [HitsTodayNormalised], [PromoterK], [Position], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_13_15_3_11_16_4_25_1' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_13_15_3_11_16_4_25_1] ON [Banner]([DateLastHit], [HitsTodayNormalised], [FirstDay], [Position], [Status], [LastDay], [IsMusicTargetted], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_13_15_3_11_16_4_25_26' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_13_15_3_11_16_4_25_26] ON [Banner]([DateLastHit], [HitsTodayNormalised], [FirstDay], [Position], [Status], [LastDay], [IsMusicTargetted], [IsPlaceTargetted])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_13_15_3_19_11_16_4_25_1' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_13_15_3_19_11_16_4_25_1] ON [Banner]([DateLastHit], [HitsTodayNormalised], [FirstDay], [PromoterK], [Position], [Status], [LastDay], [IsMusicTargetted], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_13_15_3_19_11_16_4_25_26' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_13_15_3_19_11_16_4_25_26] ON [Banner]([DateLastHit], [HitsTodayNormalised], [FirstDay], [PromoterK], [Position], [Status], [LastDay], [IsMusicTargetted], [IsPlaceTargetted])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_16_3_4_11_19_25_1_13' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_16_3_4_11_19_25_1_13] ON [Banner]([Status], [FirstDay], [LastDay], [Position], [PromoterK], [IsMusicTargetted], [K], [DateLastHit])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_16_3_4_11_19_26' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_16_3_4_11_19_26] ON [Banner]([Status], [FirstDay], [LastDay], [Position], [PromoterK], [IsPlaceTargetted])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_16_3_4_11_26_25' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_16_3_4_11_26_25] ON [Banner]([Status], [FirstDay], [LastDay], [Position], [IsPlaceTargetted], [IsMusicTargetted])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_25_1_16_3_4_11_26_13_15' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_25_1_16_3_4_11_26_13_15] ON [Banner]([IsMusicTargetted], [K], [Status], [FirstDay], [LastDay], [Position], [IsPlaceTargetted], [DateLastHit], [HitsTodayNormalised])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_25_16_3_4' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_25_16_3_4] ON [Banner]([IsMusicTargetted], [Status], [FirstDay], [LastDay])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_26_1_16_3_4' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_26_1_16_3_4] ON [Banner]([IsPlaceTargetted], [K], [Status], [FirstDay], [LastDay])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_26_16_3_4' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_26_16_3_4] ON [Banner]([IsPlaceTargetted], [Status], [FirstDay], [LastDay])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_3_11_16_4_25' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_3_11_16_4_25] ON [Banner]([FirstDay], [Position], [Status], [LastDay], [IsMusicTargetted])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_3_19_11_16' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_3_19_11_16] ON [Banner]([FirstDay], [PromoterK], [Position], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_3_19_11_16_4_13' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_3_19_11_16_4_13] ON [Banner]([FirstDay], [PromoterK], [Position], [Status], [LastDay], [DateLastHit])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_3_19_11_16_4_25_26' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_3_19_11_16_4_25_26] ON [Banner]([FirstDay], [PromoterK], [Position], [Status], [LastDay], [IsMusicTargetted], [IsPlaceTargetted])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_4_1_16' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_4_1_16] ON [Banner]([LastDay], [K], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_4_11_16' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_4_11_16] ON [Banner]([LastDay], [Position], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_4_16' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_4_16] ON [Banner]([LastDay], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_2013250227_4_19_16' and object_id = object_id(N'[Banner]'))
CREATE STATISTICS [_dta_stat_2013250227_4_19_16] ON [Banner]([LastDay], [PromoterK], [Status])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Banner', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Advertising - includes banners, hotboxes etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner'
GO
/****** Object:  Table [dbo].[Graphic]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Graphic]') AND type in (N'U'))
BEGIN
CREATE TABLE [Graphic](
	[GraphicK] [int] IDENTITY(1,1) NOT NULL,
	[GraphicTitle] [varchar](50) NULL,
	[GraphicDesc] [varchar](250) NULL,
	[GraphicType] [varchar](50) NULL,
	[GraphicThumbResK] [int] NULL,
	[GraphicWebResK] [int] NULL,
	[GraphicHiresResK] [int] NULL,
	[CobK] [int] NULL,
	[GraphicIconResK] [int] NULL,
	[GraphicSmallResK] [int] NULL,
 CONSTRAINT [PK__Graphic__2D47B39A] PRIMARY KEY CLUSTERED 
(
	[GraphicK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Graphic]') AND name = N'IGRAPHIC1')
CREATE NONCLUSTERED INDEX [IGRAPHIC1] ON [Graphic] 
(
	[CobK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MobilePlace]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MobilePlace]') AND type in (N'U'))
BEGIN
CREATE TABLE [MobilePlace](
	[MobileK] [int] NOT NULL,
	[PlaceK] [int] NOT NULL,
 CONSTRAINT [IX_MobilePlace] UNIQUE NONCLUSTERED 
(
	[MobileK] ASC,
	[PlaceK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Invoice]') AND type in (N'U'))
BEGIN
CREATE TABLE [Invoice](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NULL,
	[UsrK] [int] NULL,
	[PromoterK] [int] NULL,
	[ActionUsrK] [int] NULL,
	[Name] [varchar](150) NULL,
	[Address] [varchar](150) NULL,
	[Postcode] [varchar](150) NULL,
	[PaymentType] [int] NULL,
	[Paid] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[DueDateTime] [datetime] NULL,
	[PaidDateTime] [datetime] NULL,
	[Price] [float] NULL,
	[Vat] [float] NULL,
	[Total] [float] NULL,
	[DuplicateGuid] [uniqueidentifier] NULL,
	[Notes] [text] NULL,
	[VatCode] [int] NULL,
	[SalesUsrK] [int] NULL,
	[SalesUsrAmount] [float] NULL,
	[IsImmediateCreditCardPayment] [bit] NULL,
	[TaxDateTime] [datetime] NULL,
	[PurchaseOrderNumber] [varchar](50) NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Invoice, Credit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that created this invoice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The If this is a promoter invoice - this is the promoter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'ActionUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the user that initiated this transfer (e.g. the admin user if it''s done manually!)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'ActionUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TO BE REMOVED - Name from credit card payment control' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TO BE REMOVED - First line of the address from credit card payment control' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Postcode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TO BE REMOVED - Postcode from credit card payment control' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Postcode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'PaymentType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TO BE REMOVED - Payment type - 1=CreditCard, 2=Invoiced' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'PaymentType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Paid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has this invoice been fully paid?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Paid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'CreatedDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was the invoice created - the tax point' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'CreatedDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'DueDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When is the invoice due to be paid (4 weeks). After this we can charge interest.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'DueDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'PaidDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When the invoice was fully paid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'PaidDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price excluding VAT (+ve for invoices, -ve for credits)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Price'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Vat'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vat (+ve for invoices, -ve for credits)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Vat'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Total'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price including VAT (+ve for invoices, -ve for credits)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Total'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid to catch duplicate "pay now" clicks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Notes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional Notes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Notes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'VatCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'T0, T1, T4, T9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'VatCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'SalesUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Who is the account manager for this invoice?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'SalesUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'SalesUsrAmount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much is contributed to the account managers target?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'SalesUsrAmount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'IsImmediateCreditCardPayment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag for immediate credit card payments. This flag to be used for exports to Sage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'IsImmediateCreditCardPayment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'TaxDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tax date - to be used for exporting to Sage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'TaxDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'PurchaseOrderNumber'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Invoice purchase order number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'PurchaseOrderNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Invoice or credit note' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice'
GO
/****** Object:  Table [dbo].[IpCountry]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IpCountry]') AND type in (N'U'))
BEGIN
CREATE TABLE [IpCountry](
	[IpFrom] [bigint] NOT NULL,
	[IpTo] [bigint] NOT NULL,
	[Code2Letter] [varchar](2) NULL,
	[Code3Letter] [varchar](3) NULL,
	[Name] [varchar](50) NULL,
	[CountryK] [int] NULL,
 CONSTRAINT [IX_IpCountry] UNIQUE NONCLUSTERED 
(
	[IpFrom] ASC,
	[IpTo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[IpCountry]') AND name = N'IpCountry2')
CREATE CLUSTERED INDEX [IpCountry2] ON [IpCountry] 
(
	[IpTo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IpCountry', N'COLUMN',N'IpFrom'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ip from' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IpCountry', @level2type=N'COLUMN',@level2name=N'IpFrom'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IpCountry', N'COLUMN',N'IpTo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ip to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IpCountry', @level2type=N'COLUMN',@level2name=N'IpTo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IpCountry', N'COLUMN',N'Code2Letter'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country code 2 letter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IpCountry', @level2type=N'COLUMN',@level2name=N'Code2Letter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IpCountry', N'COLUMN',N'Code3Letter'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country code 3 letter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IpCountry', @level2type=N'COLUMN',@level2name=N'Code3Letter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IpCountry', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IpCountry', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IpCountry', N'COLUMN',N'CountryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the country database' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IpCountry', @level2type=N'COLUMN',@level2name=N'CountryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IpCountry', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'links ip addresses to counrties' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IpCountry'
GO
/****** Object:  Table [dbo].[Link]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Link]') AND type in (N'U'))
BEGIN
CREATE TABLE [Link](
	[LinkK] [int] IDENTITY(1,1) NOT NULL,
	[LinkTitle] [varchar](100) NULL,
	[LinkDesc] [varchar](500) NULL,
	[LinkUrl] [varchar](250) NULL,
	[LinkType] [varchar](100) NULL,
	[LinkCobK] [int] NULL,
 CONSTRAINT [PK__Link__2E3BD7D3] PRIMARY KEY CLUSTERED 
(
	[LinkK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MobileMusicType]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MobileMusicType]') AND type in (N'U'))
BEGIN
CREATE TABLE [MobileMusicType](
	[MobileK] [int] NOT NULL,
	[MusicTypeK] [int] NOT NULL,
 CONSTRAINT [IX_MobileMusicType] UNIQUE NONCLUSTERED 
(
	[MobileK] ASC,
	[MusicTypeK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 04/16/2007 15:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Phone]') AND type in (N'U'))
BEGIN
CREATE TABLE [Phone](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[UsrK] [int] NULL,
	[Extention] [int] NULL,
	[Mac] [varchar](50) NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Phone', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Phone', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Phone', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to usr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Phone', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Phone', N'COLUMN',N'Extention'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone extention - e.g. 200 or 201 etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Phone', @level2type=N'COLUMN',@level2name=N'Extention'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Phone', N'COLUMN',N'Mac'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mac address of the phone handset' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Phone', @level2type=N'COLUMN',@level2name=N'Mac'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Phone', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone handset settings helper' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Phone'
GO
/****** Object:  Table [dbo].[Message]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Message]') AND type in (N'U'))
BEGIN
CREATE TABLE [Message](
	[MessageK] [int] IDENTITY(1,1) NOT NULL,
	[MessageTopicK] [int] NULL,
	[MessageCreatorUsrK] [int] NULL,
	[MessageParentMessageK] [int] NULL,
	[MessageDateTime] [datetime] NULL,
	[MessageHeirachicalOrder] [int] NULL,
	[MessageIndent] [varchar](100) NULL,
	[MessageSubTitle] [varchar](50) NULL,
	[MessageText] [text] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MusicType]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MusicType]') AND type in (N'U'))
BEGIN
CREATE TABLE [MusicType](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ParentK] [int] NULL,
	[GenericName] [varchar](50) NULL,
	[Order] [float] NULL,
	[SmsCode] [varchar](20) NULL,
	[SmsName] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_MusicType] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MusicType', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MusicType', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MusicType', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name - e.g. House, Techno, Drum''n''Bass' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MusicType', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MusicType', N'COLUMN',N'ParentK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to parent MusicType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MusicType', @level2type=N'COLUMN',@level2name=N'ParentK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MusicType', N'COLUMN',N'GenericName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Generic name - e.g. Name="All Techno" GenericName="Techno"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MusicType', @level2type=N'COLUMN',@level2name=N'GenericName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MusicType', N'COLUMN',N'Order'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order - list order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MusicType', @level2type=N'COLUMN',@level2name=N'Order'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MusicType', N'COLUMN',N'SmsCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Music type codesd used in incoming sms''s' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MusicType', @level2type=N'COLUMN',@level2name=N'SmsCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MusicType', N'COLUMN',N'SmsName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sort names used in outgoing sms''s' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MusicType', @level2type=N'COLUMN',@level2name=N'SmsName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MusicType', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description for main music types' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MusicType', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MusicType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Music types (heirachy)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MusicType'
GO
/****** Object:  Table [dbo].[Transfer]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Transfer]') AND type in (N'U'))
BEGIN
CREATE TABLE [Transfer](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NULL,
	[Status] [int] NULL,
	[Method] [int] NULL,
	[UsrK] [int] NULL,
	[PromoterK] [int] NULL,
	[ActionUsrK] [int] NULL,
	[Amount] [float] NULL,
	[DateTime] [datetime] NULL,
	[DateTimeCreated] [datetime] NULL,
	[DateTimeComplete] [datetime] NULL,
	[ClientHost] [varchar](15) NULL,
	[CardName] [varchar](150) NULL,
	[CardAddress1] [varchar](150) NULL,
	[CardAddress2] [varchar](150) NULL,
	[CardPostcode] [varchar](150) NULL,
	[CardSavedTransferK] [int] NULL,
	[CardNumberHash] [uniqueidentifier] NULL,
	[CardNumberEnd] [varchar](20) NULL,
	[CardType] [int] NULL,
	[CardStart] [datetime] NULL,
	[CardExpires] [datetime] NULL,
	[CardIssue] [int] NULL,
	[CardCV2] [varchar](5) NULL,
	[CardSaved] [bit] NULL,
	[BankAccountName] [varchar](50) NULL,
	[BankName] [varchar](50) NULL,
	[BankSortCode] [varchar](50) NULL,
	[BankAccountNumber] [varchar](50) NULL,
	[BankTransferReference] [varchar](50) NULL,
	[CardResponseAuthCode] [varchar](50) NULL,
	[CardResponseCv2Avs] [varchar](50) NULL,
	[CardResponseMessage] [varchar](150) NULL,
	[CardResponseRespCode] [varchar](10) NULL,
	[CardResponseCode] [varchar](20) NULL,
	[CardResponseIsCv2Match] [bit] NULL,
	[CardResponseIsPostCodeMatch] [bit] NULL,
	[CardResponseIsAddressMatch] [bit] NULL,
	[CardResponseIsDataChecked] [bit] NULL,
	[Notes] [text] NULL,
	[IsFullyApplied] [bit] NULL,
	[Guid] [uniqueidentifier] NULL,
	[TransferRefundedK] [int] NULL,
	[RefundStatus] [int] NULL,
	[DuplicateGuid] [uniqueidentifier] NULL,
	[ChequeReferenceNumber] [varchar](20) NULL,
 CONSTRAINT [PK_Transfer] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payment, Refund' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pending, Success, Cancelled' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'Method'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Card, Bank Transfer, Cheque, Cash' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'Method'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the relevant user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the promoter (if this is a promoter transfer)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'ActionUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the user that initiated this transfer (e.g. the admin user if it''s a refund!)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'ActionUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'+ve for DSI receiving money, -ve for DSI paying out money' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date / time the transfer was initiated / received' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date / time the transfer was created' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'DateTimeComplete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date / time the transfer was completed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'DateTimeComplete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'ClientHost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP address of the client machine' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'ClientHost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'for card payment - the billing name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardAddress1'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'for card payment - the billing address (line 1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardAddress1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardAddress2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'for card payment - the billing address (line 2)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardAddress2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardPostcode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'for card payment - the billing postcode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardPostcode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardSavedTransferK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This transfer used card details from an earlier transfer (saved card details or refund)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardSavedTransferK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardNumberHash'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cryptographic hash of the card number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardNumberHash'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardNumberEnd'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last 5 digits of the card number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardNumberEnd'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Card issuer deduced from card number (e.g. Visa, Mastercard etc.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardStart'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Card start date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardStart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardExpires'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Card expiry date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardExpires'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardIssue'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Issue number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardIssue'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardCV2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Card CV2 number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardCV2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardSaved'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the card saved for further use?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardSaved'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'BankAccountName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The account name - e.g. Uprising Clubs Limited' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'BankAccountName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'BankName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The bank name - e.g. Lloyds' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'BankName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'BankSortCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sort code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'BankSortCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'BankAccountNumber'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Account number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'BankAccountNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'BankTransferReference'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reference/comment added to the transfer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'BankTransferReference'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardResponseAuthCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Only when Status=Success.The bank''s authorisation code for your information only, do not show to customer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardResponseAuthCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardResponseCv2Avs'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Apacs approved text that is supplied as a result of the CV2 and AVS anti-Fraud checks. There are five core values defined, these are ALL MATCH, SECURITY CODE MATCH ONLY, ADDRESS MATCH ONLY, NO DATA MATCHES and DATA NOT CHECKED. With these core codes an address is only understood to match if and only if both the address proper and the postcode match at the same time. This is a little strict for some people so the following codes have been introduced too : PARTIAL ADDRESS MATCH / POSTCODE, PARTIAL ADDRESS MATCH / ADDRESS, SECURITY CODE MATCH / POSTCODE, SECURITY CODE MATCH / ADDRESS. Codes are only supplied when CV2 and/or Billing Address data is supplied, it is in your interests to supply this data to us. Note that at present all issuers should be issuing new cards with a CV2 security code on them however the AVS checks will only work with UK issued cards. Also note that Switch have not yet implemented these checks (but the cards should have the CV2 security code on them nevertheless). ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardResponseCv2Avs'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardResponseMessage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Only when Status=Failed. The bank''s failure message for your information only, do not show to customer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardResponseMessage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardResponseRespCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Only when Status=Failed and CardResponseCode=''N''. The bank''s failure code for your information only, do not show to customer. 2 or 83 : referral, 5 or 54 : Not Authorised, 30 : general error (retrying after 1 minute may succeed, depending on error)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardResponseRespCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardResponseCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code field is a short code giving extensive details of failure states. It is of particular use to SECBatch/SECVPN users. Note : preauth checks can have several errors, e.g. P:NEC means the name, expiry date and card number fields are all invalid or not supplied.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardResponseCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardResponseIsCv2Match'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag to mark results from CV2 Fraud check' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardResponseIsCv2Match'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardResponseIsPostCodeMatch'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag to mark results from Post Code Fraud check' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardResponseIsPostCodeMatch'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardResponseIsAddressMatch'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag to mark results from Address Fraud check' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardResponseIsAddressMatch'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'CardResponseIsDataChecked'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag to mark if fraud check was enforced' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'CardResponseIsDataChecked'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'Notes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional Notes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'Notes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'IsFullyApplied'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This flag is to be set when the sum of InvoiceTransfers amounts = Transfer.Amount.  It will facilitate faster / easier searches' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'IsFullyApplied'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'Guid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The guid of the transfer.  Allows unique identifier to be assigned prior to saving to the db' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'Guid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'TransferRefundedK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transfer K of transfer that this has refunded' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'TransferRefundedK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'RefundStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Not Refunded, Partial Refund, Full Refund' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'RefundStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid to catch duplicate on save' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', N'COLUMN',N'ChequeReferenceNumber'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The cheque reference number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer', @level2type=N'COLUMN',@level2name=N'ChequeReferenceNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transfer', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer pays us using a credit card / card is refunded / customer transfers money into our bank acc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transfer'
GO
/****** Object:  Table [dbo].[Organiser]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Organiser]') AND type in (N'U'))
BEGIN
CREATE TABLE [Organiser](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
 CONSTRAINT [PK_EventOrganiser] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PageTime]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PageTime]') AND type in (N'U'))
BEGIN
CREATE TABLE [PageTime](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[CobK] [int] NULL,
	[Date] [datetime] NULL,
	[Impressions] [int] NULL,
	[TotalTime] [int] NULL,
	[MaxTime] [int] NULL,
	[MinTime] [int] NULL,
	[MaxUrl] [varchar](1000) NULL,
	[MinUrl] [varchar](1000) NULL,
	[CustPage] [varchar](50) NULL,
	[LogItem] [int] NULL,
 CONSTRAINT [PK_Performance] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'CobK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Cob table - the page in question' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'CobK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'Date'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date when these hits took place' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'Date'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'Impressions'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of impressions that this page got during the day' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'Impressions'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'TotalTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total time taken to serve this page (used to work out the average page generation time)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'TotalTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'MaxTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum time taken to generate a page during the day' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'MaxTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'MinTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum time taken to generate a page during the day' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'MinTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'MaxUrl'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full URL when the maximum time was recorded' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'MaxUrl'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'MinUrl'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full URL when the minimum time was recorded' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'MinUrl'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'CustPage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of cust page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'CustPage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', N'COLUMN',N'LogItem'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Log item' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime', @level2type=N'COLUMN',@level2name=N'LogItem'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PageTime', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used to log the performance of the indevidual pages on the site.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageTime'
GO
/****** Object:  Table [dbo].[PerformanceReview]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PerformanceReview]') AND type in (N'U'))
BEGIN
CREATE TABLE [PerformanceReview](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[UsrK] [int] NULL,
	[EventK] [int] NULL,
	[PerformerK] [int] NULL,
	[DateTime] [datetime] NULL,
	[RatingMusic] [int] NULL,
	[RatingShow] [int] NULL,
	[Review] [text] NULL,
	[Enabled] [bit] NULL,
 CONSTRAINT [PK_PerformanceReview] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformanceReview', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformanceReview', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformanceReview', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to one user - the user that submitted the review' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformanceReview', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformanceReview', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to one Event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformanceReview', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformanceReview', N'COLUMN',N'PerformerK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to one Performer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformanceReview', @level2type=N'COLUMN',@level2name=N'PerformerK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformanceReview', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/time the review was added' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformanceReview', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformanceReview', N'COLUMN',N'RatingMusic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rate the performance 0-9 on music' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformanceReview', @level2type=N'COLUMN',@level2name=N'RatingMusic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformanceReview', N'COLUMN',N'RatingShow'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rate the performance 0-9 on show' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformanceReview', @level2type=N'COLUMN',@level2name=N'RatingShow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformanceReview', N'COLUMN',N'Review'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text of the review (optional)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformanceReview', @level2type=N'COLUMN',@level2name=N'Review'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformanceReview', N'COLUMN',N'Enabled'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this is set to false, the PerformanceReview will not be displayed (for disabling offensive posts)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformanceReview', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PerformanceReview', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rating / review of a Performance' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PerformanceReview'
GO
/****** Object:  Table [dbo].[GroupUsr]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GroupUsr]') AND type in (N'U'))
BEGIN
CREATE TABLE [GroupUsr](
	[UsrK] [int] NOT NULL,
	[GroupK] [int] NOT NULL,
	[Status] [int] NULL,
	[StatusChangeDateTime] [datetime] NULL,
	[StatusChangeUsrK] [int] NULL,
	[Owner] [bit] NULL,
	[Moderator] [bit] NULL,
	[NewsAdmin] [bit] NULL,
	[MemberAdmin] [bit] NULL,
	[HideWhenRead] [bit] NULL,
	[NewNewsCount] [int] NULL,
	[NewThreadCount] [int] NULL,
	[NewCommentCount] [int] NULL,
	[Favourite] [bit] NULL,
	[InviteMessage] [text] NULL,
	[InviteUsrK] [int] NULL,
	[MemberAdminNewUserEmails] [bit] NULL,
	[InviteMessage1] [varchar](500) NULL,
	[InviteMessage2] [varchar](2000) NULL,
 CONSTRAINT [IX_GroupUsr] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC,
	[GroupK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GroupUsr]') AND name = N'GroupUsr14')
CREATE CLUSTERED INDEX [GroupUsr14] ON [GroupUsr] 
(
	[Status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GroupUsr]') AND name = N'_dta_index_GroupUsr_7_457768688__K1_K3_K14_2')
CREATE NONCLUSTERED INDEX [_dta_index_GroupUsr_7_457768688__K1_K3_K14_2] ON [GroupUsr] 
(
	[UsrK] ASC,
	[Status] ASC,
	[Favourite] ASC
)
INCLUDE ( [GroupK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GroupUsr]') AND name = N'_dta_index_GroupUsr_7_457768688__K3_K1_K2')
CREATE NONCLUSTERED INDEX [_dta_index_GroupUsr_7_457768688__K3_K1_K2] ON [GroupUsr] 
(
	[Status] ASC,
	[UsrK] ASC,
	[GroupK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GroupUsr]') AND name = N'_dta_index_GroupUsr_7_457768688__K3_K2_K7_K1_K6_K9_K8')
CREATE NONCLUSTERED INDEX [_dta_index_GroupUsr_7_457768688__K3_K2_K7_K1_K6_K9_K8] ON [GroupUsr] 
(
	[Status] ASC,
	[GroupK] ASC,
	[Moderator] ASC,
	[UsrK] ASC,
	[Owner] ASC,
	[MemberAdmin] ASC,
	[NewsAdmin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GroupUsr]') AND name = N'_dta_index_GroupUsr_8_457768688__K1_K3_K2')
CREATE NONCLUSTERED INDEX [_dta_index_GroupUsr_8_457768688__K1_K3_K2] ON [GroupUsr] 
(
	[UsrK] ASC,
	[Status] ASC,
	[GroupK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GroupUsr]') AND name = N'_dta_index_GroupUsr_8_457768688__K2_K1_K3_13')
CREATE NONCLUSTERED INDEX [_dta_index_GroupUsr_8_457768688__K2_K1_K3_13] ON [GroupUsr] 
(
	[GroupK] ASC,
	[UsrK] ASC,
	[Status] ASC
)
INCLUDE ( [NewCommentCount]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GroupUsr]') AND name = N'_dta_index_GroupUsr_8_457768688__K2_K3_K1_K4')
CREATE NONCLUSTERED INDEX [_dta_index_GroupUsr_8_457768688__K2_K3_K1_K4] ON [GroupUsr] 
(
	[GroupK] ASC,
	[Status] ASC,
	[UsrK] ASC,
	[StatusChangeDateTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that has been invited' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'GroupK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'GroupK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Membershp status: Member=1, Requested=2, Denied=3, Invited=4, Exited=5, Barred=6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'StatusChangeDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the status last changed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'StatusChangeDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'StatusChangeUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The UsrK of the user that performed the last status change' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'StatusChangeUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'Owner'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the user an owner of this group?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'Owner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'Moderator'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the user a moderator of this group?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'Moderator'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'NewsAdmin'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Moderators with this flag set can post news.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'NewsAdmin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'MemberAdmin'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Moderators with this flag set can invite/confirm/ban members.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'MemberAdmin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'HideWhenRead'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Only shows the group on the my groups page if it has unread comments in it' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'HideWhenRead'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'NewNewsCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Peices of news since your last visit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'NewNewsCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'NewThreadCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Threads posted since your last visit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'NewThreadCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'NewCommentCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Comments posted since your last visit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'NewCommentCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'Favourite'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this group a favourite?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'Favourite'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'InviteMessage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Message sent to the person by the person that invited them' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'InviteMessage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'InviteUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is the user that invited this person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'InviteUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', N'COLUMN',N'MemberAdminNewUserEmails'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Should this membership admin receive new user emails?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr', @level2type=N'COLUMN',@level2name=N'MemberAdminNewUserEmails'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_1_2_3_4' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_1_2_3_4] ON [GroupUsr]([UsrK], [GroupK], [Status], [StatusChangeDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_1_2_3_7_6_9_8' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_1_2_3_7_6_9_8] ON [GroupUsr]([UsrK], [GroupK], [Status], [Moderator], [Owner], [MemberAdmin], [NewsAdmin])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_1_3_2_14' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_1_3_2_14] ON [GroupUsr]([UsrK], [Status], [GroupK], [Favourite])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_14_1_3' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_14_1_3] ON [GroupUsr]([Favourite], [UsrK], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_14_6_7_11_12_13_1_3_10' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_14_6_7_11_12_13_1_3_10] ON [GroupUsr]([Favourite], [Owner], [Moderator], [NewNewsCount], [NewThreadCount], [NewCommentCount], [UsrK], [Status], [HideWhenRead])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_14_6_7_11_12_13_3' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_14_6_7_11_12_13_3] ON [GroupUsr]([Favourite], [Owner], [Moderator], [NewNewsCount], [NewThreadCount], [NewCommentCount], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_2_1_3_16_4' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_2_1_3_16_4] ON [GroupUsr]([GroupK], [UsrK], [Status], [InviteUsrK], [StatusChangeDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_3_1_14_10_13' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_3_1_14_10_13] ON [GroupUsr]([Status], [UsrK], [Favourite], [HideWhenRead], [NewCommentCount])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_3_1_2_14_10_13_6_7_11_12' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_3_1_2_14_10_13_6_7_11_12] ON [GroupUsr]([Status], [UsrK], [GroupK], [Favourite], [HideWhenRead], [NewCommentCount], [Owner], [Moderator], [NewNewsCount], [NewThreadCount])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_3_14_10_13_6_7_11_12' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_3_14_10_13_6_7_11_12] ON [GroupUsr]([Status], [Favourite], [HideWhenRead], [NewCommentCount], [Owner], [Moderator], [NewNewsCount], [NewThreadCount])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_3_16_4' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_3_16_4] ON [GroupUsr]([Status], [InviteUsrK], [StatusChangeDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_3_2_16' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_3_2_16] ON [GroupUsr]([Status], [GroupK], [InviteUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_4_1_3' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_4_1_3] ON [GroupUsr]([StatusChangeDateTime], [UsrK], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_4_2_3' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_4_2_3] ON [GroupUsr]([StatusChangeDateTime], [GroupK], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_4_3' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_4_3] ON [GroupUsr]([StatusChangeDateTime], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_457768688_6_9_8_2_3_7' and object_id = object_id(N'[GroupUsr]'))
CREATE STATISTICS [_dta_stat_457768688_6_9_8_2_3_7] ON [GroupUsr]([Owner], [MemberAdmin], [NewsAdmin], [GroupK], [Status], [Moderator])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupUsr', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Membership of a group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupUsr'
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Brand]') AND type in (N'U'))
BEGIN
CREATE TABLE [Brand](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[PromoterK] [int] NULL,
	[Pic] [uniqueidentifier] NULL,
	[OwnerUsrK] [int] NULL,
	[IsNew] [bit] NULL,
	[IsEdited] [bit] NULL,
	[DuplicateGuid] [uniqueidentifier] NULL,
	[PromoterStatus] [int] NULL,
	[UrlName] [varchar](200) NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[PicMiscK] [int] NULL,
	[GroupK] [int] NULL,
	[TotalComments] [int] NULL,
	[LastPost] [datetime] NULL,
	[AverageCommentDateTime] [datetime] NULL,
	[DateTimeCreated] [datetime] NULL,
	[NoPhotos] [bit] NULL,
	[AddedRegulars] [bit] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Brand]') AND name = N'Brand37')
CREATE NONCLUSTERED INDEX [Brand37] ON [Brand] 
(
	[UrlName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Brand]') AND name = N'Brand41')
CREATE NONCLUSTERED INDEX [Brand41] ON [Brand] 
(
	[IsNew] ASC,
	[IsEdited] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the promoter - doesn''t always have a promoter, so sometimes is 0.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'Pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cropped image 100*100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'Pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'OwnerUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Which user added this brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'OwnerUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'IsNew'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has this brand just been added to the site?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'IsNew'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'IsEdited'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has this brand recently been edited?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'IsEdited'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid used to ensure duplicate brands don''t get posted if the user refreshes the page after saving.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'PromoterStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How is this brand controlled by this promoter?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'PromoterStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'UrlName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique url-compliant name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'UrlName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'GroupK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The party group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'GroupK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'TotalComments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'TotalComments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'LastPost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime of the last post' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'LastPost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'AverageCommentDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Average DateTime of all the comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'AverageCommentDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When the brand was added to the system' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'NoPhotos'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does this brand ban photos? e.g. Love Puppy / Manumission' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'NoPhotos'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', N'COLUMN',N'AddedRegulars'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has daves util function added the regulars to the group?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'AddedRegulars'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1179867270_19_1' and object_id = object_id(N'[Brand]'))
CREATE STATISTICS [_dta_stat_1179867270_19_1] ON [Brand]([NoPhotos], [K])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Brand', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e.g. Event brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand'
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gallery]') AND type in (N'U'))
BEGIN
CREATE TABLE [Gallery](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[EventK] [int] NULL,
	[ArticleK] [int] NULL,
	[Name] [varchar](50) NULL,
	[MainPhotoK] [int] NULL,
	[OwnerUsrK] [int] NULL,
	[TotalPhotos] [int] NULL,
	[LivePhotos] [int] NULL,
	[CreateDateTime] [datetime] NULL,
	[LastLiveDateTime] [datetime] NULL,
	[AdminNote] [text] NULL,
	[IsMobile] [bit] NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[PicMiscK] [int] NULL,
	[UrlFragment] [varchar](255) NULL,
	[ModeratorUsrK] [int] NULL,
	[CurrentPackageCount] [int] NULL,
	[LastPackageDateTime] [datetime] NULL,
	[LastPackageIndex] [int] NULL,
	[UploadInProgress] [bit] NULL,
	[UploadFails] [int] NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Gallery]') AND name = N'_dta_index_Gallery_7_1232723444__K8_K10_K5_K24_K22_K4_K7_1_6_11_19')
CREATE NONCLUSTERED INDEX [_dta_index_Gallery_7_1232723444__K8_K10_K5_K24_K22_K4_K7_1_6_11_19] ON [Gallery] 
(
	[OwnerUsrK] ASC,
	[LivePhotos] ASC,
	[ArticleK] ASC,
	[UploadInProgress] ASC,
	[LastPackageDateTime] ASC,
	[EventK] ASC,
	[MainPhotoK] ASC
)
INCLUDE ( [Name],
[UrlFragment],
[CreateDateTime],
[K]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Gallery]') AND name = N'_dta_index_Gallery_8_504388866__K2_K8_K21_K19_K1_K5_K6_4_9_16')
CREATE NONCLUSTERED INDEX [_dta_index_Gallery_8_504388866__K2_K8_K21_K19_K1_K5_K6_4_9_16] ON [Gallery] 
(
	[EventK] ASC,
	[LivePhotos] ASC,
	[UploadInProgress] ASC,
	[LastPackageDateTime] ASC,
	[K] ASC,
	[MainPhotoK] ASC,
	[OwnerUsrK] ASC
)
INCLUDE ( [Name],
[UrlFragment],
[CreateDateTime]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Gallery]') AND name = N'Gallery16')
CREATE NONCLUSTERED INDEX [Gallery16] ON [Gallery] 
(
	[EventK] ASC,
	[ArticleK] ASC,
	[MainPhotoK] ASC,
	[LivePhotos] ASC,
	[LastPackageDateTime] ASC,
	[UploadInProgress] ASC,
	[LastLiveDateTime] DESC,
	[K] ASC,
	[Name] ASC,
	[CreateDateTime] ASC,
	[UrlFragment] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The event that these photos were taken at' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'ArticleK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the gallery is in an article, this is the key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'ArticleK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'MainPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the main photo - used for the title image.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'MainPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'OwnerUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Usr table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'OwnerUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'TotalPhotos'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of photos (live + disabled + new) in the gallery' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'TotalPhotos'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'LivePhotos'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of live photos in the gallery' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'LivePhotos'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'CreateDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime when the Gallery was created' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'CreateDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'LastLiveDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime when the last photo was made live' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'LastLiveDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'AdminNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Admin note only visible to photo admins' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'AdminNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'IsMobile'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this a mobile gallery (with mms photos)?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'IsMobile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'UrlFragment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The url fragment - so that the url can be generated without accessing parent database records' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'UrlFragment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'ModeratorUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The moderator assigned to this gallery' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'ModeratorUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'CurrentPackageCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The count of packages in the current upload' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'CurrentPackageCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'LastPackageDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When did the last package complete?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'LastPackageDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'LastPackageIndex'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What is the package index of the last package to be completed? (success or fail)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'LastPackageIndex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'UploadInProgress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is an upload in progress?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'UploadInProgress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', N'COLUMN',N'UploadFails'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How many times has a photo upload failed?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'UploadFails'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_1_19_2_21' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_1_19_2_21] ON [Gallery]([K], [LastPackageDateTime], [EventK], [UploadInProgress])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_1_2_4_5_8_9_10_16_19_21' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_1_2_4_5_8_9_10_16_19_21] ON [Gallery]([K], [EventK], [Name], [MainPhotoK], [LivePhotos], [CreateDateTime], [LastLiveDateTime], [UrlFragment], [LastPackageDateTime], [UploadInProgress])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_1_5_2_8_21_19' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_1_5_2_8_21_19] ON [Gallery]([K], [MainPhotoK], [EventK], [LivePhotos], [UploadInProgress], [LastPackageDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_1_6_5_2_8_21' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_1_6_5_2_8_21] ON [Gallery]([K], [OwnerUsrK], [MainPhotoK], [EventK], [LivePhotos], [UploadInProgress])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_2_1_8' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_2_1_8] ON [Gallery]([EventK], [K], [LivePhotos])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_2_1_8_9' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_2_1_8_9] ON [Gallery]([EventK], [K], [LivePhotos], [CreateDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_2_19_21_8' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_2_19_21_8] ON [Gallery]([EventK], [LastPackageDateTime], [UploadInProgress], [LivePhotos])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_2_5_3_8_21' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_2_5_3_8_21] ON [Gallery]([EventK], [MainPhotoK], [ArticleK], [LivePhotos], [UploadInProgress])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_21_2_3' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_21_2_3] ON [Gallery]([UploadInProgress], [EventK], [ArticleK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_21_3' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_21_3] ON [Gallery]([UploadInProgress], [ArticleK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_3_8_21_19_5_2_1_4_9' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_3_8_21_19_5_2_1_4_9] ON [Gallery]([ArticleK], [LivePhotos], [UploadInProgress], [LastPackageDateTime], [MainPhotoK], [EventK], [K], [Name], [CreateDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_5_19_21_8' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_5_19_21_8] ON [Gallery]([MainPhotoK], [LastPackageDateTime], [UploadInProgress], [LivePhotos])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_5_19_3_21' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_5_19_3_21] ON [Gallery]([MainPhotoK], [LastPackageDateTime], [ArticleK], [UploadInProgress])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_6_1_19_2_21' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_6_1_19_2_21] ON [Gallery]([OwnerUsrK], [K], [LastPackageDateTime], [EventK], [UploadInProgress])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_8_2' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_8_2] ON [Gallery]([LivePhotos], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_8_2_21_19_1_6_5' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_8_2_21_19_1_6_5] ON [Gallery]([LivePhotos], [EventK], [UploadInProgress], [LastPackageDateTime], [K], [OwnerUsrK], [MainPhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_8_9' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_8_9] ON [Gallery]([LivePhotos], [CreateDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_8_9_2_1' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_8_9_2_1] ON [Gallery]([LivePhotos], [CreateDateTime], [EventK], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_504388866_9_2_8' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_504388866_9_2_8] ON [Gallery]([CreateDateTime], [EventK], [LivePhotos])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_843866073_10_19_3_8_21' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_843866073_10_19_3_8_21] ON [Gallery]([LastLiveDateTime], [LastPackageDateTime], [ArticleK], [LivePhotos], [UploadInProgress])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_843866073_19_3_8_21_5' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_843866073_19_3_8_21_5] ON [Gallery]([LastPackageDateTime], [ArticleK], [LivePhotos], [UploadInProgress], [MainPhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_843866073_2_19_3_8' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_843866073_2_19_3_8] ON [Gallery]([EventK], [LastPackageDateTime], [ArticleK], [LivePhotos])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_843866073_3_8_21' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_843866073_3_8_21] ON [Gallery]([ArticleK], [LivePhotos], [UploadInProgress])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_843866073_5_19_3_8' and object_id = object_id(N'[Gallery]'))
CREATE STATISTICS [_dta_stat_843866073_5_19_3_8] ON [Gallery]([MainPhotoK], [LastPackageDateTime], [ArticleK], [LivePhotos])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Gallery', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A gallery contains photos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery'
GO
/****** Object:  Table [dbo].[GalleryUsr]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GalleryUsr]') AND type in (N'U'))
BEGIN
CREATE TABLE [GalleryUsr](
	[GalleryK] [int] NOT NULL,
	[UsrK] [int] NOT NULL,
	[ViewDateTime] [datetime] NULL,
	[ViewDateTimeLatest] [datetime] NULL,
	[ViewPhotos] [int] NULL,
	[ViewPhotosLatest] [int] NULL,
	[Favourite] [bit] NULL,
 CONSTRAINT [IX_GalleryUsr] UNIQUE NONCLUSTERED 
(
	[GalleryK] ASC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GalleryUsr]') AND name = N'GalleryUsr6')
CREATE CLUSTERED INDEX [GalleryUsr6] ON [GalleryUsr] 
(
	[ViewPhotosLatest] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GalleryUsr', N'COLUMN',N'GalleryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The thread' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GalleryUsr', @level2type=N'COLUMN',@level2name=N'GalleryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GalleryUsr', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that has been invited' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GalleryUsr', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GalleryUsr', N'COLUMN',N'ViewDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datetime that the gallery was last viewed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GalleryUsr', @level2type=N'COLUMN',@level2name=N'ViewDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GalleryUsr', N'COLUMN',N'ViewDateTimeLatest'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The new datetime (when this is set, it''s value is copied to the DateTime if it is more than 5 mins ago) ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GalleryUsr', @level2type=N'COLUMN',@level2name=N'ViewDateTimeLatest'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GalleryUsr', N'COLUMN',N'ViewPhotos'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of photos that have been viewed at the time of the ViewDateTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GalleryUsr', @level2type=N'COLUMN',@level2name=N'ViewPhotos'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GalleryUsr', N'COLUMN',N'ViewPhotosLatest'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of photos that have been viewed at the time of the ViewDateTimeLatest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GalleryUsr', @level2type=N'COLUMN',@level2name=N'ViewPhotosLatest'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GalleryUsr', N'COLUMN',N'Favourite'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Favourite gallery?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GalleryUsr', @level2type=N'COLUMN',@level2name=N'Favourite'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GalleryUsr', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Stores information about when users view galleries' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GalleryUsr'
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Photo]') AND type in (N'U'))
BEGIN
CREATE TABLE [Photo](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[GalleryK] [int] NULL,
	[EventK] [int] NULL,
	[ArticleK] [int] NULL,
	[UsrK] [int] NULL,
	[MobileK] [int] NULL,
	[Order] [float] NULL,
	[ThreadK] [int] NULL,
	[DateTime] [datetime] NULL,
	[Views] [int] NULL,
	[AverageCoolRating] [float] NULL,
	[AverageSexyRating] [float] NULL,
	[TotalCoolRatings] [int] NULL,
	[TotalSexyRatings] [int] NULL,
	[WeightedCoolRating] [float] NULL,
	[WeightedSexyRating] [float] NULL,
	[Master] [uniqueidentifier] NULL,
	[Original] [uniqueidentifier] NULL,
	[Icon] [uniqueidentifier] NULL,
	[Thumb] [uniqueidentifier] NULL,
	[Web] [uniqueidentifier] NULL,
	[OriginalWidth] [int] NULL,
	[OriginalHeight] [int] NULL,
	[WebWidth] [int] NULL,
	[WebHeight] [int] NULL,
	[ThumbWidth] [int] NULL,
	[ThumbHeight] [int] NULL,
	[IsLandscape] [bit] NULL,
	[AdminNote] [text] NULL,
	[EquipmentMake] [varchar](100) NULL,
	[CameraModel] [varchar](100) NULL,
	[OriginalFileSize] [int] NULL,
	[MasterFileSize] [int] NULL,
	[TotalComments] [int] NULL,
	[LastPost] [datetime] NULL,
	[AverageCommentDateTime] [datetime] NULL,
	[Crop] [uniqueidentifier] NULL,
	[DsiConverted] [bit] NULL,
	[PhotoOfWeek] [bit] NULL,
	[PhotoOfWeekDateTime] [datetime] NULL,
	[PhotoOfWeekCaption] [varchar](255) NULL,
	[RandomNumber] [float] NULL,
	[ContentDisabled] [bit] NULL,
	[Status] [int] NULL,
	[GalleryTimeOrder] [int] NULL,
	[GalleryRatingOrder] [int] NULL,
	[EnabledByUsrK] [int] NULL,
	[EnabledDateTime] [datetime] NULL,
	[ParentDateTime] [datetime] NULL,
	[NextPhoto1K] [int] NULL,
	[NextPhoto2K] [int] NULL,
	[NextPhoto3K] [int] NULL,
	[NextPhoto1Icon] [uniqueidentifier] NULL,
	[NextPhoto2Icon] [uniqueidentifier] NULL,
	[NextPhoto3Icon] [uniqueidentifier] NULL,
	[PreviousPhoto1K] [int] NULL,
	[PreviousPhoto2K] [int] NULL,
	[PreviousPhoto3K] [int] NULL,
	[PreviousPhoto1Icon] [uniqueidentifier] NULL,
	[PreviousPhoto2Icon] [uniqueidentifier] NULL,
	[PreviousPhoto3Icon] [uniqueidentifier] NULL,
	[UrlFragment] [varchar](255) NULL,
	[UsrCount] [int] NULL,
	[FirstUsrK] [int] NULL,
	[IsMasterCompressed] [bit] NULL,
	[IsProcessing] [bit] NULL,
	[MediaType] [int] NULL,
	[ProcessingProgress] [int] NULL,
	[ProcessingStartDateTime] [datetime] NULL,
	[VideoLo] [uniqueidentifier] NULL,
	[VideoMed] [uniqueidentifier] NULL,
	[VideoHi] [uniqueidentifier] NULL,
	[AudioLo] [uniqueidentifier] NULL,
	[AudioMed] [uniqueidentifier] NULL,
	[AudioHi] [uniqueidentifier] NULL,
	[AudioMaster] [uniqueidentifier] NULL,
	[VideoMaster] [uniqueidentifier] NULL,
	[AudioFileExtention] [varchar](4) NULL,
	[VideoFileExtention] [varchar](4) NULL,
	[VideoMasterFileSize] [int] NULL,
	[AudioMasterFileSize] [int] NULL,
	[VideoMasterFramerate] [float] NULL,
	[VideoMasterHeight] [int] NULL,
	[VideoMasterWidth] [int] NULL,
	[VideoDuration] [int] NULL,
	[AudioDuration] [int] NULL,
	[ProcessingLastChange] [datetime] NULL,
	[VideoLoFramerate] [float] NULL,
	[VideoMedFramerate] [float] NULL,
	[VideoHiFramerate] [float] NULL,
	[VideoLoHeight] [int] NULL,
	[VideoMedHeight] [int] NULL,
	[VideoHiHeight] [int] NULL,
	[VideoLoWidth] [int] NULL,
	[VideoMedWidth] [int] NULL,
	[VideoHiWidth] [int] NULL,
	[ProcessingAttempts] [int] NULL,
	[OriginalHitsToday] [int] NULL,
	[OriginalHitsDate] [datetime] NULL,
	[ProcessingServerName] [varchar](50) NULL,
	[IsSonyK800i] [bit] NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'_dta_index_Photo_7_1392724014__K2_K44_K68_K1_K9_K66_10_11_12_15_16_19_21_24_25_34_43_64_65')
CREATE NONCLUSTERED INDEX [_dta_index_Photo_7_1392724014__K2_K44_K68_K1_K9_K66_10_11_12_15_16_19_21_24_25_34_43_64_65] ON [Photo] 
(
	[GalleryK] ASC,
	[Status] ASC,
	[IsProcessing] ASC,
	[K] ASC,
	[DateTime] ASC,
	[FirstUsrK] ASC
)
INCLUDE ( [UrlFragment],
[UsrCount],
[TotalComments],
[Icon],
[ContentDisabled],
[AverageCoolRating],
[AverageSexyRating],
[WeightedCoolRating],
[WeightedSexyRating],
[Web],
[WebHeight],
[WebWidth],
[Views]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'_dta_index_Photo_7_568389094__K1_K3')
CREATE NONCLUSTERED INDEX [_dta_index_Photo_7_568389094__K1_K3] ON [Photo] 
(
	[K] ASC,
	[EventK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'_dta_index_Photo_7_568389094__K3_1_62')
CREATE NONCLUSTERED INDEX [_dta_index_Photo_7_568389094__K3_1_62] ON [Photo] 
(
	[EventK] ASC
)
INCLUDE ( [K],
[UrlFragment]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'_dta_index_Photo_8_568389094__K5_K1')
CREATE NONCLUSTERED INDEX [_dta_index_Photo_8_568389094__K5_K1] ON [Photo] 
(
	[UsrK] ASC,
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'IX_Photo_1')
CREATE NONCLUSTERED INDEX [IX_Photo_1] ON [Photo] 
(
	[MediaType] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'Photo10')
CREATE NONCLUSTERED INDEX [Photo10] ON [Photo] 
(
	[ArticleK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'Photo2')
CREATE NONCLUSTERED INDEX [Photo2] ON [Photo] 
(
	[PhotoOfWeek] ASC,
	[K] ASC,
	[Icon] ASC,
	[PhotoOfWeekDateTime] ASC,
	[PhotoOfWeekCaption] ASC,
	[ContentDisabled] ASC,
	[UrlFragment] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'Photo21')
CREATE NONCLUSTERED INDEX [Photo21] ON [Photo] 
(
	[GalleryK] ASC,
	[Status] ASC,
	[IsProcessing] ASC,
	[K] ASC,
	[DateTime] ASC,
	[ContentDisabled] ASC,
	[GalleryTimeOrder] ASC,
	[NextPhoto1K] ASC,
	[NextPhoto2K] ASC,
	[NextPhoto3K] ASC,
	[PreviousPhoto1K] ASC,
	[PreviousPhoto2K] ASC,
	[PreviousPhoto3K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'Photo22')
CREATE NONCLUSTERED INDEX [Photo22] ON [Photo] 
(
	[GalleryK] ASC,
	[Status] ASC,
	[IsProcessing] ASC,
	[K] ASC,
	[Order] ASC,
	[DateTime] ASC,
	[GalleryRatingOrder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'Photo26')
CREATE NONCLUSTERED INDEX [Photo26] ON [Photo] 
(
	[UsrK] ASC,
	[Status] ASC,
	[IsProcessing] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'Photo3')
CREATE NONCLUSTERED INDEX [Photo3] ON [Photo] 
(
	[GalleryK] ASC,
	[Status] ASC,
	[Order] DESC,
	[DateTime] ASC,
	[K] ASC,
	[GalleryRatingOrder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Photo]') AND name = N'Photo64')
CREATE NONCLUSTERED INDEX [Photo64] ON [Photo] 
(
	[Status] ASC,
	[EnabledDateTime] ASC,
	[IsProcessing] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'GalleryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the gallery table - the gallery that this photo is in.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'GalleryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links to one Event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ArticleK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the article if this photo is in a gallery that is in an event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ArticleK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The usr that uploaded the photo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'MobileK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The mobile that sent the photo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'MobileK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'Order'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'Order'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ThreadK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discussion thread about this photo - only created when first message is posted?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ThreadK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date / time the photo was taken (from exif data)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'Views'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of views' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'Views'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AverageCoolRating'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Average cool rating' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AverageCoolRating'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AverageSexyRating'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Average sexy rating' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AverageSexyRating'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'TotalCoolRatings'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of cool ratings' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'TotalCoolRatings'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'TotalSexyRatings'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of sexy ratings' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'TotalSexyRatings'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'WeightedCoolRating'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Weighted cool rating = ( sum(Ratings) + 50 ) / ( count(Ratings) + 10 )' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'WeightedCoolRating'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'WeightedSexyRating'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Weighted sexy rating = ( sum(Ratings) + 50 ) / ( count(Ratings) + 10 )' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'WeightedSexyRating'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'Master'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Filename of master original image (without logo)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'Master'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'Original'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Filename of original image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'Original'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'Icon'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Filename of icon (35*26)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'Icon'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'Thumb'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Filename of thumbnail (106*80)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'Thumb'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'Web'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Filename of web-res (640*480)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'Web'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'OriginalWidth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width of the original image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'OriginalWidth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'OriginalHeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height of the original image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'OriginalHeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'WebWidth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width of the web image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'WebWidth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'WebHeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height of the web image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'WebHeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ThumbWidth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width of the thumbnail image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ThumbWidth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ThumbHeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height of the thumbnail image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ThumbHeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'IsLandscape'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the image in landscae orientation? (If the image is square, this is true)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'IsLandscape'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AdminNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Note for admin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AdminNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'EquipmentMake'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EquipmentMake from exif data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'EquipmentMake'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'CameraModel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CameraModel from exif data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'CameraModel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'OriginalFileSize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size of original file in bytes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'OriginalFileSize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'MasterFileSize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size of master original file in bytes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'MasterFileSize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'TotalComments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'TotalComments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'LastPost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date/time of the last post that was posted in this board (including child objects)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'LastPost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AverageCommentDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average date.time of all comments posted in this board (including child objects)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AverageCommentDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'Crop'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Filename of cropping image (max side=1000, no logo)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'Crop'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'DsiConverted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the photo been converted to dsi logos?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'DsiConverted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'PhotoOfWeek'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Should this photo go on the Photo of the Week section?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'PhotoOfWeek'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'PhotoOfWeekDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The latest 3 photos of the week are displayed... This is the datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'PhotoOfWeekDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'PhotoOfWeekCaption'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is the caption for the photo of the week section' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'PhotoOfWeekCaption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'RandomNumber'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Random float less than 1 used for fast pseudo-random ordering' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'RandomNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ContentDisabled'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if the content has been disabled because of a complaint' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ContentDisabled'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1=New, 2=Enabled, 3=Disabled' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'GalleryTimeOrder'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order in the gallery when ordered by datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'GalleryTimeOrder'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'GalleryRatingOrder'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order in the gallery when ordered by rating' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'GalleryRatingOrder'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'EnabledByUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Which admin user enabled this photo?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'EnabledByUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'EnabledDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was this photo enabled?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'EnabledDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ParentDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The DateTime of the parent object - e.g. datetime of event, or createdate of the article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ParentDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'NextPhoto1K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The next photo in the gallery (1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'NextPhoto1K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'NextPhoto2K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The next photo in the gallery (2)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'NextPhoto2K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'NextPhoto3K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The next photo in the gallery (3)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'NextPhoto3K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'PreviousPhoto1K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Previous photo in the gallery (1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'PreviousPhoto1K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'PreviousPhoto2K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Previous photo in the gallery (2)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'PreviousPhoto2K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'PreviousPhoto3K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Previous photo in the gallery (3)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'PreviousPhoto3K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'UrlFragment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The url fragment - so that the url can be generated without accessing parent database records' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'UrlFragment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'UsrCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of users in this photo - read this before accessing UsrsInThisPhoto UsrSet!' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'UsrCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'FirstUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first usr that''s in this photo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'FirstUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'IsMasterCompressed'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the master Jpg been compressed?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'IsMasterCompressed'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'IsProcessing'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the processing started?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'IsProcessing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'MediaType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Media type - Image, Video or Audio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'MediaType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ProcessingProgress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estimated percentage complete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ProcessingProgress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ProcessingStartDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When the processing started' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ProcessingStartDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoLo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid filename of the 256Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoLo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoMed'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid filename of the 512Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoMed'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoHi'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid filename of the 1024Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoHi'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AudioLo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid filename of the 64Kb/sec audio FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AudioLo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AudioMed'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid filename of the 128Kb/sec audio FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AudioMed'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AudioHi'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid filename of the 192Kb/sec audio FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AudioHi'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AudioMaster'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid filename of the audio master file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AudioMaster'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoMaster'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid filename of the video master file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoMaster'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AudioFileExtention'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'File extention of the audio master file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AudioFileExtention'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoFileExtention'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'File extention of the video master file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoFileExtention'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoMasterFileSize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Video master file size in bytes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoMasterFileSize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AudioMasterFileSize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Audio master file size in bytes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AudioMasterFileSize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoMasterFramerate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Video frames per second' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoMasterFramerate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoMasterHeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Video height in pixels' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoMasterHeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoMasterWidth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Video width in pixels' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoMasterWidth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoDuration'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Duration of the video in miliseconds' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'AudioDuration'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Duration of the audio in miliseconds' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'AudioDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ProcessingLastChange'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime that the media processing progress last changed (for abort timeout)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ProcessingLastChange'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoLoFramerate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Framerate of the 256Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoLoFramerate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoMedFramerate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Framerate of the 512Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoMedFramerate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoHiFramerate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Framerate of the 1024Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoHiFramerate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoLoHeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height of the 256Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoLoHeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoMedHeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height of the 512Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoMedHeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoHiHeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height of the 1024Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoHiHeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoLoWidth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width of the 256Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoLoWidth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoMedWidth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width of the 512Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoMedWidth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'VideoHiWidth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width of the 1024Kb/sec video FLV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'VideoHiWidth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ProcessingAttempts'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How many times has the encoder tried to encode this file?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ProcessingAttempts'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'OriginalHitsToday'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How many times has the original image been generated today?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'OriginalHitsToday'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'OriginalHitsDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Original image generator hit counter date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'OriginalHitsDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'ProcessingServerName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Which server is processing the video?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'ProcessingServerName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', N'COLUMN',N'IsSonyK800i'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Was this photo taken with a Sony K800i?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo', @level2type=N'COLUMN',@level2name=N'IsSonyK800i'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1003866643_1_5' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_1003866643_1_5] ON [Photo]([K], [UsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_16_15' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_16_15] ON [Photo]([K], [WeightedSexyRating], [WeightedCoolRating])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_2_44_64_49_9' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_2_44_64_49_9] ON [Photo]([K], [GalleryK], [Status], [FirstUsrK], [ParentDateTime], [DateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_3' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_3] ON [Photo]([K], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_39_3' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_39_3] ON [Photo]([K], [PhotoOfWeek], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_44' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_44] ON [Photo]([K], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_44_16_15' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_44_16_15] ON [Photo]([K], [Status], [WeightedSexyRating], [WeightedCoolRating])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_44_64_49_9' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_44_64_49_9] ON [Photo]([K], [Status], [FirstUsrK], [ParentDateTime], [DateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_64' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_64] ON [Photo]([K], [FirstUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_64_2' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_64_2] ON [Photo]([K], [FirstUsrK], [GalleryK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_64_39' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_64_39] ON [Photo]([K], [FirstUsrK], [PhotoOfWeek])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_64_44_66_49_9' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_64_44_66_49_9] ON [Photo]([K], [FirstUsrK], [Status], [IsProcessing], [ParentDateTime], [DateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_1_64_49' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_1_64_49] ON [Photo]([K], [FirstUsrK], [ParentDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_16_15_44' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_16_15_44] ON [Photo]([WeightedSexyRating], [WeightedCoolRating], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_2_44_1_9_64' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_2_44_1_9_64] ON [Photo]([GalleryK], [Status], [K], [DateTime], [FirstUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_44_66_1' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_44_66_1] ON [Photo]([Status], [IsProcessing], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_48_44_1' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_48_44_1] ON [Photo]([EnabledDateTime], [Status], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_49_1' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_49_1] ON [Photo]([ParentDateTime], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_49_9_1_44' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_49_9_1_44] ON [Photo]([ParentDateTime], [DateTime], [K], [Status])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_49_9_1_44_2' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_49_9_1_44_2] ON [Photo]([ParentDateTime], [DateTime], [K], [Status], [GalleryK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_49_9_44_66' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_49_9_44_66] ON [Photo]([ParentDateTime], [DateTime], [Status], [IsProcessing])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_568389094_9_1_44' and object_id = object_id(N'[Photo]'))
CREATE STATISTICS [_dta_stat_568389094_9_1_44] ON [Photo]([DateTime], [K], [Status])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Photo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Photo taken at an event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo'
GO
/****** Object:  Table [dbo].[Demographics]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Demographics]') AND type in (N'U'))
BEGIN
CREATE TABLE [Demographics](
	[UsrK] [int] NOT NULL,
	[DateTime] [datetime] NULL,
	[DrinkWater] [bit] NULL,
	[DrinkSoft] [bit] NULL,
	[DrinkEnergy] [bit] NULL,
	[DrinkDraftBeer] [bit] NULL,
	[DrinkBottledBeer] [bit] NULL,
	[DrinkSpirits] [bit] NULL,
	[DrinkWine] [bit] NULL,
	[DrinkAlcopops] [bit] NULL,
	[DrinkCider] [bit] NULL,
	[Smoke] [int] NULL,
	[EveningAllNight] [float] NULL,
	[EveningLateNight] [float] NULL,
	[EveningCoupleDrinks] [float] NULL,
	[EveningOther] [float] NULL,
	[EveningStayIn] [float] NULL,
	[Employment] [int] NULL,
	[Salary] [int] NULL,
	[CreditCard] [bit] NULL,
	[Loan] [bit] NULL,
	[Mortgage] [bit] NULL,
	[OwnCar] [bit] NULL,
	[OwnBike] [bit] NULL,
	[OwnMp3] [bit] NULL,
	[OwnPc] [bit] NULL,
	[OwnLaptop] [bit] NULL,
	[OwnMac] [bit] NULL,
	[OwnBroadband] [bit] NULL,
	[OwnConsole] [bit] NULL,
	[OwnCamera] [bit] NULL,
	[OwnDvd] [bit] NULL,
	[OwnDvdRec] [bit] NULL,
	[BuyCar] [bit] NULL,
	[BuyBike] [bit] NULL,
	[BuyMp3] [bit] NULL,
	[BuyPc] [bit] NULL,
	[BuyLaptop] [bit] NULL,
	[BuyMac] [bit] NULL,
	[BuyBroadband] [bit] NULL,
	[BuyConsole] [bit] NULL,
	[BuyCamera] [bit] NULL,
	[BuyDvd] [bit] NULL,
	[BuyDvdRec] [bit] NULL,
	[SpendDesignerClothes] [int] NULL,
	[SpendHighStreetClothes] [int] NULL,
	[SpendMusicCd] [int] NULL,
	[SpendMusicVinyl] [int] NULL,
	[SpendMusicDownload] [int] NULL,
	[SpendDvd] [int] NULL,
	[SpendGames] [int] NULL,
	[SpendMobile] [int] NULL,
	[SpendSms] [int] NULL,
	[SpendCar] [int] NULL,
	[SpendTravel] [int] NULL,
	[Holidays] [int] NULL,
	[ImagingManufacturer] [varchar](255) NULL,
	[ImagingImportant] [int] NULL,
	[ImagingOpinionSony] [int] NULL,
	[ImagingOpinionNokia] [int] NULL,
	[ImagingOpinionMotorola] [int] NULL,
	[ImagingOpinionSiemens] [int] NULL,
	[ImagingOpinionLg] [int] NULL,
	[ImagingOpinionSamsung] [int] NULL,
	[ImagingCapabilitySony] [int] NULL,
	[ImagingCapabilityNokia] [int] NULL,
	[ImagingCapabilityMotorola] [int] NULL,
	[ImagingCapabilitySiemens] [int] NULL,
	[ImagingCapabilityLg] [int] NULL,
	[ImagingCapabilitySamsung] [int] NULL,
	[ImagingBuySony] [int] NULL,
	[ImagingBuyNokia] [int] NULL,
	[ImagingBuyMotorola] [int] NULL,
	[ImagingBuySiemens] [int] NULL,
	[ImagingBuyLg] [int] NULL,
	[ImagingBuySamsung] [int] NULL,
 CONSTRAINT [PK_Demographics] PRIMARY KEY CLUSTERED 
(
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Demographics_1] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/time the questionairre was completed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'DrinkWater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When going out, what do you drink? Water' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'DrinkWater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'DrinkSoft'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When going out, what do you drink? Soft drinks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'DrinkSoft'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'DrinkEnergy'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When going out, what do you drink? Energy drinks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'DrinkEnergy'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'DrinkDraftBeer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When going out, what do you drink? Beer / lager (in a pint / glass)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'DrinkDraftBeer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'DrinkBottledBeer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When going out, what do you drink? Bottled beer / lager' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'DrinkBottledBeer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'DrinkSpirits'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When going out, what do you drink? Spirits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'DrinkSpirits'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'DrinkWine'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When going out, what do you drink? Wine' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'DrinkWine'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'DrinkAlcopops'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When going out, what do you drink? Alcopops' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'DrinkAlcopops'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'DrinkCider'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When going out, what do you drink? Cider' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'DrinkCider'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'Smoke'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you smoke? Yes=1, No=2, Only when I go out=3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'Smoke'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'EveningAllNight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How / how often do you spend your evenings: All night clubbing (times per week)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'EveningAllNight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'EveningLateNight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How / how often do you spend your evenings: Late night at a pub/club (in bed by 3am) (times per week)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'EveningLateNight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'EveningCoupleDrinks'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How / how often do you spend your evenings: Couple of drinks in a bar (in bed by midnight) (times per week)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'EveningCoupleDrinks'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'EveningOther'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How / how often do you spend your evenings: Other social event (e.g. cinema, restaurant etc.) (times per week)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'EveningOther'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'EveningStayIn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How / how often do you spend your evenings: Stay in / work (times per week)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'EveningStayIn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'Employment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What’s your employment status: Full-time=1, Part-time=2, Currently unemployed=3, Student=4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'Employment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'Salary'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you earn per year? [less than £15k]=1, [15 - 19]=2, [20 - 24]=3, [25 - 29]=4, [30 - 39]=5, [40 - 49]=6, [£50k+]=7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'Salary'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'CreditCard'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you use a credit card?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'CreditCard'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'Loan'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you have a personal loan?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'Loan'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'Mortgage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you have a mortgage?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'Mortgage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnCar'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: Car / motorbike' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnCar'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnBike'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: Pedal bike' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnBike'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnMp3'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: MP3 player' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnMp3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnPc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: PC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnPc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnLaptop'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: Laptop' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnLaptop'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnMac'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: Mac' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnMac'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnBroadband'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: Broadband internet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnBroadband'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnConsole'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: Games console' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnConsole'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnCamera'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: Digital camera' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnCamera'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnDvd'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: DVD player' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnDvd'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'OwnDvdRec'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you own: DVD recorder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'OwnDvdRec'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyCar'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: Car / motorbike' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyCar'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyBike'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: Pedal bike' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyBike'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyMp3'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: MP3 player' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyMp3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyPc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: PC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyPc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyLaptop'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: Laptop' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyLaptop'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyMac'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: Mac' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyMac'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyBroadband'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: Broadband internet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyBroadband'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyConsole'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: Games console' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyConsole'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyCamera'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: Digital camera' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyCamera'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyDvd'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: DVD player' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyDvd'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'BuyDvdRec'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do you think you might buy in the next 6 months: DVD recorder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'BuyDvdRec'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendDesignerClothes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: Designer / branded clothes (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendDesignerClothes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendHighStreetClothes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: High street / non-branded clothes (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendHighStreetClothes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendMusicCd'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: Music on CD (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendMusicCd'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendMusicVinyl'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: Music on vinyl (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendMusicVinyl'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendMusicDownload'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: Music downloads (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendMusicDownload'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendDvd'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: DVDs (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendDvd'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendGames'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: Computer/video games (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendGames'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendMobile'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: Mobile phone calls (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendMobile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendSms'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: Ringtones / text voting etc. (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendSms'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendCar'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: Car / motorbike (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendCar'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'SpendTravel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How much do you spend on average per month on: Other travel / public transport (Nothing=1, less than £10=2, £10-£19=3, £20-£49=4, £50-£99=5, £100-£200=6, £200+=7)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'SpendTravel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'Holidays'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How often do you go abroad on holiday? (time(s) per year)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'Holidays'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingManufacturer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When you think of mobile phone imaging technology, which mobile phone manufacturer comes to mind first?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingManufacturer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingImportant'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'On a scale of 1-5, how important is imaging functionality in a mobile phone when considering which handset to get? (1 = not very important, 5 = very important)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingImportant'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingOpinionSony'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How would you describe your overall opinion about the following mobile phone manufacturers? (1 = not good, 5 = very good) Sony' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingOpinionSony'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingOpinionNokia'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How would you describe your overall opinion about the following mobile phone manufacturers? (1 = not good, 5 = very good) Nokia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingOpinionNokia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingOpinionMotorola'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How would you describe your overall opinion about the following mobile phone manufacturers? (1 = not good, 5 = very good) Motorola' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingOpinionMotorola'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingOpinionSiemens'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How would you describe your overall opinion about the following mobile phone manufacturers? (1 = not good, 5 = very good) BenQ/Siemens' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingOpinionSiemens'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingOpinionLg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How would you describe your overall opinion about the following mobile phone manufacturers? (1 = not good, 5 = very good) LG' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingOpinionLg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingOpinionSamsung'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How would you describe your overall opinion about the following mobile phone manufacturers? (1 = not good, 5 = very good) Samsung' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingOpinionSamsung'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingCapabilitySony'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thinking of mobile phone imaging capabilities, how would you rate each of the following manufacturers on a scale of 1-5? (1=does not provide imaging technology, 5=provides advanced imaging technology) Sony' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingCapabilitySony'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingCapabilityNokia'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thinking of mobile phone imaging capabilities, how would you rate each of the following manufacturers on a scale of 1-5? (1=does not provide imaging technology, 5=provides advanced imaging technology) Nokia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingCapabilityNokia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingCapabilityMotorola'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thinking of mobile phone imaging capabilities, how would you rate each of the following manufacturers on a scale of 1-5? (1=does not provide imaging technology, 5=provides advanced imaging technology) Motorola' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingCapabilityMotorola'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingCapabilitySiemens'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thinking of mobile phone imaging capabilities, how would you rate each of the following manufacturers on a scale of 1-5? (1=does not provide imaging technology, 5=provides advanced imaging technology) BenQ/Siemens' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingCapabilitySiemens'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingCapabilityLg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thinking of mobile phone imaging capabilities, how would you rate each of the following manufacturers on a scale of 1-5? (1=does not provide imaging technology, 5=provides advanced imaging technology) LG' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingCapabilityLg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingCapabilitySamsung'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thinking of mobile phone imaging capabilities, how would you rate each of the following manufacturers on a scale of 1-5? (1=does not provide imaging technology, 5=provides advanced imaging technology) Samsung' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingCapabilitySamsung'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingBuySony'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If you were to buy a new mobile phone, how likely would you be to consider the following manufacturers? (1=very unlikely, 5 = very likely) Sony' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingBuySony'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingBuyNokia'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If you were to buy a new mobile phone, how likely would you be to consider the following manufacturers? (1=very unlikely, 5 = very likely) Nokia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingBuyNokia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingBuyMotorola'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If you were to buy a new mobile phone, how likely would you be to consider the following manufacturers? (1=very unlikely, 5 = very likely) Motorola' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingBuyMotorola'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingBuySiemens'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If you were to buy a new mobile phone, how likely would you be to consider the following manufacturers? (1=very unlikely, 5 = very likely) BenQ/Siemens' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingBuySiemens'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingBuyLg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If you were to buy a new mobile phone, how likely would you be to consider the following manufacturers? (1=very unlikely, 5 = very likely) LG' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingBuyLg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', N'COLUMN',N'ImagingBuySamsung'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If you were to buy a new mobile phone, how likely would you be to consider the following manufacturers? (1=very unlikely, 5 = very likely) Samsung' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics', @level2type=N'COLUMN',@level2name=N'ImagingBuySamsung'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Demographics', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Demographics questionairre results' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demographics'
GO
/****** Object:  Table [dbo].[Theme]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Theme]') AND type in (N'U'))
BEGIN
CREATE TABLE [Theme](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[UrlName] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
	[Examples] [varchar](255) NULL,
	[Order] [float] NULL,
 CONSTRAINT [PK_Theme] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Theme', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Theme', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Theme', N'COLUMN',N'UrlName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name for url''s' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Theme', @level2type=N'COLUMN',@level2name=N'UrlName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Theme', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Proper name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Theme', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Theme', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Short description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Theme', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Theme', N'COLUMN',N'Examples'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Examples of topics in this theme... dollar seperated, all lower case.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Theme', @level2type=N'COLUMN',@level2name=N'Examples'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Theme', N'COLUMN',N'Order'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order in lists' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Theme', @level2type=N'COLUMN',@level2name=N'Order'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Theme', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Themes of discussion used for groups' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Theme'
GO
/****** Object:  Table [dbo].[Visit]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Visit]') AND type in (N'U'))
BEGIN
CREATE TABLE [Visit](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Guid] [uniqueidentifier] NULL,
	[UsrK] [int] NULL,
	[Pages] [int] NULL,
	[Comments] [int] NULL,
	[ChatMessages] [int] NULL,
	[Hits] [int] NULL,
	[Photos] [int] NULL,
	[TopBannerClicks] [int] NULL,
	[HotboxClicks] [int] NULL,
	[PhotoBannerClicks] [int] NULL,
	[DateTimeStart] [datetime] NULL,
	[DateTimeLast] [datetime] NULL,
	[IpAddress] [varchar](15) NULL,
	[IsNewGuid] [bit] NULL,
	[CountryK] [int] NULL,
 CONSTRAINT [PK_Visit] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Visit]') AND name = N'_dta_index_Visit_7_648389379__K3_K13_K12')
CREATE NONCLUSTERED INDEX [_dta_index_Visit_7_648389379__K3_K13_K12] ON [Visit] 
(
	[UsrK] ASC,
	[DateTimeLast] ASC,
	[DateTimeStart] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Visit]') AND name = N'IX_Visit')
CREATE NONCLUSTERED INDEX [IX_Visit] ON [Visit] 
(
	[Guid] ASC,
	[UsrK] ASC,
	[DateTimeLast] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Visit]') AND name = N'IX_Visit_1')
CREATE NONCLUSTERED INDEX [IX_Visit_1] ON [Visit] 
(
	[UsrK] ASC,
	[IpAddress] ASC,
	[DateTimeLast] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'Guid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid stored in the cookie' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'Guid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to one user - the user was logged in. If nobody was logged in, it''s set to 0.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'Pages'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of DsiPage impressions' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'Pages'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'Comments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of comments posted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'ChatMessages'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of live chat messages posted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'ChatMessages'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'Hits'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of hits, including live chat impressions' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'Hits'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'Photos'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of photos viewed (quick browser and photo pages)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'Photos'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'TopBannerClicks'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of top-banner clicks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'TopBannerClicks'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'HotboxClicks'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of hotbox clicks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'HotboxClicks'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'PhotoBannerClicks'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of photo-banner clicks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'PhotoBannerClicks'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'DateTimeStart'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/time the first visit started' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'DateTimeStart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'DateTimeLast'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/time the last hit was received (if next hit is within 15 mins, they are counted as the same visit)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'DateTimeLast'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'IpAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP address of the first hit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'IpAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'IsNewGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the guid newly issued? (if so, it''s unique)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'IsNewGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', N'COLUMN',N'CountryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country looked up by IP address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit', @level2type=N'COLUMN',@level2name=N'CountryK'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_648389379_1_2_3' and object_id = object_id(N'[Visit]'))
CREATE STATISTICS [_dta_stat_648389379_1_2_3] ON [Visit]([K], [Guid], [UsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_648389379_1_7' and object_id = object_id(N'[Visit]'))
CREATE STATISTICS [_dta_stat_648389379_1_7] ON [Visit]([K], [Hits])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_648389379_12_13_4' and object_id = object_id(N'[Visit]'))
CREATE STATISTICS [_dta_stat_648389379_12_13_4] ON [Visit]([DateTimeStart], [DateTimeLast], [Pages])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_648389379_13_12_3' and object_id = object_id(N'[Visit]'))
CREATE STATISTICS [_dta_stat_648389379_13_12_3] ON [Visit]([DateTimeLast], [DateTimeStart], [UsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_648389379_15_12_13_4' and object_id = object_id(N'[Visit]'))
CREATE STATISTICS [_dta_stat_648389379_15_12_13_4] ON [Visit]([IsNewGuid], [DateTimeStart], [DateTimeLast], [Pages])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_648389379_2_3_13_1_7' and object_id = object_id(N'[Visit]'))
CREATE STATISTICS [_dta_stat_648389379_2_3_13_1_7] ON [Visit]([Guid], [UsrK], [DateTimeLast], [K], [Hits])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_648389379_3_13_2_7' and object_id = object_id(N'[Visit]'))
CREATE STATISTICS [_dta_stat_648389379_3_13_2_7] ON [Visit]([UsrK], [DateTimeLast], [Guid], [Hits])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_648389379_4_12' and object_id = object_id(N'[Visit]'))
CREATE STATISTICS [_dta_stat_648389379_4_12] ON [Visit]([Pages], [DateTimeStart])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_648389379_7_3_13' and object_id = object_id(N'[Visit]'))
CREATE STATISTICS [_dta_stat_648389379_7_3_13] ON [Visit]([Hits], [UsrK], [DateTimeLast])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visit', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Stores information about a visit - guid from the cookie etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visit'
GO
/****** Object:  Table [dbo].[Usr]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Usr]') AND type in (N'U'))
BEGIN
CREATE TABLE [Usr](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](50) NULL,
	[LoginCount] [int] NULL,
	[IsAdmin] [bit] NULL,
	[IsEmailVerified] [bit] NULL,
	[EmailVerifyString] [varchar](15) NULL,
	[Pic] [uniqueidentifier] NULL,
	[PicOriginal] [uniqueidentifier] NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[NickName] [varchar](100) NULL,
	[Mobile] [varchar](50) NULL,
	[MobileCountryCode] [varchar](3) NULL,
	[MobileNumber] [varchar](50) NULL,
	[SendSpottedEmails] [bit] NULL,
	[SendSpottedTexts] [bit] NULL,
	[SendPartnerEmails] [bit] NULL,
	[SendPartnerTexts] [bit] NULL,
	[UpdateData] [varchar](50) NULL,
	[UpdateError] [int] NULL,
	[AdminNote] [text] NULL,
	[DateTimeLastAccess] [datetime] NULL,
	[DateTimeSignUp] [datetime] NULL,
	[DateTimeLastPageRequest] [datetime] NULL,
	[PrefsText] [text] NULL,
	[LoginString] [char](6) NULL,
	[PersonalStatement] [text] NULL,
	[AddedByUsrK] [int] NULL,
	[AdminLevel] [int] NULL,
	[RandomNumber] [float] NULL,
	[LastPrivateComment] [datetime] NULL,
	[LastPrivateChatMessage] [datetime] NULL,
	[IsSingle] [bit] NULL,
	[IsMale] [bit] NULL,
	[IsFemale] [bit] NULL,
	[DateOfBirth] [datetime] NULL,
	[DateSexMale] [bit] NULL,
	[DateSexFemale] [bit] NULL,
	[DateAgeRangeLow] [int] NULL,
	[DateAgeRangeHigh] [int] NULL,
	[Relationship1] [bit] NULL,
	[Relationship2] [bit] NULL,
	[Relationship3] [bit] NULL,
	[SexHelperMale] [bit] NULL,
	[SexHelperFemale] [bit] NULL,
	[BuddyCount] [int] NULL,
	[ChatMessageCount] [int] NULL,
	[CommentCount] [int] NULL,
	[EventCount] [int] NULL,
	[HasDonated] [bit] NULL,
	[HomePlaceK] [int] NULL,
	[AgreeTerms] [bit] NULL,
	[GuestClientK] [int] NULL,
	[FavouriteMusicTypeK] [int] NULL,
	[TotalLol] [int] NULL,
	[TotalMadeLol] [int] NULL,
	[LastLol] [datetime] NULL,
	[UniqueMadeLol] [int] NULL,
	[ChatXml] [text] NULL,
	[IsLoggedOn] [bit] NULL,
	[LastChatItem] [bigint] NULL,
	[LastIp] [varchar](50) NULL,
	[Ignore] [bit] NULL,
	[IsProSpotter] [bit] NULL,
	[LastInvite] [int] NULL,
	[IntroducedByUsrK] [int] NULL,
	[Introductions] [int] NULL,
	[SendFlyers] [bit] NULL,
	[SendInvites] [bit] NULL,
	[TotalPhotoUploads] [int] NULL,
	[TempInt] [int] NULL,
	[EnhancedSecurity] [bit] NULL,
	[AddressStreet] [varchar](50) NULL,
	[AddressArea] [varchar](50) NULL,
	[AddressTown] [varchar](50) NULL,
	[AddressCounty] [varchar](50) NULL,
	[AddressPostcode] [varchar](50) NULL,
	[AddressCountryK] [int] NULL,
	[CardStatus] [int] NULL,
	[TotalCardsSent] [int] NULL,
	[IsSpotter] [bit] NULL,
	[Banned] [bit] NULL,
	[BannedByUsrK] [int] NULL,
	[BannedDateTime] [datetime] NULL,
	[BannedReason] [varchar](50) NULL,
	[UpdateSendGenericMusic] [bit] NULL,
	[UpdateLargeEvents] [int] NULL,
	[UpdateSendBuddies] [bit] NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[PicMiscK] [int] NULL,
	[IsChatting] [bit] NULL,
	[LastBuddyChange] [datetime] NULL,
	[Link] [varchar](255) NULL,
	[NewsModerator] [bit] NULL,
	[ModerationItems] [int] NULL,
	[NewsPermissionLevel] [int] NULL,
	[IsBetaTester] [bit] NULL,
	[PlacesVisitCount] [int] NULL,
	[MusicTypesFavouriteCount] [int] NULL,
	[PhotosMeCount] [int] NULL,
	[IsSkeleton] [bit] NULL,
	[NoInboxEmails] [bit] NULL,
	[AbuseReportsPending] [int] NULL,
	[AbuseReportsUseful] [int] NULL,
	[AbuseReportsOverturned] [int] NULL,
	[AbuseAccusationsPending] [int] NULL,
	[AbuseAccusationsAbuse] [int] NULL,
	[AbuseAccusationsNoAbuse] [int] NULL,
	[ModeratePhotos] [bit] NULL,
	[ChatSessionId] [int] NULL,
	[AddedByGroupK] [int] NULL,
	[DonateIcon] [int] NULL,
	[DonateExpire] [datetime] NULL,
	[EmailDateTime] [datetime] NULL,
	[EmailIp] [varchar](15) NULL,
	[EmailHold] [bit] NULL,
	[IsHtmlEditor] [bit] NULL,
	[IsGroupModerator] [bit] NULL,
	[IsSkeletonFromSignup] [bit] NULL,
	[ExtraIcon] [int] NULL,
	[ExtraExpire] [datetime] NULL,
	[SpottingsTotal] [int] NULL,
	[SpottingsMonth] [int] NULL,
	[SpottingsMonthRank] [int] NULL,
	[Donate1Icon] [bit] NULL,
	[Donate1Expire] [datetime] NULL,
	[Donate2Icon] [bit] NULL,
	[Donate2Expire] [datetime] NULL,
	[IsPromoter] [bit] NULL,
	[CampTickets] [int] NULL,
	[HasTicket] [bit] NULL,
	[LastTicketEventDateTime] [datetime] NULL,
	[PasswordHash] [uniqueidentifier] NULL,
	[PasswordSalt] [uniqueidentifier] NULL,
	[PasswordResetEmailSecret] [varchar](10) NULL,
	[LegalTermsUser1] [bit] NULL,
	[LegalTermsPromoter1] [bit] NULL,
	[IsSuperAdmin] [bit] NULL,
	[IsSalesPerson] [bit] NULL,
	[BuyableLockDateTime] [datetime] NULL,
	[SalesTeam] [int] NULL,
 CONSTRAINT [PK__USR__77FFC2B3] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Usr] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'_dta_index_Usr_7_1689773077__K30_1')
CREATE NONCLUSTERED INDEX [_dta_index_Usr_7_1689773077__K30_1] ON [Usr] 
(
	[AdminLevel] ASC
)
INCLUDE ( [K]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'_dta_index_Usr_7_1689773077__K61_K25_K1_K12_K6_K103_5_8_24_30_47_48_49_50_65_68_82_114_115_122_123')
CREATE NONCLUSTERED INDEX [_dta_index_Usr_7_1689773077__K61_K25_K1_K12_K6_K103_5_8_24_30_47_48_49_50_65_68_82_114_115_122_123] ON [Usr] 
(
	[IsLoggedOn] ASC,
	[DateTimeLastPageRequest] ASC,
	[K] ASC,
	[NickName] ASC,
	[IsEmailVerified] ASC,
	[IsSkeleton] ASC
)
INCLUDE ( [AdminLevel],
[BuddyCount],
[ChatMessageCount],
[CommentCount],
[EventCount],
[DateTimeSignUp],
[DonateExpire],
[DonateIcon],
[ExtraExpire],
[ExtraIcon],
[IsProSpotter],
[IsSpotter],
[Introductions],
[IsAdmin],
[Pic]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'_dta_index_Usr_7_728389664__K103_K24')
CREATE NONCLUSTERED INDEX [_dta_index_Usr_7_728389664__K103_K24] ON [Usr] 
(
	[IsSkeleton] ASC,
	[DateTimeSignUp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'_dta_index_Usr_7_728389664__K2_K12_K1')
CREATE NONCLUSTERED INDEX [_dta_index_Usr_7_728389664__K2_K12_K1] ON [Usr] 
(
	[Email] ASC,
	[NickName] ASC,
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'_dta_index_Usr_7_728389664__K34_K8_K36_K35_K45_K46_K1')
CREATE NONCLUSTERED INDEX [_dta_index_Usr_7_728389664__K34_K8_K36_K35_K45_K46_K1] ON [Usr] 
(
	[IsSingle] ASC,
	[Pic] ASC,
	[IsFemale] ASC,
	[IsMale] ASC,
	[SexHelperMale] ASC,
	[SexHelperFemale] ASC,
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'_dta_index_Usr_8_728389664__K1_K103_K8_K6_K24_5_12_25_30_47_48_49_50_61_65_82_122_123_124_127_128_129_130_133_134')
CREATE NONCLUSTERED INDEX [_dta_index_Usr_8_728389664__K1_K103_K8_K6_K24_5_12_25_30_47_48_49_50_61_65_82_122_123_124_127_128_129_130_133_134] ON [Usr] 
(
	[K] ASC,
	[IsSkeleton] ASC,
	[Pic] ASC,
	[IsEmailVerified] ASC,
	[DateTimeSignUp] ASC
)
INCLUDE ( [IsProSpotter],
[IsSpotter],
[IsLoggedOn],
[IsAdmin],
[HasTicket],
[EventCount],
[DateTimeLastPageRequest],
[Donate2Icon],
[Donate1Expire],
[Donate1Icon],
[Donate2Expire],
[ExtraExpire],
[ExtraIcon],
[CommentCount],
[ChatMessageCount],
[BuddyCount],
[AdminLevel],
[SpottingsTotal],
[NickName],
[LastTicketEventDateTime]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'_dta_index_Usr_8_728389664__K1_K61_K25')
CREATE NONCLUSTERED INDEX [_dta_index_Usr_8_728389664__K1_K61_K25] ON [Usr] 
(
	[K] ASC,
	[IsLoggedOn] ASC,
	[DateTimeLastPageRequest] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'_dta_index_Usr_8_728389664__K103_K61_K6_K25_K1_K12_5_8_24_30_47_48_49_50_65_82_122_123_124_127_128_129_130_133_134')
CREATE NONCLUSTERED INDEX [_dta_index_Usr_8_728389664__K103_K61_K6_K25_K1_K12_5_8_24_30_47_48_49_50_65_82_122_123_124_127_128_129_130_133_134] ON [Usr] 
(
	[IsSkeleton] ASC,
	[IsLoggedOn] ASC,
	[IsEmailVerified] ASC,
	[DateTimeLastPageRequest] ASC,
	[K] ASC,
	[NickName] ASC
)
INCLUDE ( [DateTimeSignUp],
[Donate2Icon],
[Donate2Expire],
[Donate1Icon],
[Donate1Expire],
[EventCount],
[ExtraIcon],
[ExtraExpire],
[AdminLevel],
[BuddyCount],
[ChatMessageCount],
[CommentCount],
[IsAdmin],
[HasTicket],
[IsSpotter],
[IsProSpotter],
[Pic],
[LastTicketEventDateTime],
[SpottingsTotal]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'_dta_index_Usr_8_728389664__K6_K103_K1')
CREATE NONCLUSTERED INDEX [_dta_index_Usr_8_728389664__K6_K103_K1] ON [Usr] 
(
	[IsEmailVerified] ASC,
	[IsSkeleton] ASC,
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'_dta_index_Usr_8_728389664__K6_K103_K8_K1')
CREATE NONCLUSTERED INDEX [_dta_index_Usr_8_728389664__K6_K103_K8_K1] ON [Usr] 
(
	[IsEmailVerified] ASC,
	[IsSkeleton] ASC,
	[Pic] ASC,
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'Usr2')
CREATE NONCLUSTERED INDEX [Usr2] ON [Usr] 
(
	[K] ASC,
	[IsAdmin] ASC,
	[Pic] ASC,
	[NickName] ASC,
	[DateTimeSignUp] ASC,
	[AdminLevel] ASC,
	[BuddyCount] ASC,
	[ChatMessageCount] ASC,
	[CommentCount] ASC,
	[EventCount] ASC,
	[HasDonated] ASC,
	[IsProSpotter] ASC,
	[Introductions] ASC,
	[IsSpotter] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'Usr47')
CREATE NONCLUSTERED INDEX [Usr47] ON [Usr] 
(
	[DateTimeSignUp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Usr]') AND name = N'Usr8')
CREATE NONCLUSTERED INDEX [Usr8] ON [Usr] 
(
	[NickName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LoginCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of times the user has logged in' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LoginCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsAdmin'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the user an admin user?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsAdmin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsEmailVerified'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the email address been verified?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsEmailVerified'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cropped image 80*80 for discussion board avatar etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PicOriginal'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Filename of the original image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PicOriginal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'NickName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nickname for the site' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'NickName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Mobile'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full mobile number including country code (e.g. 447971597702)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Mobile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'MobileCountryCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country code of mobile number (e.g. 44)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'MobileCountryCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'MobileNumber'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mobile number excluding country code and leading zero (e.g. 7971597702)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'MobileNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SendSpottedEmails'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Send me Spotted emails' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SendSpottedEmails'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SendSpottedTexts'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Send me Spotted texts' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SendSpottedTexts'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SendPartnerEmails'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DontStayIn and its partners may send me emails about products I might like' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SendPartnerEmails'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SendPartnerTexts'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DontStayIn and its partners may send me texts about products I might like' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SendPartnerTexts'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'UpdateData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used internally by the bulk email system' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'UpdateData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'UpdateError'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used internally by the bulk email system' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'UpdateError'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AdminNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Admin users may add a private comment to any user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AdminNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'DateTimeLastAccess'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime when the user last logged in' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'DateTimeLastAccess'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'DateTimeSignUp'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime when the user first signed-up' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'DateTimeSignUp'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'DateTimeLastPageRequest'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime when the user last requested a page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'DateTimeLastPageRequest'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PrefsText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used internally to store a serialised hashtable of quick preferences' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PrefsText'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LoginString'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used to verify user on automated login' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LoginString'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PersonalStatement'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Users can edit this themselves' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PersonalStatement'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AddedByUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this usr was added to the system be email by a logged in usr, this is the owner' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AddedByUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AdminLevel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Level of admin trust (0=Nothing, 1=Chat, 2=Photo, 3=Event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AdminLevel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'RandomNumber'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Random float less than 1 used for fast pseudo-random ordering' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'RandomNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LastPrivateComment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date / time of the last private comment that was posted to this user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LastPrivateComment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LastPrivateChatMessage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date / time of the last private chat message that was posted to this user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LastPrivateChatMessage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsSingle'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the user single? If so, they may participate in the DSI Date section' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsSingle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsMale'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the user male?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsMale'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsFemale'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the user female?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsFemale'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'DateOfBirth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of birth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'DateOfBirth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'DateSexMale'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user looking for a male as a date?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'DateSexMale'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'DateSexFemale'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user looking for a female as a date?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'DateSexFemale'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'DateAgeRangeLow'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lower acceptable age range for date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'DateAgeRangeLow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'DateAgeRangeHigh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Upper acceptable age range for date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'DateAgeRangeHigh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Relationship1'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user looking for relationship 1 (Just new friends)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Relationship1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Relationship2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user looking for relationship 2 (A bit of a fling)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Relationship2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Relationship3'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user looking for relationship 3 (Love)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Relationship3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SexHelperMale'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is a non-authoritave sex for this user, based on another user clicking the "This isn''t a xxx!!!" button' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SexHelperMale'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SexHelperFemale'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is a non-authoritave sex for this user, based on another user clicking the "This isn''t a xxx!!!" button' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SexHelperFemale'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'BuddyCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of full buddies this user is connected to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'BuddyCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'ChatMessageCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of full chat messages this user has posted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'ChatMessageCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'CommentCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of comments user has posted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'CommentCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'EventCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of events this user has added' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'EventCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'HomePlaceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The users home town' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'HomePlaceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AgreeTerms'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has this user agreed to the terms and conditions?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AgreeTerms'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'GuestClientK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does this user map to a client in the text-guest system? If so this is the GuestClientK, if not, then zero.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'GuestClientK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'FavouriteMusicTypeK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Favourite music style (main category).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'FavouriteMusicTypeK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'TotalLol'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of times this user has laughed at a comment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'TotalLol'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'TotalMadeLol'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of times this user has made someone laugh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'TotalMadeLol'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LastLol'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime of the last time this user laughed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LastLol'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'UniqueMadeLol'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of users that this user has made laugh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'UniqueMadeLol'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'ChatXml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chat messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'ChatXml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsLoggedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user logged on? (This is only set to false when the user actually logs off)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsLoggedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LastChatItem'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ticks of the last chat item' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LastChatItem'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LastIp'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last IP that the user accessed the site from' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LastIp'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Ignore'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ignore - this hides chat messages from this user / doesn''t send out comment alert emails etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Ignore'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsProSpotter'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user a pro spotter?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsProSpotter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LastInvite'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the last invite that was sent to this user. Ensures we don''t send duplicate event invite PM''s to people.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LastInvite'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IntroducedByUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Who was the first person to take a photo of this user?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IntroducedByUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Introductions'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How many users has this user taken the first photo of?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Introductions'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SendFlyers'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Can we send this user e-flyers?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SendFlyers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SendInvites'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Can we send this user party invites?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SendInvites'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'TotalPhotoUploads'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of enabled photos this usr has added' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'TotalPhotoUploads'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'TempInt'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Temp int used when sending bulk stuff' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'TempInt'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'EnhancedSecurity'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ask the user for their password on each auto-login?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'EnhancedSecurity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AddressStreet'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - Street' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AddressStreet'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AddressArea'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - Area' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AddressArea'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AddressTown'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - Place' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AddressTown'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AddressCounty'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - County' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AddressCounty'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AddressPostcode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - Postcode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AddressPostcode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AddressCountryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address - Country (link to Country table)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AddressCountryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'CardStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'New=3, WelcomePackInPost=4, HaveCards=0, NeedCards=1, CardsInPost=2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'CardStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'TotalCardsSent'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tracks the total number of cards that we''ve sent to this spotter.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'TotalCardsSent'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsSpotter'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user a spotter?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsSpotter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Banned'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user banned?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Banned'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'BannedByUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Who banned this user?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'BannedByUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'BannedDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When were they banned?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'BannedDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'BannedReason'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Why were they banned?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'BannedReason'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'UpdateSendGenericMusic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Send generic music types in the update email?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'UpdateSendGenericMusic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'UpdateLargeEvents'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Include large events in other parts of the country in the update email?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'UpdateLargeEvents'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'UpdateSendBuddies'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Include all events that my buddies are going to in the update email?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'UpdateSendBuddies'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsChatting'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the live chat box turned on?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsChatting'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LastBuddyChange'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was the last time this user gained / lost a buddy? - used when caching the buddies drop-down on the photo page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LastBuddyChange'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'NewsModerator'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'News moderator - they can moderate news' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'NewsModerator'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'NewsPermissionLevel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'News permission - they can post news up to this level' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'NewsPermissionLevel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsBetaTester'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user a beta tester?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsBetaTester'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PlacesVisitCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How many places does this user visit?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PlacesVisitCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'MusicTypesFavouriteCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How many places does this user visit?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'MusicTypesFavouriteCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PhotosMeCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How many places does this user visit?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PhotosMeCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsSkeleton'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user a skeleton?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsSkeleton'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'NoInboxEmails'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Don''t send inbox emails?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'NoInboxEmails'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AbuseReportsPending'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of abuse reports this user has submitted that are pending' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AbuseReportsPending'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AbuseReportsUseful'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of abuse reports this user has submitted that were useful (abuse or noabuse)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AbuseReportsUseful'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AbuseReportsOverturned'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of abuse reports this user has submitted that were overturned' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AbuseReportsOverturned'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AbuseAccusationsPending'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of abuse accusations this user has had made against them that are pending' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AbuseAccusationsPending'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AbuseAccusationsAbuse'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of abuse accusations this user has had made against them that are were found to be abuse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AbuseAccusationsAbuse'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AbuseAccusationsNoAbuse'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of abuse accusations this user has had made against them that are were found to not be abusive' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AbuseAccusationsNoAbuse'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'ModeratePhotos'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Should this users photos be moderated prior to going live?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'ModeratePhotos'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'ChatSessionId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id used for stopping multiple browser pages hogging chat bandwidth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'ChatSessionId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'AddedByGroupK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the group invite page was used to add this user, this is the inviting group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'AddedByGroupK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'DonateIcon'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Which icon is displayed? 0=None, 1=Dog' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'DonateIcon'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'DonateExpire'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When does the icon expire?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'DonateExpire'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'EmailDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/time when the email was last changed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'EmailDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'EmailIp'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ip of the client when the email address was entered' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'EmailIp'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'EmailHold'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the user unsubscribed from emails?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'EmailHold'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsHtmlEditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Can this user edit plain HTML?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsHtmlEditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsGroupModerator'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user a moderator of any groups?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsGroupModerator'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsSkeletonFromSignup'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this skeleton user from the sign-up page - e.g. Entered their email address and password ONCE.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsSkeletonFromSignup'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'ExtraIcon'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Extra icon displayed on the profile' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'ExtraIcon'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'ExtraExpire'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When does the extra icon expire?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'ExtraExpire'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SpottingsTotal'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of distinct users I have taken a photo of' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SpottingsTotal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SpottingsMonth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of distinct users I have taken a photo of in the last month (updated hourly?)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SpottingsMonth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SpottingsMonthRank'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ranking in busiest spotters list (month only)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SpottingsMonthRank'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Donate1Icon'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the first donation icon displayed?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Donate1Icon'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Donate1Expire'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When does the first donation icon expire?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Donate1Expire'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Donate2Icon'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the second donation icon displayed?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Donate2Icon'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'Donate2Expire'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When does the second donation icon expire?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'Donate2Expire'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsPromoter'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this user part of a promoter account?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsPromoter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'CampTickets'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of Camp DSI tickets this user has bought' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'CampTickets'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'HasTicket'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has this user bought a dsi ticket?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'HasTicket'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LastTicketEventDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What''s the date/time of the last event the member has a ticket for?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LastTicketEventDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PasswordHash'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cryptographic hash of the password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PasswordHash'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PasswordSalt'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cryptographic salt used to generate password hash' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PasswordSalt'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'PasswordResetEmailSecret'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Secret data used to verify password reset page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'PasswordResetEmailSecret'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LegalTermsUser1'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has this user agreed to the new terms of use' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LegalTermsUser1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'LegalTermsPromoter1'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has this user agreed to the new terms for promoters' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'LegalTermsPromoter1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsSuperAdmin'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the user a super admin user?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsSuperAdmin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'IsSalesPerson'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the user a sales person?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'IsSalesPerson'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'BuyableLockDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time stamp to record when someone is trying to purchase an IBuyable item that is linked to this Bob. No lock = DateTime.MinValue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'BuyableLockDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', N'COLUMN',N'SalesTeam'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For sales people: their sales team number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr', @level2type=N'COLUMN',@level2name=N'SalesTeam'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1291867669_1_12' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_1291867669_1_12] ON [Usr]([K], [NickName])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1291867669_1_5_125' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_1291867669_1_5_125] ON [Usr]([K], [IsAdmin], [SpottingsMonth])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1291867669_1_61_103_6_25' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_1291867669_1_61_103_6_25] ON [Usr]([K], [IsLoggedOn], [IsSkeleton], [IsEmailVerified], [DateTimeLastPageRequest])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1291867669_103_1_25_61' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_1291867669_103_1_25_61] ON [Usr]([IsSkeleton], [K], [DateTimeLastPageRequest], [IsLoggedOn])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1291867669_103_61_6' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_1291867669_103_61_6] ON [Usr]([IsSkeleton], [IsLoggedOn], [IsEmailVerified])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1291867669_12_61_103_6' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_1291867669_12_61_103_6] ON [Usr]([NickName], [IsLoggedOn], [IsSkeleton], [IsEmailVerified])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1291867669_25_61_103' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_1291867669_25_61_103] ON [Usr]([DateTimeLastPageRequest], [IsLoggedOn], [IsSkeleton])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1291867669_6_1_25_61' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_1291867669_6_1_25_61] ON [Usr]([IsEmailVerified], [K], [DateTimeLastPageRequest], [IsLoggedOn])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1291867669_6_25_103' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_1291867669_6_25_103] ON [Usr]([IsEmailVerified], [DateTimeLastPageRequest], [IsSkeleton])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1291867669_87_1' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_1291867669_87_1] ON [Usr]([UpdateSendGenericMusic], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_1_103_24_132' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_1_103_24_132] ON [Usr]([K], [IsSkeleton], [DateTimeSignUp], [CampTickets])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_1_12_6' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_1_12_6] ON [Usr]([K], [NickName], [IsEmailVerified])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_1_25' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_1_25] ON [Usr]([K], [DateTimeLastPageRequest])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_1_34_35_36_45' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_1_34_35_36_45] ON [Usr]([K], [IsSingle], [IsMale], [IsFemale], [SexHelperMale])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_1_34_8_36_35_45_46' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_1_34_8_36_35_45_46] ON [Usr]([K], [IsSingle], [Pic], [IsFemale], [IsMale], [SexHelperMale], [SexHelperFemale])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_1_36_35_45_46_34' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_1_36_35_45_46_34] ON [Usr]([K], [IsFemale], [IsMale], [SexHelperMale], [SexHelperFemale], [IsSingle])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_1_65_124' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_1_65_124] ON [Usr]([K], [IsProSpotter], [SpottingsTotal])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_1_8' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_1_8] ON [Usr]([K], [Pic])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_1_8_35_36_45_46' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_1_8_35_36_45_46] ON [Usr]([K], [Pic], [IsMale], [IsFemale], [SexHelperMale], [SexHelperFemale])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_103_12_24_1' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_103_12_24_1] ON [Usr]([IsSkeleton], [NickName], [DateTimeSignUp], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_103_24_132_12' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_103_24_132_12] ON [Usr]([IsSkeleton], [DateTimeSignUp], [CampTickets], [NickName])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_103_6_1_8_24' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_103_6_1_8_24] ON [Usr]([IsSkeleton], [IsEmailVerified], [K], [Pic], [DateTimeSignUp])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_12_1_103' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_12_1_103] ON [Usr]([NickName], [K], [IsSkeleton])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_12_103_24' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_12_103_24] ON [Usr]([NickName], [IsSkeleton], [DateTimeSignUp])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_12_24' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_12_24] ON [Usr]([NickName], [DateTimeSignUp])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_12_6_103' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_12_6_103] ON [Usr]([NickName], [IsEmailVerified], [IsSkeleton])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_12_61_6_25_103' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_12_61_6_25_103] ON [Usr]([NickName], [IsLoggedOn], [IsEmailVerified], [DateTimeLastPageRequest], [IsSkeleton])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_131_1' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_131_1] ON [Usr]([IsPromoter], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_132_1_103_12_24' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_132_1_103_12_24] ON [Usr]([CampTickets], [K], [IsSkeleton], [NickName], [DateTimeSignUp])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_24_1_103_6' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_24_1_103_6] ON [Usr]([DateTimeSignUp], [K], [IsSkeleton], [IsEmailVerified])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_24_1_103_8' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_24_1_103_8] ON [Usr]([DateTimeSignUp], [K], [IsSkeleton], [Pic])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_24_1_132' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_24_1_132] ON [Usr]([DateTimeSignUp], [K], [CampTickets])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_25_103' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_25_103] ON [Usr]([DateTimeLastPageRequest], [IsSkeleton])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_35_1_34_8' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_35_1_34_8] ON [Usr]([IsMale], [K], [IsSingle], [Pic])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_35_36_45_46_34' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_35_36_45_46_34] ON [Usr]([IsMale], [IsFemale], [SexHelperMale], [SexHelperFemale], [IsSingle])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_36_1_34' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_36_1_34] ON [Usr]([IsFemale], [K], [IsSingle])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_45_1_34_8_36' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_45_1_34_8_36] ON [Usr]([SexHelperMale], [K], [IsSingle], [Pic], [IsFemale])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_45_1_8_34_35' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_45_1_8_34_35] ON [Usr]([SexHelperMale], [K], [Pic], [IsSingle], [IsMale])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_46_1_8_34_35_36' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_46_1_8_34_35_36] ON [Usr]([SexHelperFemale], [K], [Pic], [IsSingle], [IsMale], [IsFemale])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_6_103_1_12' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_6_103_1_12] ON [Usr]([IsEmailVerified], [IsSkeleton], [K], [NickName])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_6_103_8' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_6_103_8] ON [Usr]([IsEmailVerified], [IsSkeleton], [Pic])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_6_103_8_1_24' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_6_103_8_1_24] ON [Usr]([IsEmailVerified], [IsSkeleton], [Pic], [K], [DateTimeSignUp])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_65_124' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_65_124] ON [Usr]([IsProSpotter], [SpottingsTotal])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_8_1_24' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_8_1_24] ON [Usr]([Pic], [K], [DateTimeSignUp])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_728389664_8_1_6' and object_id = object_id(N'[Usr]'))
CREATE STATISTICS [_dta_stat_728389664_8_1_6] ON [Usr]([Pic], [K], [IsEmailVerified])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Usr', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Each registered user of the system gets a record in this table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usr'
GO
/****** Object:  Table [dbo].[Thread]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Thread]') AND type in (N'U'))
BEGIN
CREATE TABLE [Thread](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [varchar](200) NULL,
	[ParentObjectType] [int] NULL,
	[ParentObjectK] [int] NULL,
	[UsrK] [int] NULL,
	[Enabled] [bit] NULL,
	[LastPost] [datetime] NULL,
	[LastPostUsrK] [int] NULL,
	[TotalComments] [int] NULL,
	[AverageCommentDateTime] [datetime] NULL,
	[Private] [bit] NULL,
	[GroupPrivate] [bit] NULL,
	[PrivateGroup] [bit] NULL,
	[ThemeK] [int] NULL,
	[ArticleK] [int] NULL,
	[PhotoK] [int] NULL,
	[EventK] [int] NULL,
	[VenueK] [int] NULL,
	[PlaceK] [int] NULL,
	[RegionK] [int] NULL,
	[CountryK] [int] NULL,
	[BrandK] [int] NULL,
	[GroupK] [int] NULL,
	[MusicTypeK] [int] NULL,
	[IsNews] [bit] NULL,
	[DateTime] [datetime] NULL,
	[IsNationwideNews] [bit] NULL,
	[FullText] [text] NULL,
	[IsReview] [bit] NULL,
	[IsSticky] [bit] NULL,
	[IsWorldwideNews] [bit] NULL,
	[TotalParticipants] [int] NULL,
	[FirstParticipantUsrK] [int] NULL,
	[HideFromHighlights] [bit] NULL,
	[HotTopicsOrder] [datetime] NULL,
	[UrlFragment] [varchar](255) NULL,
	[Sealed] [bit] NULL,
	[Closed] [bit] NULL,
	[NewsStatus] [int] NULL,
	[NewsLevel] [int] NULL,
	[NewsLevelSuggested] [int] NULL,
	[NewsUsrK] [int] NULL,
	[TotalWatching] [int] NULL,
	[NewsModeratorUsrK] [int] NULL,
	[NewsModeratedByUsrK] [int] NULL,
	[NewsModerationDateTime] [datetime] NULL,
 CONSTRAINT [PK_Thread] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_5_1401772051__K24_K11_K12_K13_K18_K1_K5_K8_K34_K17_K7_2_3_4_9_26_30_33_37_44')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_5_1401772051__K24_K11_K12_K13_K18_K1_K5_K8_K34_K17_K7_2_3_4_9_26_30_33_37_44] ON [Thread] 
(
	[GroupK] ASC,
	[Private] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[EventK] ASC,
	[K] ASC,
	[UsrK] ASC,
	[LastPostUsrK] ASC,
	[FirstParticipantUsrK] ASC,
	[PhotoK] ASC,
	[LastPost] ASC
)
INCLUDE ( [IsReview],
[IsNews],
[ParentObjectType],
[ParentObjectK],
[Subject],
[TotalWatching],
[UrlFragment],
[TotalParticipants],
[TotalComments]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_5_1401772051__K7D_K11_K12_K13_K24_1_2_3_4_5_8_9_17_18_26_30_33_34_37_44')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_5_1401772051__K7D_K11_K12_K13_K24_1_2_3_4_5_8_9_17_18_26_30_33_34_37_44] ON [Thread] 
(
	[LastPost] DESC,
	[Private] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[GroupK] ASC
)
INCLUDE ( [LastPostUsrK],
[ParentObjectK],
[ParentObjectType],
[PhotoK],
[Subject],
[TotalComments],
[TotalParticipants],
[UrlFragment],
[TotalWatching],
[FirstParticipantUsrK],
[EventK],
[K],
[IsReview],
[IsNews],
[UsrK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_5_1401772051__K7D_K12_K13_K11_1_2_3_4_5_8_9_17_24_26_30_33_34_44')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_5_1401772051__K7D_K12_K13_K11_1_2_3_4_5_8_9_17_24_26_30_33_34_44] ON [Thread] 
(
	[LastPost] DESC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[Private] ASC
)
INCLUDE ( [GroupK],
[FirstParticipantUsrK],
[IsNews],
[IsReview],
[K],
[Subject],
[TotalWatching],
[TotalParticipants],
[TotalComments],
[PhotoK],
[ParentObjectType],
[ParentObjectK],
[LastPostUsrK],
[UsrK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_1401772051__K12_K13_K26_K30_K9_K10_K11_K35_K1_K21_K18_K19_K20_K15_K17_K22_2_3_5_7_24_36_37')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_1401772051__K12_K13_K26_K30_K9_K10_K11_K35_K1_K21_K18_K19_K20_K15_K17_K22_2_3_5_7_24_36_37] ON [Thread] 
(
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[IsNews] ASC,
	[IsReview] ASC,
	[TotalComments] ASC,
	[AverageCommentDateTime] ASC,
	[Private] ASC,
	[HideFromHighlights] ASC,
	[K] ASC,
	[CountryK] ASC,
	[EventK] ASC,
	[VenueK] ASC,
	[PlaceK] ASC,
	[ArticleK] ASC,
	[PhotoK] ASC,
	[BrandK] ASC
)
INCLUDE ( [Subject],
[UrlFragment],
[UsrK],
[LastPost],
[ParentObjectType],
[GroupK],
[HotTopicsOrder]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_1401772051__K13_K19_K9_K1_K26_K30_K10_K11_K12_K35_K18_K20_K15_K17_K22_K24_2_3_5_7_36_37')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_1401772051__K13_K19_K9_K1_K26_K30_K10_K11_K12_K35_K18_K20_K15_K17_K22_K24_2_3_5_7_36_37] ON [Thread] 
(
	[PrivateGroup] ASC,
	[VenueK] ASC,
	[TotalComments] ASC,
	[K] ASC,
	[IsNews] ASC,
	[IsReview] ASC,
	[AverageCommentDateTime] ASC,
	[Private] ASC,
	[GroupPrivate] ASC,
	[HideFromHighlights] ASC,
	[EventK] ASC,
	[PlaceK] ASC,
	[ArticleK] ASC,
	[PhotoK] ASC,
	[BrandK] ASC,
	[GroupK] ASC
)
INCLUDE ( [HotTopicsOrder],
[ParentObjectType],
[LastPost],
[Subject],
[UrlFragment],
[UsrK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_1401772051__K18_K1_K5_K8_K34_K17_K11_K24_K12_K13_2_3_4_7_9_10_15_19_20_22_26_27_30_33_35_36_37_44')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_1401772051__K18_K1_K5_K8_K34_K17_K11_K24_K12_K13_2_3_4_7_9_10_15_19_20_22_26_27_30_33_35_36_37_44] ON [Thread] 
(
	[EventK] ASC,
	[K] ASC,
	[UsrK] ASC,
	[LastPostUsrK] ASC,
	[FirstParticipantUsrK] ASC,
	[PhotoK] ASC,
	[Private] ASC,
	[GroupK] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC
)
INCLUDE ( [BrandK],
[ArticleK],
[AverageCommentDateTime],
[DateTime],
[HideFromHighlights],
[HotTopicsOrder],
[IsNews],
[IsReview],
[PlaceK],
[ParentObjectType],
[ParentObjectK],
[LastPost],
[Subject],
[TotalComments],
[TotalParticipants],
[TotalWatching],
[UrlFragment],
[VenueK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_1401772051__K19_K1_K5_K8_K34_K17_K11_K24_K12_K13_K7_2_3_4_9_26_30_33_37_44')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_1401772051__K19_K1_K5_K8_K34_K17_K11_K24_K12_K13_K7_2_3_4_9_26_30_33_37_44] ON [Thread] 
(
	[VenueK] ASC,
	[K] ASC,
	[UsrK] ASC,
	[LastPostUsrK] ASC,
	[FirstParticipantUsrK] ASC,
	[PhotoK] ASC,
	[Private] ASC,
	[GroupK] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[LastPost] ASC
)
INCLUDE ( [Subject],
[TotalComments],
[TotalWatching],
[TotalParticipants],
[UrlFragment],
[ParentObjectK],
[ParentObjectType],
[IsNews],
[IsReview]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_1401772051__K20_K1_K7_K5_K8_K34_K17_K11_K24_K12_K13_2_3_4_6_9_10_14_15_18_19_21_22_25_26_27_28_30_31_32_33_')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_1401772051__K20_K1_K7_K5_K8_K34_K17_K11_K24_K12_K13_2_3_4_6_9_10_14_15_18_19_21_22_25_26_27_28_30_31_32_33_] ON [Thread] 
(
	[PlaceK] ASC,
	[K] ASC,
	[LastPost] ASC,
	[UsrK] ASC,
	[LastPostUsrK] ASC,
	[FirstParticipantUsrK] ASC,
	[PhotoK] ASC,
	[Private] ASC,
	[GroupK] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC
)
INCLUDE ( [MusicTypeK],
[ParentObjectType],
[ParentObjectK],
[NewsLevel],
[NewsLevelSuggested],
[NewsModeratedByUsrK],
[NewsModerationDateTime],
[NewsModeratorUsrK],
[NewsStatus],
[NewsUsrK],
[Sealed],
[TotalComments],
[Subject],
[ThemeK],
[UrlFragment],
[TotalParticipants],
[TotalWatching],
[HideFromHighlights],
[IsNews],
[IsNationwideNews],
[HotTopicsOrder],
[IsReview],
[IsWorldwideNews],
[IsSticky],
[EventK],
[Enabled],
[DateTime],
[CountryK],
[AverageCommentDateTime],
[ArticleK],
[BrandK],
[Closed],
[VenueK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_1401772051__K26_K12_K13_K24_K1_K18_K19_K20_K15_K17_K22_K5_K27_2_3_9_11_37')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_1401772051__K26_K12_K13_K24_K1_K18_K19_K20_K15_K17_K22_K5_K27_2_3_9_11_37] ON [Thread] 
(
	[IsNews] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[GroupK] ASC,
	[K] ASC,
	[EventK] ASC,
	[VenueK] ASC,
	[PlaceK] ASC,
	[ArticleK] ASC,
	[PhotoK] ASC,
	[BrandK] ASC,
	[UsrK] ASC,
	[DateTime] ASC
)
INCLUDE ( [Private],
[Subject],
[UrlFragment],
[TotalComments],
[ParentObjectType]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_1401772051__K27D_K21_K11_K12_K13_K30_1_2_3_4_5_9_18_19_20_37')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_1401772051__K27D_K21_K11_K12_K13_K30_1_2_3_4_5_9_18_19_20_37] ON [Thread] 
(
	[DateTime] DESC,
	[CountryK] ASC,
	[Private] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[IsReview] ASC
)
INCLUDE ( [EventK],
[K],
[PlaceK],
[ParentObjectType],
[ParentObjectK],
[Subject],
[TotalComments],
[UsrK],
[UrlFragment],
[VenueK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_1401772051__K7D_K21_K12_K13_K11_1_2_3_4_5_8_9_17_24_26_30_33_34_37_44')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_1401772051__K7D_K21_K12_K13_K11_1_2_3_4_5_8_9_17_24_26_30_33_34_37_44] ON [Thread] 
(
	[LastPost] DESC,
	[CountryK] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[Private] ASC
)
INCLUDE ( [IsReview],
[K],
[IsNews],
[FirstParticipantUsrK],
[GroupK],
[Subject],
[TotalComments],
[TotalParticipants],
[UrlFragment],
[TotalWatching],
[ParentObjectType],
[ParentObjectK],
[PhotoK],
[LastPostUsrK],
[UsrK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_776389835__K16_K3_K4_1_36')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_776389835__K16_K3_K4_1_36] ON [Thread] 
(
	[PhotoK] ASC,
	[ParentObjectType] ASC,
	[ParentObjectK] ASC
)
INCLUDE ( [UrlFragment],
[K]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_776389835__K19_K12_K13_K11_K5_K8_K33_K23_K1_K16_K7_2_3_4_9_25_29_32_43')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_776389835__K19_K12_K13_K11_K5_K8_K33_K23_K1_K16_K7_2_3_4_9_25_29_32_43] ON [Thread] 
(
	[PlaceK] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[Private] ASC,
	[UsrK] ASC,
	[LastPostUsrK] ASC,
	[FirstParticipantUsrK] ASC,
	[GroupK] ASC,
	[K] ASC,
	[PhotoK] ASC,
	[LastPost] ASC
)
INCLUDE ( [ParentObjectK],
[ParentObjectType],
[TotalWatching],
[TotalParticipants],
[TotalComments],
[Subject],
[IsReview],
[IsNews]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_776389835__K21_K12_K13_K11_K16_K23_K1_K33_K8_K5_K7_2_3_4_9_25_29_32_36_43')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_776389835__K21_K12_K13_K11_K16_K23_K1_K33_K8_K5_K7_2_3_4_9_25_29_32_36_43] ON [Thread] 
(
	[CountryK] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[Private] ASC,
	[PhotoK] ASC,
	[GroupK] ASC,
	[K] ASC,
	[FirstParticipantUsrK] ASC,
	[LastPostUsrK] ASC,
	[UsrK] ASC,
	[LastPost] ASC
)
INCLUDE ( [ParentObjectType],
[ParentObjectK],
[TotalParticipants],
[TotalWatching],
[UrlFragment],
[Subject],
[TotalComments],
[IsReview],
[IsNews]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_7_776389835__K35D_K6_K11_K12_K13_K34_K9')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_7_776389835__K35D_K6_K11_K12_K13_K34_K9] ON [Thread] 
(
	[HotTopicsOrder] DESC,
	[Enabled] ASC,
	[Private] ASC,
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[HideFromHighlights] ASC,
	[TotalComments] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_8_776389835__K1_K11')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_8_776389835__K1_K11] ON [Thread] 
(
	[K] ASC,
	[Private] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_8_776389835__K12_K13_K15_K11_K1_K5_K16_K7_K8_K33_2_3_4_9_23_25_29_32_36_43')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_8_776389835__K12_K13_K15_K11_K1_K5_K16_K7_K8_K33_2_3_4_9_23_25_29_32_36_43] ON [Thread] 
(
	[GroupPrivate] ASC,
	[PrivateGroup] ASC,
	[ArticleK] ASC,
	[Private] ASC,
	[K] ASC,
	[UsrK] ASC,
	[PhotoK] ASC,
	[LastPost] ASC,
	[LastPostUsrK] ASC,
	[FirstParticipantUsrK] ASC
)
INCLUDE ( [TotalComments],
[Subject],
[UrlFragment],
[TotalWatching],
[TotalParticipants],
[ParentObjectK],
[ParentObjectType],
[IsReview],
[IsNews],
[GroupK]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_8_776389835__K15_7_9_26')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_8_776389835__K15_7_9_26] ON [Thread] 
(
	[ArticleK] ASC
)
INCLUDE ( [DateTime],
[LastPost],
[TotalComments]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'_dta_index_Thread_8_776389835__K21_K13_K11_K25_K29_K9_K12_K1_K5_K10_K34_K17_K18_K19_K15_K16_2_3_7_22_23_35_36')
CREATE NONCLUSTERED INDEX [_dta_index_Thread_8_776389835__K21_K13_K11_K25_K29_K9_K12_K1_K5_K10_K34_K17_K18_K19_K15_K16_2_3_7_22_23_35_36] ON [Thread] 
(
	[CountryK] ASC,
	[PrivateGroup] ASC,
	[Private] ASC,
	[IsNews] ASC,
	[IsReview] ASC,
	[TotalComments] ASC,
	[GroupPrivate] ASC,
	[K] ASC,
	[UsrK] ASC,
	[AverageCommentDateTime] ASC,
	[HideFromHighlights] ASC,
	[EventK] ASC,
	[VenueK] ASC,
	[PlaceK] ASC,
	[ArticleK] ASC,
	[PhotoK] ASC
)
INCLUDE ( [Subject],
[UrlFragment],
[LastPost],
[ParentObjectType],
[BrandK],
[GroupK],
[HotTopicsOrder]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'Thread13')
CREATE NONCLUSTERED INDEX [Thread13] ON [Thread] 
(
	[GroupK] ASC,
	[NewsStatus] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'Thread15')
CREATE NONCLUSTERED INDEX [Thread15] ON [Thread] 
(
	[EventK] ASC,
	[GroupK] ASC,
	[LastPost] ASC,
	[TotalComments] ASC,
	[DateTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'Thread28')
CREATE NONCLUSTERED INDEX [Thread28] ON [Thread] 
(
	[PhotoK] ASC,
	[LastPost] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'Thread30')
CREATE NONCLUSTERED INDEX [Thread30] ON [Thread] 
(
	[NewsStatus] ASC,
	[NewsModeratorUsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'Thread47')
CREATE NONCLUSTERED INDEX [Thread47] ON [Thread] 
(
	[GroupK] ASC,
	[LastPost] ASC,
	[TotalComments] ASC,
	[EventK] ASC,
	[DateTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'Thread49')
CREATE NONCLUSTERED INDEX [Thread49] ON [Thread] 
(
	[EventK] ASC,
	[LastPost] ASC,
	[TotalComments] ASC,
	[DateTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'Thread51')
CREATE NONCLUSTERED INDEX [Thread51] ON [Thread] 
(
	[VenueK] ASC,
	[LastPost] ASC,
	[TotalComments] ASC,
	[DateTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Thread]') AND name = N'Thread52')
CREATE NONCLUSTERED INDEX [Thread52] ON [Thread] 
(
	[PlaceK] ASC,
	[LastPost] ASC,
	[TotalComments] ASC,
	[DateTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'Subject'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Subject of the thread' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'Subject'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'ParentObjectType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Which type of object is the parent of this thread? Photo=1, Event=2, Venue=3, Place=4, None=5, Country=7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'ParentObjectType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'ParentObjectK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key of record in parent table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'ParentObjectK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links to one User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'Enabled'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this is set to false, the thread will not be displayed (for disabling offensive posts)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'LastPost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/Time of last post - threads are ordered by this.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'LastPost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'LastPostUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usr that posted the last comment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'LastPostUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'TotalComments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tracks the total number of comments in the thread' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'TotalComments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'AverageCommentDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average date.time of all comments posted in this thread' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'AverageCommentDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'Private'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Private threads can only be viewed by linked users, and the thread poster' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'Private'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'GroupPrivate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'In a group, private threads can only be viewed by group members' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'GroupPrivate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'PrivateGroup'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'All threads in a private chat group have this flag set' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'PrivateGroup'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'ThemeK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The theme of the article - mostly for groups' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'ThemeK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'ArticleK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The article that this thread is associated with' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'ArticleK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'PhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this thread is linked to a photo, this is the key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'PhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this thread is linked to a event, this is the key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'VenueK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this thread is linked to a venue, this is the key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'VenueK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'PlaceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this thread is linked to a place, this is the key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'PlaceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'RegionK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this thread is linked to a region, this is the key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'RegionK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'CountryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this thread is linked to a country, this is the key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'CountryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'BrandK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this thread is directly linked to a brand (not in an event), this is the K' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'BrandK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'GroupK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this thread is in a group, this is the K' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'GroupK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'MusicTypeK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this thread is in a music specific group, this is the K' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'MusicTypeK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'IsNews'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'These are news threads posted by place admins... they show in bold in the discussions page, and the last 5 are displayed on the place home page.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'IsNews'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/time that the comment was posted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'IsNationwideNews'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'These are news threads posted by country admins...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'IsNationwideNews'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'FullText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'FullText'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'IsReview'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this an event review?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'IsReview'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'IsSticky'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this a sticky thread?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'IsSticky'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'IsWorldwideNews'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this a sticky thread?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'IsWorldwideNews'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'TotalParticipants'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of participants' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'TotalParticipants'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'FirstParticipantUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UsrK of the other participant (for private messages between 2 users)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'FirstParticipantUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'HideFromHighlights'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do we hide this thread from the Hot Topics lists?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'HideFromHighlights'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'HotTopicsOrder'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime used to order threads in the Latest "Hot topics" box: AverageDateTime.AddHours(TotalComments*2)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'HotTopicsOrder'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'UrlFragment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The url fragment - so that the url can be generated without accessing parent database records' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'UrlFragment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'Sealed'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Only the owner may invite people to this thread (for private threads only)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'Sealed'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'Closed'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Posting disabled' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'Closed'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'NewsStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'News recommendation status - None=0, Recommended=1, Done=2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'NewsStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'NewsLevel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'News importance level' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'NewsLevel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'NewsLevelSuggested'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'News importance level suggested by user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'NewsLevelSuggested'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'NewsUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'News recommendation usr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'NewsUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'TotalWatching'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of users that are watching this thread' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'TotalWatching'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'NewsModeratorUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'News moderator assigned to moderate this news' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'NewsModeratorUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'NewsModeratedByUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Who actually moderated the news' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'NewsModeratedByUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', N'COLUMN',N'NewsModerationDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date/Time when the news was moderated' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread', @level2type=N'COLUMN',@level2name=N'NewsModerationDateTime'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_11_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_11_12_13] ON [Thread]([K], [Private], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_12_13_11_5_33_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_12_13_11_5_33_16] ON [Thread]([K], [GroupPrivate], [PrivateGroup], [Private], [UsrK], [FirstParticipantUsrK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_13_11_12_19_5_8_33' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_13_11_12_19_5_8_33] ON [Thread]([K], [PrivateGroup], [Private], [GroupPrivate], [PlaceK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_13_12_23_5_8_33_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_13_12_23_5_8_33_16] ON [Thread]([K], [PrivateGroup], [GroupPrivate], [GroupK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_15_11_13_12_16_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_15_11_13_12_16_5_8] ON [Thread]([K], [ArticleK], [Private], [PrivateGroup], [GroupPrivate], [PhotoK], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_15_13_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_15_13_11] ON [Thread]([K], [ArticleK], [PrivateGroup], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_15_16_22_23_25' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_15_16_22_23_25] ON [Thread]([K], [ArticleK], [PhotoK], [BrandK], [GroupK], [IsNews])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_16_23_5_21_12_13_11_25_29_9_10_34_17_18_19' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_16_23_5_21_12_13_11_25_29_9_10_34_17_18_19] ON [Thread]([K], [PhotoK], [GroupK], [UsrK], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [AverageCommentDateTime], [HideFromHighlights], [EventK], [VenueK], [PlaceK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_18_15_16_22_23_5_19_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_18_15_16_22_23_5_19_12_13] ON [Thread]([K], [EventK], [VenueK], [ArticleK], [PhotoK], [BrandK], [GroupK], [UsrK], [PlaceK], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_18_15_22_10_34_35' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_18_15_22_10_34_35] ON [Thread]([K], [EventK], [VenueK], [ArticleK], [BrandK], [AverageCommentDateTime], [HideFromHighlights], [HotTopicsOrder])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_18_19_15_16_22_23_5_21_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_18_19_15_16_22_23_5_21_12_13] ON [Thread]([K], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK], [BrandK], [GroupK], [UsrK], [CountryK], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_18_19_15_16_22_23_5_21_12_13_11_25_29_9' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_18_19_15_16_22_23_5_21_12_13_11_25_29_9] ON [Thread]([K], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK], [BrandK], [GroupK], [UsrK], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_18_19_15_16_22_23_5_25_12_13_9' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_18_19_15_16_22_23_5_25_12_13_9] ON [Thread]([K], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK], [BrandK], [GroupK], [UsrK], [IsNews], [GroupPrivate], [PrivateGroup], [TotalComments])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_18_19_15_16_22_23_5_25_29' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_18_19_15_16_22_23_5_25_29] ON [Thread]([K], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK], [BrandK], [GroupK], [UsrK], [IsNews], [IsReview])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_18_19_15_16_22_23_5_9_11_12_13_34_25_29' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_18_19_15_16_22_23_5_9_11_12_13_34_25_29] ON [Thread]([K], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK], [BrandK], [GroupK], [UsrK], [TotalComments], [Private], [GroupPrivate], [PrivateGroup], [HideFromHighlights], [IsNews], [IsReview])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_18_19_15_22_10' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_18_19_15_22_10] ON [Thread]([K], [EventK], [VenueK], [PlaceK], [ArticleK], [BrandK], [AverageCommentDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_18_19_5_21_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_18_19_5_21_12_13] ON [Thread]([K], [EventK], [VenueK], [PlaceK], [UsrK], [CountryK], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_18_5_19_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_18_5_19_12] ON [Thread]([K], [EventK], [VenueK], [UsrK], [PlaceK], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_17_5_8_33_16_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_17_5_8_33_16_23] ON [Thread]([K], [EventK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_18_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_18_12_13] ON [Thread]([K], [VenueK], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_19_12_13_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_19_12_13_11] ON [Thread]([K], [PlaceK], [GroupPrivate], [PrivateGroup], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_19_12_13_11_25_29' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_19_12_13_11_25_29] ON [Thread]([K], [PlaceK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_21_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_21_12_13] ON [Thread]([K], [CountryK], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_21_12_13_11_25_29' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_21_12_13_11_25_29] ON [Thread]([K], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_23_11_12_13_7_5_8_33' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_23_11_12_13_7_5_8_33] ON [Thread]([K], [GroupK], [Private], [GroupPrivate], [PrivateGroup], [LastPost], [UsrK], [LastPostUsrK], [FirstParticipantUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_23_21_12_13_25_17_18_19_15_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_23_21_12_13_25_17_18_19_15_16] ON [Thread]([K], [GroupK], [CountryK], [GroupPrivate], [PrivateGroup], [IsNews], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_29_10_34_35' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_29_10_34_35] ON [Thread]([K], [IsReview], [AverageCommentDateTime], [HideFromHighlights], [HotTopicsOrder])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_5_16_12_13_15_11_7_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_5_16_12_13_15_11_7_8] ON [Thread]([K], [UsrK], [PhotoK], [GroupPrivate], [PrivateGroup], [ArticleK], [Private], [LastPost], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_5_33_16_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_5_33_16_23] ON [Thread]([K], [UsrK], [FirstParticipantUsrK], [PhotoK], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_5_33_16_23_11_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_5_33_16_23_11_12_13] ON [Thread]([K], [UsrK], [FirstParticipantUsrK], [PhotoK], [GroupK], [Private], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_5_8_33_16_12_13_15' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_5_8_33_16_12_13_15] ON [Thread]([K], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [GroupPrivate], [PrivateGroup], [ArticleK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_5_8_33_16_23_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_5_8_33_16_23_11_12] ON [Thread]([K], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [GroupK], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_5_8_33_16_23_18' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_5_8_33_16_23_18] ON [Thread]([K], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [GroupK], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_8_33_12_13_15_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_8_33_12_13_15_11] ON [Thread]([K], [LastPostUsrK], [FirstParticipantUsrK], [GroupPrivate], [PrivateGroup], [ArticleK], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_8_33_12_13_15_11_5_16_7' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_8_33_12_13_15_11_5_16_7] ON [Thread]([K], [LastPostUsrK], [FirstParticipantUsrK], [GroupPrivate], [PrivateGroup], [ArticleK], [Private], [UsrK], [PhotoK], [LastPost])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_1_9_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_1_9_11_12] ON [Thread]([K], [TotalComments], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_10_21_12_13_11_25_29_9' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_10_21_12_13_11_25_29_9] ON [Thread]([AverageCommentDateTime], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_10_34_1_17_18_15' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_10_34_1_17_18_15] ON [Thread]([AverageCommentDateTime], [HideFromHighlights], [K], [EventK], [VenueK], [ArticleK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_10_34_1_17_18_19_15_22_35' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_10_34_1_17_18_19_15_22_35] ON [Thread]([AverageCommentDateTime], [HideFromHighlights], [K], [EventK], [VenueK], [PlaceK], [ArticleK], [BrandK], [HotTopicsOrder])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_11_1_5_33_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_11_1_5_33_16] ON [Thread]([Private], [K], [UsrK], [FirstParticipantUsrK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_11_1_5_33_16_23_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_11_1_5_33_16_23_12] ON [Thread]([Private], [K], [UsrK], [FirstParticipantUsrK], [PhotoK], [GroupK], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_11_12_13_1_17_5_8_33_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_11_12_13_1_17_5_8_33_16] ON [Thread]([Private], [GroupPrivate], [PrivateGroup], [K], [EventK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_11_12_13_1_5_33_16_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_11_12_13_1_5_33_16_23] ON [Thread]([Private], [GroupPrivate], [PrivateGroup], [K], [UsrK], [FirstParticipantUsrK], [PhotoK], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_11_23_1_19_5_8_33_16_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_11_23_1_19_5_8_33_16_12] ON [Thread]([Private], [GroupK], [K], [PlaceK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_11_23_1_33_8_5_21_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_11_23_1_33_8_5_21_16] ON [Thread]([Private], [GroupK], [K], [FirstParticipantUsrK], [LastPostUsrK], [UsrK], [CountryK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_11_29' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_11_29] ON [Thread]([Private], [IsReview])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_11_9' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_11_9] ON [Thread]([Private], [TotalComments])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_1' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_1] ON [Thread]([GroupPrivate], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_1_23_11_13_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_1_23_11_13_5_8] ON [Thread]([GroupPrivate], [K], [GroupK], [Private], [PrivateGroup], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_11_16_1_17_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_11_16_1_17_5_8] ON [Thread]([GroupPrivate], [PrivateGroup], [Private], [PhotoK], [K], [EventK], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_11_16_1_5' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_11_16_1_5] ON [Thread]([GroupPrivate], [PrivateGroup], [Private], [PhotoK], [K], [UsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_11_17' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_11_17] ON [Thread]([GroupPrivate], [PrivateGroup], [Private], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_11_5_33' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_11_5_33] ON [Thread]([GroupPrivate], [PrivateGroup], [Private], [UsrK], [FirstParticipantUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_11_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_11_5_8] ON [Thread]([GroupPrivate], [PrivateGroup], [Private], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_11_5_8_33_1' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_11_5_8_33_1] ON [Thread]([GroupPrivate], [PrivateGroup], [Private], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_15_11_1_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_15_11_1_5_8] ON [Thread]([GroupPrivate], [PrivateGroup], [ArticleK], [Private], [K], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_23] ON [Thread]([GroupPrivate], [PrivateGroup], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_23_1_7_5_8_33' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_23_1_7_5_8_33] ON [Thread]([GroupPrivate], [PrivateGroup], [GroupK], [K], [LastPost], [UsrK], [LastPostUsrK], [FirstParticipantUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_23_1_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_23_1_8] ON [Thread]([GroupPrivate], [PrivateGroup], [GroupK], [K], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_13_23_9_11_25_29_10_34_35' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_13_23_9_11_25_29_10_34_35] ON [Thread]([GroupPrivate], [PrivateGroup], [GroupK], [TotalComments], [Private], [IsNews], [IsReview], [AverageCommentDateTime], [HideFromHighlights], [HotTopicsOrder])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_17_29_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_17_29_11] ON [Thread]([GroupPrivate], [EventK], [IsReview], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_19_25_13_17_18' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_19_25_13_17_18] ON [Thread]([GroupPrivate], [PlaceK], [IsNews], [PrivateGroup], [EventK], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_19_29_11_13_17' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_19_29_11_13_17] ON [Thread]([GroupPrivate], [PlaceK], [IsReview], [Private], [PrivateGroup], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_21_13_1_25_17_18_19_15_16_22_23_5' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_21_13_1_25_17_18_19_15_16_22_23_5] ON [Thread]([GroupPrivate], [CountryK], [PrivateGroup], [K], [IsNews], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK], [BrandK], [GroupK], [UsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_23_1_19_5_8_33_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_23_1_19_5_8_33_16] ON [Thread]([GroupPrivate], [GroupK], [K], [PlaceK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_23_1_33_8_5_21_16_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_23_1_33_8_5_21_16_11] ON [Thread]([GroupPrivate], [GroupK], [K], [FirstParticipantUsrK], [LastPostUsrK], [UsrK], [CountryK], [PhotoK], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_23_1_5_8_33_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_23_1_5_8_33_16] ON [Thread]([GroupPrivate], [GroupK], [K], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_29_21' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_29_21] ON [Thread]([GroupPrivate], [IsReview], [CountryK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_12_9_6_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_12_9_6_11] ON [Thread]([GroupPrivate], [TotalComments], [Enabled], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_1_12_15_11_5_8_33_16_7' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_1_12_15_11_5_8_33_16_7] ON [Thread]([PrivateGroup], [K], [GroupPrivate], [ArticleK], [Private], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [LastPost])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_1_18_5_8_33_16_11_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_1_18_5_8_33_16_11_23] ON [Thread]([PrivateGroup], [K], [VenueK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [Private], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_1_23_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_1_23_11] ON [Thread]([PrivateGroup], [K], [GroupK], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_1_5_33_16_11_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_1_5_33_16_11_23] ON [Thread]([PrivateGroup], [K], [UsrK], [FirstParticipantUsrK], [PhotoK], [Private], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_11_12_5_8_33_19_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_11_12_5_8_33_19_16] ON [Thread]([PrivateGroup], [Private], [GroupPrivate], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PlaceK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_12_1_23_5_8_33_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_12_1_23_5_8_33_16] ON [Thread]([PrivateGroup], [GroupPrivate], [K], [GroupK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_12_1_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_12_1_5_8] ON [Thread]([PrivateGroup], [GroupPrivate], [K], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_12_1_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_12_1_8] ON [Thread]([PrivateGroup], [GroupPrivate], [K], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_12_1_9_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_12_1_9_11] ON [Thread]([PrivateGroup], [GroupPrivate], [K], [TotalComments], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_12_16_11_5_8_33_1' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_12_16_11_5_8_33_1] ON [Thread]([PrivateGroup], [GroupPrivate], [PhotoK], [Private], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_12_16_19_25_17_18_15_22' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_12_16_19_25_17_18_15_22] ON [Thread]([PrivateGroup], [GroupPrivate], [PhotoK], [PlaceK], [IsNews], [EventK], [VenueK], [ArticleK], [BrandK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_12_16_23_1_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_12_16_23_1_5_8] ON [Thread]([PrivateGroup], [GroupPrivate], [PhotoK], [GroupK], [K], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_12_23_19_25_17_18_15_16_22_5_26' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_12_23_19_25_17_18_15_16_22_5_26] ON [Thread]([PrivateGroup], [GroupPrivate], [GroupK], [PlaceK], [IsNews], [EventK], [VenueK], [ArticleK], [PhotoK], [BrandK], [UsrK], [DateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_12_5_8_33_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_12_5_8_33_23] ON [Thread]([PrivateGroup], [GroupPrivate], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_12_5_8_33_23_1_16_7' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_12_5_8_33_23_1_16_7] ON [Thread]([PrivateGroup], [GroupPrivate], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [GroupK], [K], [PhotoK], [LastPost])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_23_1_19_5_8_33_16_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_23_1_19_5_8_33_16_11] ON [Thread]([PrivateGroup], [GroupK], [K], [PlaceK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_23_1_33_8_5_21_16_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_23_1_33_8_5_21_16_11] ON [Thread]([PrivateGroup], [GroupK], [K], [FirstParticipantUsrK], [LastPostUsrK], [UsrK], [CountryK], [PhotoK], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_23_17_5_8_33_16_1_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_23_17_5_8_33_16_1_11] ON [Thread]([PrivateGroup], [GroupK], [EventK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [K], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_29_21_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_29_21_11] ON [Thread]([PrivateGroup], [IsReview], [CountryK], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_13_9_6_11_12_34_35' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_13_9_6_11_12_34_35] ON [Thread]([PrivateGroup], [TotalComments], [Enabled], [Private], [GroupPrivate], [HideFromHighlights], [HotTopicsOrder])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_15_1_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_15_1_12] ON [Thread]([ArticleK], [K], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_15_13_11_12_1_16_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_15_13_11_12_1_16_5_8] ON [Thread]([ArticleK], [PrivateGroup], [Private], [GroupPrivate], [K], [PhotoK], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_15_13_12_19_25_17_18' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_15_13_12_19_25_17_18] ON [Thread]([ArticleK], [PrivateGroup], [GroupPrivate], [PlaceK], [IsNews], [EventK], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_15_25_1_19_12_13_17' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_15_25_1_19_12_13_17] ON [Thread]([ArticleK], [IsNews], [K], [PlaceK], [GroupPrivate], [PrivateGroup], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_15_25_1_21_12_13_17_18' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_15_25_1_21_12_13_17_18] ON [Thread]([ArticleK], [IsNews], [K], [CountryK], [GroupPrivate], [PrivateGroup], [EventK], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_15_34_10' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_15_34_10] ON [Thread]([ArticleK], [HideFromHighlights], [AverageCommentDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_1_15_11_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_1_15_11_13] ON [Thread]([PhotoK], [K], [ArticleK], [Private], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_1_21_12_13_25_17_18_19' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_1_21_12_13_25_17_18_19] ON [Thread]([PhotoK], [K], [CountryK], [GroupPrivate], [PrivateGroup], [IsNews], [EventK], [VenueK], [PlaceK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_11_12_13_23_17_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_11_12_13_23_17_5_8] ON [Thread]([PhotoK], [Private], [GroupPrivate], [PrivateGroup], [GroupK], [EventK], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_13_11_12_19_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_13_11_12_19_5_8] ON [Thread]([PhotoK], [PrivateGroup], [Private], [GroupPrivate], [PlaceK], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_13_12_23_1_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_13_12_23_1_5_8] ON [Thread]([PhotoK], [PrivateGroup], [GroupPrivate], [GroupK], [K], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_13_23_12_1_25_9_11_29_10_34_17_18_19' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_13_23_12_1_25_9_11_29_10_34_17_18_19] ON [Thread]([PhotoK], [PrivateGroup], [GroupK], [GroupPrivate], [K], [IsNews], [TotalComments], [Private], [IsReview], [AverageCommentDateTime], [HideFromHighlights], [EventK], [VenueK], [PlaceK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_15_13_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_15_13_11_12] ON [Thread]([PhotoK], [ArticleK], [PrivateGroup], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_18_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_18_12_13] ON [Thread]([PhotoK], [VenueK], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_19_12_13_11_23_1_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_19_12_13_11_23_1_5_8] ON [Thread]([PhotoK], [PlaceK], [GroupPrivate], [PrivateGroup], [Private], [GroupK], [K], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_21_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_21_12_13] ON [Thread]([PhotoK], [CountryK], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_21_13_11_25_29_9_12_1_10_34_17_18_19' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_21_13_11_25_29_9_12_1_10_34_17_18_19] ON [Thread]([PhotoK], [CountryK], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [GroupPrivate], [K], [AverageCommentDateTime], [HideFromHighlights], [EventK], [VenueK], [PlaceK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_23_13_12_1_11_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_23_13_12_1_11_5_8] ON [Thread]([PhotoK], [GroupK], [PrivateGroup], [GroupPrivate], [K], [Private], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_23_17_5_8_33' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_23_17_5_8_33] ON [Thread]([PhotoK], [GroupK], [EventK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_16_25_1_19_12_13_17_18' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_16_25_1_19_12_13_17_18] ON [Thread]([PhotoK], [IsNews], [K], [PlaceK], [GroupPrivate], [PrivateGroup], [EventK], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_17_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_17_12_13] ON [Thread]([EventK], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_17_18_15_16_22_23_5_19_25_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_17_18_15_16_22_23_5_19_25_12] ON [Thread]([EventK], [VenueK], [ArticleK], [PhotoK], [BrandK], [GroupK], [UsrK], [PlaceK], [IsNews], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_17_19_13_12_1_25_18' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_17_19_13_12_1_25_18] ON [Thread]([EventK], [PlaceK], [PrivateGroup], [GroupPrivate], [K], [IsNews], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_17_21_12_13_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_17_21_12_13_11] ON [Thread]([EventK], [CountryK], [GroupPrivate], [PrivateGroup], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_17_21_13_12_1' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_17_21_13_12_1] ON [Thread]([EventK], [CountryK], [PrivateGroup], [GroupPrivate], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_17_34_10' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_17_34_10] ON [Thread]([EventK], [HideFromHighlights], [AverageCommentDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_17_5_19_29_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_17_5_19_29_11_12] ON [Thread]([EventK], [UsrK], [PlaceK], [IsReview], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_17_5_29_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_17_5_29_11_12] ON [Thread]([EventK], [UsrK], [IsReview], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_17_5_29_21_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_17_5_29_21_11_12] ON [Thread]([EventK], [UsrK], [IsReview], [CountryK], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_18_11_12_13_1_5_8_33_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_18_11_12_13_1_5_8_33_16] ON [Thread]([VenueK], [Private], [GroupPrivate], [PrivateGroup], [K], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_18_12_13_11_16_1_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_18_12_13_11_16_1_5_8] ON [Thread]([VenueK], [GroupPrivate], [PrivateGroup], [Private], [PhotoK], [K], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_18_12_13_11_5_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_18_12_13_11_5_8] ON [Thread]([VenueK], [GroupPrivate], [PrivateGroup], [Private], [UsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_18_19_13_12_1_25' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_18_19_13_12_1_25] ON [Thread]([VenueK], [PlaceK], [PrivateGroup], [GroupPrivate], [K], [IsNews])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_18_21_13_12_1_25' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_18_21_13_12_1_25] ON [Thread]([VenueK], [CountryK], [PrivateGroup], [GroupPrivate], [K], [IsNews])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_18_34_10' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_18_34_10] ON [Thread]([VenueK], [HideFromHighlights], [AverageCommentDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_19_12_13_1_17_18_5' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_19_12_13_1_17_18_5] ON [Thread]([PlaceK], [GroupPrivate], [PrivateGroup], [K], [EventK], [VenueK], [UsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_19_12_13_11_25_29_9_1_16_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_19_12_13_11_25_29_9_1_16_23] ON [Thread]([PlaceK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [K], [PhotoK], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_19_12_13_25_1' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_19_12_13_25_1] ON [Thread]([PlaceK], [GroupPrivate], [PrivateGroup], [IsNews], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_19_13_11_25_29_9_12_10_34_17_18_15_22_35' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_19_13_11_25_29_9_12_10_34_17_18_15_22_35] ON [Thread]([PlaceK], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [GroupPrivate], [AverageCommentDateTime], [HideFromHighlights], [EventK], [VenueK], [ArticleK], [BrandK], [HotTopicsOrder])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_19_13_12_1_5_25_17_18_15_16_22' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_19_13_12_1_5_25_17_18_15_16_22] ON [Thread]([PlaceK], [PrivateGroup], [GroupPrivate], [K], [UsrK], [IsNews], [EventK], [VenueK], [ArticleK], [PhotoK], [BrandK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_19_21_13_12_1_25_17' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_19_21_13_12_1_25_17] ON [Thread]([PlaceK], [CountryK], [PrivateGroup], [GroupPrivate], [K], [IsNews], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_19_25' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_19_25] ON [Thread]([PlaceK], [IsNews])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_19_29_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_19_29_11] ON [Thread]([PlaceK], [IsReview], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_19_34_10_1_21_12_13_11_25_29_9_17' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_19_34_10_1_21_12_13_11_25_29_9_17] ON [Thread]([PlaceK], [HideFromHighlights], [AverageCommentDateTime], [K], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_21_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_21_11_12] ON [Thread]([CountryK], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_21_12_13_1_17_18_19' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_21_12_13_1_17_18_19] ON [Thread]([CountryK], [GroupPrivate], [PrivateGroup], [K], [EventK], [VenueK], [PlaceK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_21_12_13_11_1' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_21_12_13_11_1] ON [Thread]([CountryK], [GroupPrivate], [PrivateGroup], [Private], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_21_12_13_11_25_29_9_1_16_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_21_12_13_11_25_29_9_1_16_23] ON [Thread]([CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [K], [PhotoK], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_21_12_13_11_25_29_9_10_34' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_21_12_13_11_25_29_9_10_34] ON [Thread]([CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [AverageCommentDateTime], [HideFromHighlights])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_21_12_13_11_33_8' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_21_12_13_11_33_8] ON [Thread]([CountryK], [GroupPrivate], [PrivateGroup], [Private], [FirstParticipantUsrK], [LastPostUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_21_12_13_25' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_21_12_13_25] ON [Thread]([CountryK], [GroupPrivate], [PrivateGroup], [IsNews])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_21_13_12_1_5_25_17_18_19_15_16_22' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_21_13_12_1_5_25_17_18_19_15_16_22] ON [Thread]([CountryK], [PrivateGroup], [GroupPrivate], [K], [UsrK], [IsNews], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK], [BrandK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_22_25_1_19_12_13_17_18_15' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_22_25_1_19_12_13_17_18_15] ON [Thread]([BrandK], [IsNews], [K], [PlaceK], [GroupPrivate], [PrivateGroup], [EventK], [VenueK], [ArticleK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_22_34_10' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_22_34_10] ON [Thread]([BrandK], [HideFromHighlights], [AverageCommentDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_1_33_8_5_16_21' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_1_33_8_5_16_21] ON [Thread]([GroupK], [K], [FirstParticipantUsrK], [LastPostUsrK], [UsrK], [PhotoK], [CountryK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_1_5_8_33_16_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_1_5_8_33_16_12] ON [Thread]([GroupK], [K], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_1_5_8_33_16_19' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_1_5_8_33_16_19] ON [Thread]([GroupK], [K], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [PlaceK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_1_8_33_16_12_13_7' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_1_8_33_16_12_13_7] ON [Thread]([GroupK], [K], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [GroupPrivate], [PrivateGroup], [LastPost])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_1_9_11_12_13_34_25_29_10_17_18_19_15_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_1_9_11_12_13_34_25_29_10_17_18_19_15_16] ON [Thread]([GroupK], [K], [TotalComments], [Private], [GroupPrivate], [PrivateGroup], [HideFromHighlights], [IsNews], [IsReview], [AverageCommentDateTime], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_11_12_13_17_5_8_33_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_11_12_13_17_5_8_33_16] ON [Thread]([GroupK], [Private], [GroupPrivate], [PrivateGroup], [EventK], [UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_12_13_11_1_5_33' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_12_13_11_1_5_33] ON [Thread]([GroupK], [GroupPrivate], [PrivateGroup], [Private], [K], [UsrK], [FirstParticipantUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_13_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_13_12] ON [Thread]([GroupK], [PrivateGroup], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_18_12_13_11_1_5_8_33' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_18_12_13_11_1_5_8_33] ON [Thread]([GroupK], [VenueK], [GroupPrivate], [PrivateGroup], [Private], [K], [UsrK], [LastPostUsrK], [FirstParticipantUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_19_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_19_12_13] ON [Thread]([GroupK], [PlaceK], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_21_12_13_11_1_33_8_5_16_7' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_21_12_13_11_1_33_8_5_16_7] ON [Thread]([GroupK], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [K], [FirstParticipantUsrK], [LastPostUsrK], [UsrK], [PhotoK], [LastPost])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_21_13_11_25_29_9_12_1_10_34_17_18_19_15_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_21_13_11_25_29_9_12_1_10_34_17_18_19_15_16] ON [Thread]([GroupK], [CountryK], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [GroupPrivate], [K], [AverageCommentDateTime], [HideFromHighlights], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_23_25' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_23_25] ON [Thread]([GroupK], [IsNews])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_25_1_15_16_22' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_25_1_15_16_22] ON [Thread]([IsNews], [K], [ArticleK], [PhotoK], [BrandK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_25_1_22_21_12_13_17_18_19_15' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_25_1_22_21_12_13_17_18_19_15] ON [Thread]([IsNews], [K], [BrandK], [CountryK], [GroupPrivate], [PrivateGroup], [EventK], [VenueK], [PlaceK], [ArticleK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_25_12_13_23_9_11_1_17_18_19_15_16_22_5_29_10' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_25_12_13_23_9_11_1_17_18_19_15_16_22_5_29_10] ON [Thread]([IsNews], [GroupPrivate], [PrivateGroup], [GroupK], [TotalComments], [Private], [K], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK], [BrandK], [UsrK], [IsReview], [AverageCommentDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_25_12_13_23_9_11_29_10_34' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_25_12_13_23_9_11_29_10_34] ON [Thread]([IsNews], [GroupPrivate], [PrivateGroup], [GroupK], [TotalComments], [Private], [IsReview], [AverageCommentDateTime], [HideFromHighlights])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_25_21_12_13_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_25_21_12_13_11] ON [Thread]([IsNews], [CountryK], [GroupPrivate], [PrivateGroup], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_25_29_10_1_17_18_19_15_16_22_23_5' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_25_29_10_1_17_18_19_15_16_22_23_5] ON [Thread]([IsNews], [IsReview], [AverageCommentDateTime], [K], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK], [BrandK], [GroupK], [UsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_26_11_12_13_29' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_26_11_12_13_29] ON [Thread]([DateTime], [Private], [GroupPrivate], [PrivateGroup], [IsReview])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_26_19_11_12_13_29' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_26_19_11_12_13_29] ON [Thread]([DateTime], [PlaceK], [Private], [GroupPrivate], [PrivateGroup], [IsReview])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_26_19_12_13_25' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_26_19_12_13_25] ON [Thread]([DateTime], [PlaceK], [GroupPrivate], [PrivateGroup], [IsNews])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_29_10_34' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_29_10_34] ON [Thread]([IsReview], [AverageCommentDateTime], [HideFromHighlights])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_29_11_12_13_17' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_29_11_12_13_17] ON [Thread]([IsReview], [Private], [GroupPrivate], [PrivateGroup], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_29_21_11_12_13_17_5' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_29_21_11_12_13_17_5] ON [Thread]([IsReview], [CountryK], [Private], [GroupPrivate], [PrivateGroup], [EventK], [UsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_29_21_12_13_11_25' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_29_21_12_13_11_25] ON [Thread]([IsReview], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_3_4_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_3_4_16] ON [Thread]([ParentObjectType], [ParentObjectK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_33_8_5_21_12_13_11_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_33_8_5_21_12_13_11_23] ON [Thread]([FirstParticipantUsrK], [LastPostUsrK], [UsrK], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_34_10_1_15_21_12_13_11_25_29_9_17_18' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_34_10_1_15_21_12_13_11_25_29_9_17_18] ON [Thread]([HideFromHighlights], [AverageCommentDateTime], [K], [ArticleK], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [EventK], [VenueK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_34_10_1_17_21_12_13_11_25_29' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_34_10_1_17_21_12_13_11_25_29] ON [Thread]([HideFromHighlights], [AverageCommentDateTime], [K], [EventK], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_34_10_1_18_21_12_13_11_25_29_9' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_34_10_1_18_21_12_13_11_25_29_9] ON [Thread]([HideFromHighlights], [AverageCommentDateTime], [K], [VenueK], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_34_10_1_22_21_12_13_11_25_29_9_17_18_19_15' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_34_10_1_22_21_12_13_11_25_29_9_17_18_19_15] ON [Thread]([HideFromHighlights], [AverageCommentDateTime], [K], [BrandK], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [EventK], [VenueK], [PlaceK], [ArticleK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_34_9_6_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_34_9_6_11_12] ON [Thread]([HideFromHighlights], [TotalComments], [Enabled], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_35_10_34_29' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_35_10_34_29] ON [Thread]([HotTopicsOrder], [AverageCommentDateTime], [HideFromHighlights], [IsReview])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_35_19_12_13_11_25_29_9_10_34' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_35_19_12_13_11_25_29_9_10_34] ON [Thread]([HotTopicsOrder], [PlaceK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [AverageCommentDateTime], [HideFromHighlights])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_35_21_12_13_11_25_29_9_10_34' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_35_21_12_13_11_25_29_9_10_34] ON [Thread]([HotTopicsOrder], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [AverageCommentDateTime], [HideFromHighlights])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_35_25_12_13_23_9_11_29_10' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_35_25_12_13_23_9_11_29_10] ON [Thread]([HotTopicsOrder], [IsNews], [GroupPrivate], [PrivateGroup], [GroupK], [TotalComments], [Private], [IsReview], [AverageCommentDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_35_34_10' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_35_34_10] ON [Thread]([HotTopicsOrder], [HideFromHighlights], [AverageCommentDateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_4_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_4_16] ON [Thread]([ParentObjectK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_1_15_11_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_1_15_11_13] ON [Thread]([UsrK], [K], [ArticleK], [Private], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_1_9_11_12_13_34_25_29_10_17_18_19_15_16_22' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_1_9_11_12_13_34_25_29_10_17_18_19_15_16_22] ON [Thread]([UsrK], [K], [TotalComments], [Private], [GroupPrivate], [PrivateGroup], [HideFromHighlights], [IsNews], [IsReview], [AverageCommentDateTime], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK], [BrandK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_13_12_17_29_11_26' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_13_12_17_29_11_26] ON [Thread]([UsrK], [PrivateGroup], [GroupPrivate], [EventK], [IsReview], [Private], [DateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_13_12_19_25_17_18_15_16_22' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_13_12_19_25_17_18_15_16_22] ON [Thread]([UsrK], [PrivateGroup], [GroupPrivate], [PlaceK], [IsNews], [EventK], [VenueK], [ArticleK], [PhotoK], [BrandK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_13_12_19_29_11_17_26' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_13_12_19_29_11_17_26] ON [Thread]([UsrK], [PrivateGroup], [GroupPrivate], [PlaceK], [IsReview], [Private], [EventK], [DateTime])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_13_23_12_1_25_9_11_29_10_34_17_18_19_15_16' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_13_23_12_1_25_9_11_29_10_34_17_18_19_15_16] ON [Thread]([UsrK], [PrivateGroup], [GroupK], [GroupPrivate], [K], [IsNews], [TotalComments], [Private], [IsReview], [AverageCommentDateTime], [HideFromHighlights], [EventK], [VenueK], [PlaceK], [ArticleK], [PhotoK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_15_13_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_15_13_11_12] ON [Thread]([UsrK], [ArticleK], [PrivateGroup], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_21_12_13_11_29' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_21_12_13_11_29] ON [Thread]([UsrK], [CountryK], [GroupPrivate], [PrivateGroup], [Private], [IsReview])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_21_13_11_25_29_9_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_21_13_11_25_29_9_12] ON [Thread]([UsrK], [CountryK], [PrivateGroup], [Private], [IsNews], [IsReview], [TotalComments], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_33_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_33_12_13] ON [Thread]([UsrK], [FirstParticipantUsrK], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_8_33_11_12_13' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_8_33_11_12_13] ON [Thread]([UsrK], [LastPostUsrK], [FirstParticipantUsrK], [Private], [GroupPrivate], [PrivateGroup])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_8_33_12_13_11_1' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_8_33_12_13_11_1] ON [Thread]([UsrK], [LastPostUsrK], [FirstParticipantUsrK], [GroupPrivate], [PrivateGroup], [Private], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_8_33_13_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_8_33_13_11] ON [Thread]([UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PrivateGroup], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_8_33_13_12_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_8_33_13_12_23] ON [Thread]([UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PrivateGroup], [GroupPrivate], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_8_33_16_1_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_8_33_16_1_11_12] ON [Thread]([UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [K], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_8_33_16_1_19_12_13_11_7' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_8_33_16_1_19_12_13_11_7] ON [Thread]([UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PhotoK], [K], [PlaceK], [GroupPrivate], [PrivateGroup], [Private], [LastPost])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_8_33_18_12_13_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_8_33_18_12_13_11] ON [Thread]([UsrK], [LastPostUsrK], [FirstParticipantUsrK], [VenueK], [GroupPrivate], [PrivateGroup], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_8_33_19_12_13_11_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_8_33_19_12_13_11_23] ON [Thread]([UsrK], [LastPostUsrK], [FirstParticipantUsrK], [PlaceK], [GroupPrivate], [PrivateGroup], [Private], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_5_8_33_23_13_12_1_11_16_7' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_5_8_33_23_13_12_1_11_16_7] ON [Thread]([UsrK], [LastPostUsrK], [FirstParticipantUsrK], [GroupK], [PrivateGroup], [GroupPrivate], [K], [Private], [PhotoK], [LastPost])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_6_11_12_13_34' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_6_11_12_13_34] ON [Thread]([Enabled], [Private], [GroupPrivate], [PrivateGroup], [HideFromHighlights])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_7_1_15_11_13_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_7_1_15_11_13_12] ON [Thread]([LastPost], [K], [ArticleK], [Private], [PrivateGroup], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_7_12_13_11_17' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_7_12_13_11_17] ON [Thread]([LastPost], [GroupPrivate], [PrivateGroup], [Private], [EventK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_7_15_13_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_7_15_13_11_12] ON [Thread]([LastPost], [ArticleK], [PrivateGroup], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_7_18_12_13_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_7_18_12_13_11] ON [Thread]([LastPost], [VenueK], [GroupPrivate], [PrivateGroup], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_7_19_13_11_12' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_7_19_13_11_12] ON [Thread]([LastPost], [PlaceK], [PrivateGroup], [Private], [GroupPrivate])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_7_23_19_12_13_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_7_23_19_12_13_11] ON [Thread]([LastPost], [GroupK], [PlaceK], [GroupPrivate], [PrivateGroup], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_7_33_8_5_21_12_13_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_7_33_8_5_21_12_13_11] ON [Thread]([LastPost], [FirstParticipantUsrK], [LastPostUsrK], [UsrK], [CountryK], [GroupPrivate], [PrivateGroup], [Private])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_8_33_13_12_1_23' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_8_33_13_12_1_23] ON [Thread]([LastPostUsrK], [FirstParticipantUsrK], [PrivateGroup], [GroupPrivate], [K], [GroupK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_776389835_9_6_11' and object_id = object_id(N'[Thread]'))
CREATE STATISTICS [_dta_stat_776389835_9_6_11] ON [Thread]([TotalComments], [Enabled], [Private])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Thread', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains many Comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Thread'
GO
/****** Object:  Table [dbo].[BannerMusicType]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BannerMusicType]') AND type in (N'U'))
BEGIN
CREATE TABLE [BannerMusicType](
	[BannerK] [int] NULL,
	[MusicTypeK] [int] NULL,
	[Chosen] [bit] NULL,
 CONSTRAINT [IX_BannerMusicType] UNIQUE NONCLUSTERED 
(
	[BannerK] ASC,
	[MusicTypeK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[BannerMusicType]') AND name = N'BannerMusicType22')
CREATE CLUSTERED INDEX [BannerMusicType22] ON [BannerMusicType] 
(
	[MusicTypeK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerMusicType', N'COLUMN',N'BannerK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Banner table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerMusicType', @level2type=N'COLUMN',@level2name=N'BannerK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerMusicType', N'COLUMN',N'MusicTypeK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the MusicType table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerMusicType', @level2type=N'COLUMN',@level2name=N'MusicTypeK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerMusicType', N'COLUMN',N'Chosen'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the musicType was actually chosen by the promoter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerMusicType', @level2type=N'COLUMN',@level2name=N'Chosen'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerMusicType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links banners to relevant music types' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerMusicType'
GO
/****** Object:  Table [dbo].[BannerPlace]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BannerPlace]') AND type in (N'U'))
BEGIN
CREATE TABLE [BannerPlace](
	[BannerK] [int] NULL,
	[PlaceK] [int] NULL,
 CONSTRAINT [IX_BannerPlace] UNIQUE NONCLUSTERED 
(
	[BannerK] ASC,
	[PlaceK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[BannerPlace]') AND name = N'BannerPlace20')
CREATE CLUSTERED INDEX [BannerPlace20] ON [BannerPlace] 
(
	[PlaceK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerPlace', N'COLUMN',N'BannerK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Banner table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerPlace', @level2type=N'COLUMN',@level2name=N'BannerK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerPlace', N'COLUMN',N'PlaceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Place table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerPlace', @level2type=N'COLUMN',@level2name=N'PlaceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'BannerPlace', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links banners to relevant places' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BannerPlace'
GO
/****** Object:  Table [dbo].[Visitor]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Visitor]') AND type in (N'U'))
BEGIN
CREATE TABLE [Visitor](
	[Guid] [uniqueidentifier] NOT NULL,
	[Prefs] [text] NULL,
 CONSTRAINT [PK_Visitor] PRIMARY KEY CLUSTERED 
(
	[Guid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visitor', N'COLUMN',N'Guid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid - link to Visit table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visitor', @level2type=N'COLUMN',@level2name=N'Guid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Visitor', N'COLUMN',N'Prefs'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prefs xml - used to be in the cookie' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Visitor', @level2type=N'COLUMN',@level2name=N'Prefs'
GO
/****** Object:  Table [dbo].[Chat]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Chat]') AND type in (N'U'))
BEGIN
CREATE TABLE [Chat](
	[UsrK] [int] NOT NULL,
	[ChatItems] [text] NULL,
	[LastChatItem] [bigint] NULL,
	[SessionId] [int] NULL,
 CONSTRAINT [PK_Chat] PRIMARY KEY CLUSTERED 
(
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Chat', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The usr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Chat', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Chat', N'COLUMN',N'ChatItems'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Xml string containing chat items' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Chat', @level2type=N'COLUMN',@level2name=N'ChatItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Chat', N'COLUMN',N'LastChatItem'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Long reprasenting the datetime of the last chat item in ticks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Chat', @level2type=N'COLUMN',@level2name=N'LastChatItem'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Chat', N'COLUMN',N'SessionId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Session id used to stop multi-browser use' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Chat', @level2type=N'COLUMN',@level2name=N'SessionId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Chat', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'New optimised chat items table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Chat'
GO
/****** Object:  Table [dbo].[Domain]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Domain]') AND type in (N'U'))
BEGIN
CREATE TABLE [Domain](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[DomainName] [varchar](50) NULL,
	[PromoterK] [int] NULL,
	[RedirectObjectType] [int] NULL,
	[RedirectObjectK] [int] NULL,
	[RedirectUrl] [varchar](200) NULL,
 CONSTRAINT [PK_Domain] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Domain', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Domain', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Domain', N'COLUMN',N'DomainName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Domain name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Domain', @level2type=N'COLUMN',@level2name=N'DomainName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Domain', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the promoter table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Domain', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Domain', N'COLUMN',N'RedirectObjectType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Redirect to object page - type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Domain', @level2type=N'COLUMN',@level2name=N'RedirectObjectType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Domain', N'COLUMN',N'RedirectObjectK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Redirect to object - K' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Domain', @level2type=N'COLUMN',@level2name=N'RedirectObjectK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Domain', N'COLUMN',N'RedirectUrl'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Redirect to custom URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Domain', @level2type=N'COLUMN',@level2name=N'RedirectUrl'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Domain', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Domains that redirect to DSI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Domain'
GO
/****** Object:  Table [dbo].[Cob]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Cob]') AND type in (N'U'))
BEGIN
CREATE TABLE [Cob](
	[CobK] [int] IDENTITY(0,1) NOT NULL,
	[SiteK] [int] NOT NULL CONSTRAINT [DF_COB_SiteK]  DEFAULT (0),
	[CobParentK] [int] NULL,
	[CobTypeK] [int] NULL,
	[CobDateTime] [datetime] NULL CONSTRAINT [DF_COB_CobDateTime]  DEFAULT (getdate()),
	[CobNavLeft] [int] NULL,
	[CobSummaryView] [int] NULL,
	[CobNavRight] [int] NULL CONSTRAINT [DF_COB_CobNavRight]  DEFAULT (0),
	[CobSearchable] [int] NULL CONSTRAINT [DF_COB_CobSearchable]  DEFAULT (1),
	[CobOrder] [float] NULL,
	[CobShortTitle] [varchar](50) NULL,
	[CobShortDesc] [varchar](100) NULL,
	[CobMedTitle] [varchar](100) NULL,
	[CobMedDesc] [varchar](500) NULL,
	[CobGraphicK] [int] NULL,
	[CobImgNavRight] [int] NULL,
	[CobLongTitle] [varchar](500) NULL,
	[CobLongDesc] [text] NULL,
	[CobSearchText] [text] NULL,
	[CobUrlShortcut] [varchar](50) NULL,
	[CobCssClassK] [int] NULL,
	[CobCustUserControl] [varchar](100) NULL,
	[CobImgFileK] [int] NULL,
	[CobPopup] [int] NULL CONSTRAINT [DF_COB_CobPopup]  DEFAULT (0),
 CONSTRAINT [PK__COB__00AA174D] PRIMARY KEY CLUSTERED 
(
	[CobK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DomainStats]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DomainStats]') AND type in (N'U'))
BEGIN
CREATE TABLE [DomainStats](
	[DomainK] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Hits] [int] NULL,
 CONSTRAINT [IX_DomainStats] UNIQUE NONCLUSTERED 
(
	[DomainK] ASC,
	[Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DomainStats', N'COLUMN',N'DomainK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the domain table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DomainStats', @level2type=N'COLUMN',@level2name=N'DomainK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DomainStats', N'COLUMN',N'Date'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for the stats' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DomainStats', @level2type=N'COLUMN',@level2name=N'Date'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DomainStats', N'COLUMN',N'Hits'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of visitors in this day' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DomainStats', @level2type=N'COLUMN',@level2name=N'Hits'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DomainStats', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hits per day stats for the domain table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DomainStats'
GO
/****** Object:  Table [dbo].[InvoiceItemRevenue]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[InvoiceItemRevenue]') AND type in (N'U'))
BEGIN
CREATE TABLE [InvoiceItemRevenue](
	[InvoiceItemK] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Amount] [float] NULL,
 CONSTRAINT [IX_InvoiceItemRevenue] UNIQUE NONCLUSTERED 
(
	[InvoiceItemK] ASC,
	[Year] ASC,
	[Month] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItemRevenue', N'COLUMN',N'InvoiceItemK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the InvoiceItem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItemRevenue', @level2type=N'COLUMN',@level2name=N'InvoiceItemK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItemRevenue', N'COLUMN',N'Year'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Year this revenue acts on' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItemRevenue', @level2type=N'COLUMN',@level2name=N'Year'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItemRevenue', N'COLUMN',N'Month'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month this revenue acts on' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItemRevenue', @level2type=N'COLUMN',@level2name=N'Month'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItemRevenue', N'COLUMN',N'Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Revenue that acts on this month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItemRevenue', @level2type=N'COLUMN',@level2name=N'Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceItemRevenue', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The revenue from each invoice line may be attributable to several months' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceItemRevenue'
GO
/****** Object:  Table [dbo].[InvoiceLink]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[InvoiceLink]') AND type in (N'U'))
BEGIN
CREATE TABLE [InvoiceLink](
	[K] [int] NOT NULL,
	[InvoiceK] [int] NULL,
	[LinkType] [int] NULL,
	[LinkTransferK] [int] NULL,
	[LinkInvoiceK] [int] NULL,
	[Amount] [float] NULL,
	[InvoicePaid] [bit] NULL,
 CONSTRAINT [PK_InvoiceLink] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceLink', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceLink', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceLink', N'COLUMN',N'InvoiceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The invoice that''s being covered' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceLink', @level2type=N'COLUMN',@level2name=N'InvoiceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceLink', N'COLUMN',N'LinkType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What type of item is this invoice linked to? e.g. Invoice or Transfer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceLink', @level2type=N'COLUMN',@level2name=N'LinkType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceLink', N'COLUMN',N'LinkTransferK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The transfer involved' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceLink', @level2type=N'COLUMN',@level2name=N'LinkTransferK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceLink', N'COLUMN',N'LinkInvoiceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If a credit is covering another invoice (instead of being refunded)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceLink', @level2type=N'COLUMN',@level2name=N'LinkInvoiceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceLink', N'COLUMN',N'Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'+ve for covering an invoice, -ve for covering a credit note' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceLink', @level2type=N'COLUMN',@level2name=N'Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceLink', N'COLUMN',N'InvoicePaid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the invoice fully paid by this link?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceLink', @level2type=N'COLUMN',@level2name=N'InvoicePaid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceLink', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates invoice / credit has been fully / partially paid by a transfer / credit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceLink'
GO
/****** Object:  Table [dbo].[Para]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Para]') AND type in (N'U'))
BEGIN
CREATE TABLE [Para](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[ArticleK] [int] NULL,
	[Page] [int] NULL,
	[Order] [float] NULL,
	[Type] [int] NULL,
	[PhotoK] [int] NULL,
	[Text] [text] NULL,
	[ThreadK] [int] NULL,
	[PhotoAlign] [int] NULL,
	[Pic] [uniqueidentifier] NULL,
	[PhotoType] [int] NULL,
	[Caption] [varchar](200) NULL,
	[PicWidth] [int] NULL,
	[PicHeight] [int] NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[PicMiscK] [int] NULL,
 CONSTRAINT [PK_Para] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'ArticleK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'ArticleK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'Page'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What page is the paragraph on? (Starts at 1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'Page'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'Order'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relative order of the paragraphs on the page 0 is at the top' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'Order'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Paragraph type - 1=Title, 2=Paragraph, 3=Photo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'PhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the paragraph is a photo, or has a photo linked to it' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'PhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'Text'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text of the paragraph' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'Text'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'ThreadK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The thread attached to this paragraph.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'ThreadK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'PhotoAlign'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Photo align type - 1=Left, 2=Right, 3=Center' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'PhotoAlign'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'Pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cropped image 100*100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'Pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'PhotoType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PhotoType - photo type - 0=None, 1=Icon, 2=Thumb, 3=Web, 4=Custom (file referenced by Pic)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'PhotoType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'Caption'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Caption for the photo - 100 chars or less.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'Caption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'PicWidth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width of the image in pixels if PhotoType=Custom.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'PicWidth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'PicHeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height of the image in pixels if PhotoType=Custom.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'PicHeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Para', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Each article contains many paragraphs.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Para'
GO
/****** Object:  Table [dbo].[EventBrand]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EventBrand]') AND type in (N'U'))
BEGIN
CREATE TABLE [EventBrand](
	[EventK] [int] NULL,
	[BrandK] [int] NULL,
 CONSTRAINT [IX_EventBrand] UNIQUE NONCLUSTERED 
(
	[EventK] ASC,
	[BrandK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[EventBrand]') AND name = N'EventBrand18')
CREATE CLUSTERED INDEX [EventBrand18] ON [EventBrand] 
(
	[BrandK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventBrand', N'COLUMN',N'EventK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Event table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventBrand', @level2type=N'COLUMN',@level2name=N'EventK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventBrand', N'COLUMN',N'BrandK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Brand table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventBrand', @level2type=N'COLUMN',@level2name=N'BrandK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EventBrand', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links an event to one or many brands' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EventBrand'
GO
/****** Object:  Table [dbo].[PromoterUsr]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PromoterUsr]') AND type in (N'U'))
BEGIN
CREATE TABLE [PromoterUsr](
	[PromoterK] [int] NULL,
	[UsrK] [int] NULL,
 CONSTRAINT [IX_PromoterUsr] UNIQUE NONCLUSTERED 
(
	[PromoterK] ASC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PromoterUsr]') AND name = N'_dta_index_PromoterUsr_c_7_1229247434__K2_K1')
CREATE UNIQUE CLUSTERED INDEX [_dta_index_PromoterUsr_c_7_1229247434__K2_K1] ON [PromoterUsr] 
(
	[UsrK] ASC,
	[PromoterK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PromoterUsr', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Promoter table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PromoterUsr', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PromoterUsr', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Usr table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PromoterUsr', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'PromoterUsr', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lines promoter accounts to users' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PromoterUsr'
GO
/****** Object:  View [dbo].[VisitView]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VisitView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [VisitView]
AS
SELECT     K, CAST(Guid AS char(36)) AS Guid, UsrK, Pages, Hits, Photos, TopBannerClicks, HotboxClicks, PhotoBannerClicks, DateTimeStart, DateTimeLast, 
                      IpAddress, DATEDIFF(s, DateTimeStart, DateTimeLast) AS Duration, Comments, ChatMessages, IsNewGuid
FROM         dbo.Visit
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'VIEW',N'VisitView', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'READ-ONLY VIEW - NOT A TABLE! View based on the Visit table, but with non-guid for aggregate functions!' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VisitView'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'VisitView', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1 [56] 4 [18] 2))"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Visit"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 206
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VisitView'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'VisitView', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VisitView'
GO
/****** Object:  Table [dbo].[Promoter]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Promoter]') AND type in (N'U'))
BEGIN
CREATE TABLE [Promoter](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Pic] [uniqueidentifier] NULL,
	[PrimaryUsrK] [int] NULL,
	[ContactName] [varchar](200) NULL,
	[CompanyName] [varchar](200) NULL,
	[PayPalAddress] [varchar](200) NULL,
	[PhoneNumber] [varchar](200) NULL,
	[AddressStreet] [varchar](200) NULL,
	[AddressArea] [varchar](200) NULL,
	[AddressTown] [varchar](200) NULL,
	[AddressCounty] [varchar](200) NULL,
	[AddressPostcode] [varchar](200) NULL,
	[AddressCountryK] [int] NULL,
	[PricingMultiplier] [float] NULL,
	[DateTimeSignUp] [datetime] NULL,
	[Status] [int] NULL,
	[TotalPaid] [float] NULL,
	[DateExpires] [datetime] NULL,
	[RenewalFee] [float] NULL,
	[RenewalMonths] [int] NULL,
	[HasPage] [bit] NULL,
	[AdminNote] [text] NULL,
	[QuestionsThreadK] [int] NULL,
	[DuplicateGuid] [uniqueidentifier] NULL,
	[UrlName] [varchar](200) NULL,
	[HasGuestlist] [bit] NULL,
	[GuestlistCharge] [float] NULL,
	[GuestlistCredit] [int] NULL,
	[GuestlistCreditLimit] [int] NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[PicMiscK] [int] NULL,
	[ClientsPerMonth] [int] NULL,
	[LastMessage] [int] NULL,
	[ManualNote] [text] NULL,
	[CreditLimit] [float] NULL,
	[InvoiceDueDays] [int] NULL,
	[EnabledDateTime] [datetime] NULL,
	[EnabledByUsrK] [int] NULL,
	[SalesUsrK] [int] NULL,
	[SalesStatus] [int] NULL,
	[SalesStatusExpires] [datetime] NULL,
	[SalesNextCall] [datetime] NULL,
	[LetterType] [int] NULL,
	[LetterStatus] [int] NULL,
	[IsSkeleton] [bit] NULL,
	[AccessCodeRandom] [varchar](50) NULL,
	[OfferType] [int] NULL,
	[OfferExpireDateTime] [datetime] NULL,
	[SalesEstimate] [int] NULL,
	[SalesHold] [bit] NULL,
	[FutureEvents] [int] NULL,
	[DisableOverdueRedirect] [bit] NULL,
	[ContactEmail] [varchar](200) NULL,
	[ContactTitle] [varchar](200) NULL,
	[ContactPersonalTitle] [varchar](50) NULL,
	[PhoneNumber2] [varchar](200) NULL,
	[WebAddress] [varchar](200) NULL,
	[Alarm] [bit] NULL,
	[AccountsName] [varchar](200) NULL,
	[AccountsEmail] [varchar](200) NULL,
	[AccountsPhone] [varchar](200) NULL,
	[ClientSector] [int] NULL,
	[EnableTickets] [bit] NULL,
 CONSTRAINT [PK_Promoter] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the Promoter / Event Promoter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'Pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cropped image 100*100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'Pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'PrimaryUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that first signed up this promoter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'PrimaryUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of primary contact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the company for billing purpouses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'PayPalAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The email address to send paypal payments to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'PayPalAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'PhoneNumber'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contact phone number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'PhoneNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AddressStreet'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Billing address street' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AddressStreet'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AddressArea'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Billing address area' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AddressArea'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AddressTown'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Billing address town' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AddressTown'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AddressCounty'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Billing address county' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AddressCounty'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AddressPostcode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Billing address postcode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AddressPostcode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AddressCountryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Billing address country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AddressCountryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'PricingMultiplier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Base pricng is multiplied by this figure.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'PricingMultiplier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'DateTimeSignUp'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When the promoter first signed up' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'DateTimeSignUp'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status - AwaitingQuote=1, AwaitingPayment=2, Enabled=3, Disabled=4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'TotalPaid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total paid by this promoter for services' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'TotalPaid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'DateExpires'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the promoters account expires and drops to limited functionality.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'DateExpires'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'RenewalFee'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fee for renewing membership' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'RenewalFee'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'RenewalMonths'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of months that the renewal fee is for' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'RenewalMonths'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AdminNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Admin note' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AdminNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'QuestionsThreadK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Private message thread' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'QuestionsThreadK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid used to ensure duplicate promoters don''t get posted if the user refreshes the page after saving.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'UrlName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique name used in the url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'UrlName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'HasGuestlist'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Can the promoter set up guestlist?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'HasGuestlist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'GuestlistCharge'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Charge per name on the guestlist...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'GuestlistCharge'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'GuestlistCredit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of guestlist credits that the promoter has' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'GuestlistCredit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'GuestlistCreditLimit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Amount that the promoter is alowed to go overdrawn on their guestlist credits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'GuestlistCreditLimit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'ClientsPerMonth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Calculated number of clients per month through the door' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'ClientsPerMonth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'LastMessage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id of the last message that was successfully sent to this promoter (used in case PM sender fails)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'LastMessage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'ManualNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Plain text editable by sales person, only used when idle or proactive' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'ManualNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'CreditLimit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Credit limit in pounds' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'CreditLimit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'InvoiceDueDays'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When are invoices due (days) 0 = default' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'InvoiceDueDays'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'EnabledDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was this promoter first enabled?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'EnabledDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'EnabledByUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whick admin user enabled this promoter?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'EnabledByUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'SalesUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sales person who owns the account / owned this account before expires date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'SalesUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'SalesStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status of this client before expires date (1 = New, 2 = Idle, 3 = Proactive, 4 = Active)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'SalesStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'SalesStatusExpires'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date time when this client''s sales status expires, and they become idle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'SalesStatusExpires'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'SalesNextCall'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When to make the next call - used when someone requests to be called back in a month or something' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'SalesNextCall'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'LetterType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What type of letter are we about to send this promoter? 1 = CurrentNewPromoter, 2 = CurrentIdlePromoter, 3 = CurrentActivePromoter, 4 = AutoVenue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'LetterType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'LetterStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What is the printing status? 1 = New, 2 = Printing, 3 = Posted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'LetterStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'IsSkeleton'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the account a skeleton account? (missing some contact details)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'IsSkeleton'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AccessCodeRandom'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Four digit random number used to auth access code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AccessCodeRandom'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'OfferType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Which offer type are we showing?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'OfferType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'OfferExpireDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When does the offer expire?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'OfferExpireDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'SalesEstimate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estimation of how good the client will be 0=not rated, 1=crap, 2=ok, 3=good, 4=excellent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'SalesEstimate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'SalesHold'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this promoter account on hold? (No sales calls)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'SalesHold'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'FutureEvents'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of future events, updated overnight and when brands are added...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'FutureEvents'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'DisableOverdueRedirect'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'To disable the redirect when promoter account has overdue invoices for an extended period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'DisableOverdueRedirect'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'ContactEmail'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email of primary contact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'ContactEmail'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Title of primary contact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'ContactPersonalTitle'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Personal title of primary contact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'ContactPersonalTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'PhoneNumber2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Promoter''s 2nd phone number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'PhoneNumber2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'WebAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Promoter''s primary website address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'WebAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'Alarm'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Alarm for SalesUsr when next call time arrives' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'Alarm'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AccountsName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of accounts contact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AccountsName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AccountsEmail'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email of accounts contact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AccountsEmail'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'AccountsPhone'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone number of accounts contact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'AccountsPhone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'ClientSector'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Client Sector: Promoter, Agency, Mobile operator, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'ClientSector'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', N'COLUMN',N'EnableTickets'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has Promoter completed tickets/credit application form and been approved' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter', @level2type=N'COLUMN',@level2name=N'EnableTickets'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Promoter', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A client who either operates clubbing brands or places adverts on dsi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promoter'
GO
/****** Object:  Table [dbo].[Log]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [Log](
	[Item] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Count] [int] NULL,
 CONSTRAINT [IX_Log] UNIQUE NONCLUSTERED 
(
	[Item] ASC,
	[Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The item - Log.Items' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Date'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Date'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Count'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of times this count happened' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logs simple counts by day' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log'
GO
/****** Object:  Table [dbo].[InvoiceCredit]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[InvoiceCredit]') AND type in (N'U'))
BEGIN
CREATE TABLE [InvoiceCredit](
	[InvoiceK] [int] NOT NULL,
	[CreditInvoiceK] [int] NOT NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_InvoiceCredit] PRIMARY KEY CLUSTERED 
(
	[InvoiceK] ASC,
	[CreditInvoiceK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceCredit', N'COLUMN',N'InvoiceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Invoice table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceCredit', @level2type=N'COLUMN',@level2name=N'InvoiceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceCredit', N'COLUMN',N'CreditInvoiceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Invoice table, referring to a credit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceCredit', @level2type=N'COLUMN',@level2name=N'CreditInvoiceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceCredit', N'COLUMN',N'Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'+ve for DSI receiving money, -ve for DSI paying out money' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceCredit', @level2type=N'COLUMN',@level2name=N'Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceCredit', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Invoice to Credit relational table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceCredit'
GO
/****** Object:  Table [dbo].[Group]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Group]') AND type in (N'U'))
BEGIN
CREATE TABLE [Group](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](255) NULL,
	[LongDescriptionHtml] [text] NULL,
	[LongDescriptionPlain] [bit] NULL,
	[PostingRules] [text] NULL,
	[DateTimeCreated] [datetime] NULL,
	[TotalMembers] [int] NULL,
	[TotalModerators] [int] NULL,
	[TotalOwners] [int] NULL,
	[TotalComments] [int] NULL,
	[LastPost] [datetime] NULL,
	[AverageCommentDateTime] [datetime] NULL,
	[PrivateGroupPage] [bit] NULL,
	[PrivateChat] [bit] NULL,
	[PrivateMemberList] [bit] NULL,
	[Restriction] [int] NULL,
	[CustomRestrictionType] [int] NULL,
	[ThemeK] [int] NULL,
	[CountryK] [int] NULL,
	[PlaceK] [int] NULL,
	[MusicTypeK] [int] NULL,
	[BrandK] [int] NULL,
	[UrlName] [varchar](200) NULL,
	[Pic] [uniqueidentifier] NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[PicMiscK] [int] NULL,
	[DuplicateGuid] [uniqueidentifier] NULL,
	[EmailOnAllThreads] [bit] NULL,
	[FavouriteCount] [int] NULL,
	[WatchCount] [int] NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Group]') AND name = N'_dta_index_Group_7_1433772165__K24_1')
CREATE NONCLUSTERED INDEX [_dta_index_Group_7_1433772165__K24_1] ON [Group] 
(
	[UrlName] ASC
)
INCLUDE ( [K]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Group]') AND name = N'Group69')
CREATE NONCLUSTERED INDEX [Group69] ON [Group] 
(
	[BrandK] ASC,
	[K] ASC,
	[Name] ASC,
	[Description] ASC,
	[TotalMembers] ASC,
	[TotalComments] ASC,
	[PrivateGroupPage] ASC,
	[CountryK] ASC,
	[UrlName] ASC,
	[Pic] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Group]') AND name = N'Group89')
CREATE NONCLUSTERED INDEX [Group89] ON [Group] 
(
	[K] ASC,
	[Pic] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text describing the group topic or scope' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'LongDescriptionHtml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Html shown on the group homepage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'LongDescriptionHtml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'LongDescriptionPlain'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the long description surrounded by a div and checked for proper html?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'LongDescriptionPlain'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'PostingRules'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Posting rules that people have to agree to before joining' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'PostingRules'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime the group was added' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'TotalMembers'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of members in this group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'TotalMembers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'TotalModerators'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of moderators in this group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'TotalModerators'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'TotalOwners'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of owners of this group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'TotalOwners'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'TotalComments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'TotalComments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'LastPost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateTime of the last post' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'LastPost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'AverageCommentDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Average DateTime of all the comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'AverageCommentDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'PrivateGroupPage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Private group page?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'PrivateGroupPage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'PrivateChat'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Private chat forum?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'PrivateChat'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'PrivateMemberList'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Private members list?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'PrivateMemberList'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'Restriction'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Membership restriction (Automatic=1, OwnerMustApprove=2, Custom=3)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'Restriction'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'CustomRestrictionType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Enum specifying a membership object - e.g. admins, photo moderators, promoters etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'CustomRestrictionType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'ThemeK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Group theme' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'ThemeK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'CountryK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the group country specific?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'CountryK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'PlaceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the group place specific?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'PlaceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'MusicTypeK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the group music specific?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'MusicTypeK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'BrandK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the group brand specific?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'BrandK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'UrlName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique url-compliant name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'UrlName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'Pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cropped image 100*100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'Pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid used to ensure duplicate groups don''t get posted if the user refreshes the page after saving.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'EmailOnAllThreads'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Force members to receive an email each time a new thread is posted to this group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'EmailOnAllThreads'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'FavouriteCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of members that have this group on their favourites list' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'FavouriteCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', N'COLUMN',N'WatchCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of members that are watching this group for new messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'WatchCount'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1433772165_1_2' and object_id = object_id(N'[Group]'))
CREATE STATISTICS [_dta_stat_1433772165_1_2] ON [Group]([K], [Name])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1433772165_1_23_8_14_11' and object_id = object_id(N'[Group]'))
CREATE STATISTICS [_dta_stat_1433772165_1_23_8_14_11] ON [Group]([K], [BrandK], [TotalMembers], [PrivateGroupPage], [TotalComments])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1433772165_1_32' and object_id = object_id(N'[Group]'))
CREATE STATISTICS [_dta_stat_1433772165_1_32] ON [Group]([K], [WatchCount])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1433772165_11_8_23_14_32' and object_id = object_id(N'[Group]'))
CREATE STATISTICS [_dta_stat_1433772165_11_8_23_14_32] ON [Group]([TotalComments], [TotalMembers], [BrandK], [PrivateGroupPage], [WatchCount])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1433772165_2' and object_id = object_id(N'[Group]'))
CREATE STATISTICS [_dta_stat_1433772165_2] ON [Group]([Name])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1433772165_23_14_11_8_25_1' and object_id = object_id(N'[Group]'))
CREATE STATISTICS [_dta_stat_1433772165_23_14_11_8_25_1] ON [Group]([BrandK], [PrivateGroupPage], [TotalComments], [TotalMembers], [Pic], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1433772165_23_14_11_8_25_21_1' and object_id = object_id(N'[Group]'))
CREATE STATISTICS [_dta_stat_1433772165_23_14_11_8_25_21_1] ON [Group]([BrandK], [PrivateGroupPage], [TotalComments], [TotalMembers], [Pic], [PlaceK], [K])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1433772165_23_8_14_1_32_11' and object_id = object_id(N'[Group]'))
CREATE STATISTICS [_dta_stat_1433772165_23_8_14_1_32_11] ON [Group]([BrandK], [TotalMembers], [PrivateGroupPage], [K], [WatchCount], [TotalComments])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_1433772165_32_11_8_23' and object_id = object_id(N'[Group]'))
CREATE STATISTICS [_dta_stat_1433772165_32_11_8_23] ON [Group]([WatchCount], [TotalComments], [TotalMembers], [BrandK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_907866301_16_1' and object_id = object_id(N'[Group]'))
CREATE STATISTICS [_dta_stat_907866301_16_1] ON [Group]([PrivateMemberList], [K])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Group', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discussion / news groups' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group'
GO
/****** Object:  Table [dbo].[Lol]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Lol]') AND type in (N'U'))
BEGIN
CREATE TABLE [Lol](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[UsrK] [int] NULL,
	[CommentK] [int] NULL,
	[CommentUsrK] [int] NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK_Lol] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Lol]') AND name = N'_dta_index_Lol_7_400720480__K3_K2')
CREATE NONCLUSTERED INDEX [_dta_index_Lol_7_400720480__K3_K2] ON [Lol] 
(
	[CommentK] ASC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Lol', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lol', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Lol', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that laughed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lol', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Lol', N'COLUMN',N'CommentK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The comment that they laughed at' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lol', @level2type=N'COLUMN',@level2name=N'CommentK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Lol', N'COLUMN',N'CommentUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Usr that posted the comment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lol', @level2type=N'COLUMN',@level2name=N'CommentUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Lol', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datetime that they laughed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lol', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_400720480_2_3' and object_id = object_id(N'[Lol]'))
CREATE STATISTICS [_dta_stat_400720480_2_3] ON [Lol]([UsrK], [CommentK])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Lol', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When someone laughs on the forum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lol'
GO
/****** Object:  Table [dbo].[UsrPhotoMe]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UsrPhotoMe]') AND type in (N'U'))
BEGIN
CREATE TABLE [UsrPhotoMe](
	[UsrK] [int] NOT NULL,
	[PhotoK] [int] NOT NULL,
 CONSTRAINT [IX_UsrPhotoMe] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC,
	[PhotoK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[UsrPhotoMe]') AND name = N'UsrPhotoMe12')
CREATE CLUSTERED INDEX [UsrPhotoMe12] ON [UsrPhotoMe] 
(
	[PhotoK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[UsrPhotoMe]') AND name = N'_dta_index_UsrPhotoMe_7_407672500__K2_K1')
CREATE NONCLUSTERED INDEX [_dta_index_UsrPhotoMe_7_407672500__K2_K1] ON [UsrPhotoMe] 
(
	[PhotoK] ASC,
	[UsrK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrPhotoMe', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Usr table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrPhotoMe', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrPhotoMe', N'COLUMN',N'PhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Photo table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrPhotoMe', @level2type=N'COLUMN',@level2name=N'PhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrPhotoMe', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links a user to many photos (photos of me)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrPhotoMe'
GO
/****** Object:  Table [dbo].[UsrPlaceVisit]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UsrPlaceVisit]') AND type in (N'U'))
BEGIN
CREATE TABLE [UsrPlaceVisit](
	[UsrK] [int] NOT NULL,
	[PlaceK] [int] NOT NULL,
 CONSTRAINT [IX_UsrTownVisit] UNIQUE NONCLUSTERED 
(
	[UsrK] ASC,
	[PlaceK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[UsrPlaceVisit]') AND name = N'UsrPlaceVisit11')
CREATE CLUSTERED INDEX [UsrPlaceVisit11] ON [UsrPlaceVisit] 
(
	[PlaceK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrPlaceVisit', N'COLUMN',N'UsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Usr table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrPlaceVisit', @level2type=N'COLUMN',@level2name=N'UsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrPlaceVisit', N'COLUMN',N'PlaceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Place table - a place that this user visits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrPlaceVisit', @level2type=N'COLUMN',@level2name=N'PlaceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsrPlaceVisit', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links to many places that the user may like to visit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsrPlaceVisit'
GO
/****** Object:  Table [dbo].[GroupPhoto]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GroupPhoto]') AND type in (N'U'))
BEGIN
CREATE TABLE [GroupPhoto](
	[GroupK] [int] NOT NULL,
	[PhotoK] [int] NOT NULL,
	[Caption] [varchar](255) NULL,
	[DateTime] [datetime] NULL,
	[AddedByUsrK] [int] NULL,
	[ShowOnFrontPage] [bit] NULL,
 CONSTRAINT [IX_GroupPhoto] UNIQUE NONCLUSTERED 
(
	[GroupK] ASC,
	[PhotoK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GroupPhoto]') AND name = N'IX_GroupPhoto_1')
CREATE NONCLUSTERED INDEX [IX_GroupPhoto_1] ON [GroupPhoto] 
(
	[GroupK] ASC,
	[DateTime] DESC,
	[ShowOnFrontPage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupPhoto', N'COLUMN',N'GroupK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Group table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupPhoto', @level2type=N'COLUMN',@level2name=N'GroupK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupPhoto', N'COLUMN',N'PhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the Photo table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupPhoto', @level2type=N'COLUMN',@level2name=N'PhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupPhoto', N'COLUMN',N'Caption'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Caption for the group homepage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupPhoto', @level2type=N'COLUMN',@level2name=N'Caption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupPhoto', N'COLUMN',N'DateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was the photo added' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupPhoto', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupPhoto', N'COLUMN',N'AddedByUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Who added/modified the photo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupPhoto', @level2type=N'COLUMN',@level2name=N'AddedByUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupPhoto', N'COLUMN',N'ShowOnFrontPage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do we show this on the group front page?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupPhoto', @level2type=N'COLUMN',@level2name=N'ShowOnFrontPage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroupPhoto', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Top photos on the group front-pages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroupPhoto'
GO
/****** Object:  Table [dbo].[Venue]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Venue]') AND type in (N'U'))
BEGIN
CREATE TABLE [Venue](
	[K] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[DetailsHtml] [text] NULL,
	[Postcode] [varchar](10) NULL,
	[PlaceK] [int] NULL,
	[AdminNote] [text] NULL,
	[Pic] [uniqueidentifier] NULL,
	[OverrideMapUrl] [varchar](100) NULL,
	[OwnerUsrK] [int] NULL,
	[PicNew] [uniqueidentifier] NULL,
	[Capacity] [int] NULL,
	[TotalComments] [int] NULL,
	[TotalCommentsShallow] [int] NULL,
	[LastPostShallow] [datetime] NULL,
	[LastPost] [datetime] NULL,
	[AverageCommentDateTime] [datetime] NULL,
	[AverageCommentDateTimeShallow] [datetime] NULL,
	[AddedDateTime] [datetime] NULL,
	[NoPhotos] [bit] NULL,
	[AdminEmail] [varchar](50) NULL,
	[IsDescriptionText] [bit] NULL,
	[IsNew] [bit] NULL,
	[NoPrints] [bit] NULL,
	[IsDescriptionCleanHtml] [bit] NULL,
	[IsEdited] [bit] NULL,
	[DuplicateGuid] [uniqueidentifier] NULL,
	[RegularEvents] [bit] NULL,
	[UrlName] [varchar](200) NULL,
	[PromoterK] [int] NULL,
	[PicState] [varchar](100) NULL,
	[PicPhotoK] [int] NULL,
	[PicMiscK] [int] NULL,
	[UrlFragment] [varchar](255) NULL,
	[ModeratorUsrK] [int] NULL,
	[TotalEvents] [int] NULL,
	[HasFeature] [bit] NULL,
	[FeatureExpires] [datetime] NULL,
	[FeatureButtonUrl] [varchar](100) NULL,
	[PromoterStatus] [int] NULL,
	[DetailsPlain] [bit] NULL,
 CONSTRAINT [PK_Venue] PRIMARY KEY CLUSTERED 
(
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Venue]') AND name = N'_dta_index_Venue_7_439672614__K1_K5')
CREATE NONCLUSTERED INDEX [_dta_index_Venue_7_439672614__K1_K5] ON [Venue] 
(
	[K] ASC,
	[PlaceK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Venue]') AND name = N'_dta_index_Venue_7_439672614__K5_K1_2_29_34')
CREATE NONCLUSTERED INDEX [_dta_index_Venue_7_439672614__K5_K1_2_29_34] ON [Venue] 
(
	[PlaceK] ASC,
	[K] ASC
)
INCLUDE ( [Name],
[UrlName],
[UrlFragment]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Venue]') AND name = N'_dta_index_Venue_7_439672614__K5_K29_K1')
CREATE NONCLUSTERED INDEX [_dta_index_Venue_7_439672614__K5_K29_K1] ON [Venue] 
(
	[PlaceK] ASC,
	[UrlName] ASC,
	[K] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Venue]') AND name = N'_dta_index_Venue_8_439672614__K5_K28_K1_K36_2_7_29_34')
CREATE NONCLUSTERED INDEX [_dta_index_Venue_8_439672614__K5_K28_K1_K36_2_7_29_34] ON [Venue] 
(
	[PlaceK] ASC,
	[RegularEvents] ASC,
	[K] ASC,
	[TotalEvents] ASC
)
INCLUDE ( [UrlName],
[UrlFragment],
[Pic],
[Name]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Venue]') AND name = N'IX_Venue')
CREATE NONCLUSTERED INDEX [IX_Venue] ON [Venue] 
(
	[PlaceK] ASC,
	[HasFeature] DESC,
	[FeatureExpires] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Venue]') AND name = N'Venue24')
CREATE NONCLUSTERED INDEX [Venue24] ON [Venue] 
(
	[PlaceK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Venue]') AND name = N'Venue40')
CREATE NONCLUSTERED INDEX [Venue40] ON [Venue] 
(
	[IsNew] ASC,
	[IsEdited] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'K'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'K'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the venue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'DetailsHtml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Info about the club, address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'DetailsHtml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'Postcode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Postcode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'Postcode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'PlaceK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Links to one Place' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'PlaceK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'AdminNote'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Admin note' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'AdminNote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'Pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cropped image between 75*75 and 100*100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'Pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'OverrideMapUrl'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Url of the page with the map on it (if there is a better map than multimep)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'OverrideMapUrl'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'OwnerUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user that added this event (0 if added by admin)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'OwnerUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'PicNew'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the owner wants to upload another image after the this has been enabled, it is stored here' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'PicNew'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'Capacity'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The capacity of the venue (max number of people)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'Capacity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'TotalComments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'TotalComments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'LastPost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date/time of the last post that was posted in this board (including child objects)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'LastPost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'AverageCommentDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average date.time of all comments posted in this board (including child objects)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'AverageCommentDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'AddedDateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was the venue added to the system?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'AddedDateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'NoPhotos'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If true, only the venue owner may upload photos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'NoPhotos'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'AdminEmail'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The email address of the admin contact for sorting spoters with guestlists' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'AdminEmail'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'IsDescriptionText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the description text or html?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'IsDescriptionText'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'IsNew'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the venue been seen by an admin or not?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'IsNew'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'NoPrints'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If true, photos taken at this venue can''t be ordered.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'NoPrints'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'IsDescriptionCleanHtml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Should the description just have "\n" replaced with "&lt;br&gt;"? (This overrides IsDescriptionText)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'IsDescriptionCleanHtml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'IsEdited'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the venue been recently edited?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'IsEdited'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'DuplicateGuid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guid used to ensure duplicate venues don''t get posted if the user refreshes the page after saving.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'DuplicateGuid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'RegularEvents'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does the venue host regular (monthly or more often) events?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'RegularEvents'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'UrlName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique name used in the url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'UrlName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'PromoterK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to the promoter table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'PromoterK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'PicState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State var used to reconstruct cropper when re-cropping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'PicState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'PicPhotoK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Photo that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'PicPhotoK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'PicMiscK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Misc that was used to create the Pic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'PicMiscK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'UrlFragment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The url fragment - so that the url can be generated without accessing parent database records' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'UrlFragment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'ModeratorUsrK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The moderator that has been assigned to moderate this venue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'ModeratorUsrK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'TotalEvents'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of events at this venue' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'TotalEvents'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'HasFeature'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has this venue paid for a featured link on the Place page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'HasFeature'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'FeatureExpires'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When does the featured button on the Place page expire' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'FeatureExpires'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'FeatureButtonUrl'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URL of the flash button that will be displayed on the Place page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'FeatureButtonUrl'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'PromoterStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the promoter been confirmed?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'PromoterStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', N'COLUMN',N'DetailsPlain'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the Details plain html? - e.g. rendered outsite the yellow box?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue', @level2type=N'COLUMN',@level2name=N'DetailsPlain'
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_1_28_12' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_1_28_12] ON [Venue]([K], [RegularEvents], [Capacity])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_1_5_29' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_1_5_29] ON [Venue]([K], [PlaceK], [UrlName])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_12_28' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_12_28] ON [Venue]([Capacity], [RegularEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_2_12_5_28' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_2_12_5_28] ON [Venue]([Name], [Capacity], [PlaceK], [RegularEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_2_5_28' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_2_5_28] ON [Venue]([Name], [PlaceK], [RegularEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_22_23_26' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_22_23_26] ON [Venue]([IsDescriptionText], [IsNew], [IsEdited])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_22_23_35' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_22_23_35] ON [Venue]([IsDescriptionText], [IsNew], [ModeratorUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_22_26_35_23' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_22_26_35_23] ON [Venue]([IsDescriptionText], [IsEdited], [ModeratorUsrK], [IsNew])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_23_35' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_23_35] ON [Venue]([IsNew], [ModeratorUsrK])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_26_35_23' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_26_35_23] ON [Venue]([IsEdited], [ModeratorUsrK], [IsNew])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_28_1_36' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_28_1_36] ON [Venue]([RegularEvents], [K], [TotalEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_36_28' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_36_28] ON [Venue]([TotalEvents], [RegularEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_36_5_28' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_36_5_28] ON [Venue]([TotalEvents], [PlaceK], [RegularEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_5_1_2_28' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_5_1_2_28] ON [Venue]([PlaceK], [K], [Name], [RegularEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_5_28_1_36' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_5_28_1_36] ON [Venue]([PlaceK], [RegularEvents], [K], [TotalEvents])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_5_28_12_1_2' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_5_28_12_1_2] ON [Venue]([PlaceK], [RegularEvents], [Capacity], [K], [Name])
GO
if not exists (select * from sys.stats where name = N'_dta_stat_439672614_5_29' and object_id = object_id(N'[Venue]'))
CREATE STATISTICS [_dta_stat_439672614_5_29] ON [Venue]([PlaceK], [UrlName])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Venue', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A club or location' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venue'
GO
/****** Object:  View [dbo].[NovemberVisitors]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NovemberVisitors]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [NovemberVisitors]
AS
SELECT     SUM(Pages) AS Pages, Guid
FROM         dbo.VisitView
WHERE     (YEAR(DateTimeStart) = 2005) AND (MONTH(DateTimeStart) = 11)
GROUP BY Guid
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'NovemberVisitors', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1 [56] 4 [18] 2))"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "VisitView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      RowHeights = 220
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'NovemberVisitors'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'NovemberVisitors', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'NovemberVisitors'
GO
/****** Object:  Table [dbo].[PurchaseProduct]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PurchaseProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [PurchaseProduct](
	[PurchaseK] [int] NOT NULL,
	[ProductK] [int] NOT NULL,
	[PurchaseProductUnitPriceAtTimeOfOrder] [float] NULL,
	[PurchaseProductQuantity] [int] NULL,
 CONSTRAINT [PK__PURCHASEPRODUCT__38B96646] PRIMARY KEY CLUSTERED 
(
	[PurchaseK] ASC,
	[ProductK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PurchaseProduct]') AND name = N'IPURCHASE12')
CREATE NONCLUSTERED INDEX [IPURCHASE12] ON [PurchaseProduct] 
(
	[ProductK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[_hypmv_267]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[_hypmv_267]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [_hypmv_267] WITH SCHEMABINDING AS SELECT  [dbo].[Event].[K] as _hypmv_267_col_1,  [dbo].[Event].[Name] as _hypmv_267_col_2,  [dbo].[Venue].[Name] as _hypmv_267_col_3,  [dbo].[Place].[Name] as _hypmv_267_col_4,  [dbo].[Event].[DateTime] as _hypmv_267_col_5 FROM  [dbo].[Venue],  [dbo].[Place],  [dbo].[Event]   WHERE ( [dbo].[Venue].[K] = [dbo].[Event].[VenueK] ) AND ( [dbo].[Place].[K] = [dbo].[Venue].[PlaceK] )'
GO
SET ARITHABORT ON
GO
SET CONCAT_NULL_YIELDS_NULL ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
SET ANSI_WARNINGS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[_hypmv_267]') AND name = N'_hypmv_26717')
CREATE UNIQUE CLUSTERED INDEX [_hypmv_26717] ON [_hypmv_267] 
(
	[_hypmv_267_col_1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
GO
SET CONCAT_NULL_YIELDS_NULL ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
SET ANSI_WARNINGS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[_hypmv_267]') AND name = N'_hypmv_26798')
CREATE NONCLUSTERED INDEX [_hypmv_26798] ON [_hypmv_267] 
(
	[_hypmv_267_col_2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[HitView]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[HitView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [HitView]
AS
SELECT     dbo.Hit.*, (CASE HasEnded WHEN 0 THEN DATEDIFF(s, StartTime, { fn NOW() }) ELSE DATEDIFF(s, StartTime, EndTime) END) AS Duration
FROM         dbo.Hit
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'HitView', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1 [56] 4 [18] 2))"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Hit"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      RowHeights = 220
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HitView'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'HitView', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HitView'
GO
/****** Object:  View [dbo].[EventPromoter]    Script Date: 04/16/2007 15:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[EventPromoter]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [EventPromoter]
AS
SELECT DISTINCT dbo.Event.K AS EventK, dbo.Brand.PromoterK AS PromoterK
FROM         dbo.Event INNER JOIN
                      dbo.EventBrand ON dbo.Event.K = dbo.EventBrand.EventK INNER JOIN
                      dbo.Brand ON dbo.EventBrand.BrandK = dbo.Brand.K
WHERE     (dbo.Brand.PromoterStatus = 2)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'EventPromoter', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1 [56] 4 [18] 2))"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Event"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EventBrand"
            Begin Extent = 
               Top = 6
               Left = 324
               Bottom = 84
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Brand"
            Begin Extent = 
               Top = 6
               Left = 514
               Bottom = 114
               Right = 670
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      RowHeights = 220
      Begin ColumnWidths = 3
         Width = 284
         Width = 1440
         Width = 1440
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EventPromoter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'EventPromoter', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EventPromoter'
GO
/****** Object:  ForeignKey [IPURCHASE13]    Script Date: 04/16/2007 15:31:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[IPURCHASE13]') AND parent_object_id = OBJECT_ID(N'[PurchaseProduct]'))
ALTER TABLE [PurchaseProduct]  WITH CHECK ADD  CONSTRAINT [IPURCHASE13] FOREIGN KEY([PurchaseK])
REFERENCES [Purchase] ([PurchaseK])
GO
ALTER TABLE [PurchaseProduct] CHECK CONSTRAINT [IPURCHASE13]
GO


EXEC sp_addextendedproperty @name=N'IsDevelopmentDatabase', @value=N'true' 