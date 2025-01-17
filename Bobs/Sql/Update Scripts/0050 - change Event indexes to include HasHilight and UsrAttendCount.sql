


IF EXISTS ( 

	SELECT * FROM sys.indexes indexes WHERE name = '_dta_index_Event_7_1465772279__K9D_K46_K52D_K32D_K16D_K36_1_2_8_12_53_55_63' 

)

BEGIN 

	DROP INDEX [_dta_index_Event_7_1465772279__K9D_K46_K52D_K32D_K16D_K36_1_2_8_12_53_55_63] ON [dbo].[Event] WITH ( ONLINE = OFF )
	

END

CREATE NONCLUSTERED INDEX [_dta_index_Event_7_1465772279__K9D_K46_K52D_K32D_K16D_K36_1_2_8_12_53_55_63] ON [dbo].[Event] 
(
	[DateTime] DESC,
	[StartTime] ASC,
	[HasHilight] DESC,
	[LivePhotos] DESC,
	[UsrAttendCount] DESC,
	[Capacity] DESC,
	[HasSpotter] ASC
)
INCLUDE ( [VenueK],
[K],
[IsDescriptionCleanHtml],
[IsDescriptionText],
[Name],
[Pic],
[UrlFragment]) WITH (STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO





IF EXISTS ( 

	SELECT * FROM sys.indexes indexes WHERE name = '_dta_index_Event_8_1465772279__K12_K9_K1_K46_K52_K16_2_32' 

)

BEGIN 
	DROP INDEX [_dta_index_Event_8_1465772279__K12_K9_K1_K46_K52_K16_2_32] ON [dbo].[Event] WITH ( ONLINE = OFF )
	
END

CREATE NONCLUSTERED INDEX [_dta_index_Event_8_1465772279__K12_K9_K1_K46_K52_K16_2_32] ON [dbo].[Event] 
(
	[VenueK] ASC,
	[DateTime] ASC,
	[K] ASC,
	[StartTime] ASC,
	[HasHilight] DESC,
	[UsrAttendCount] DESC,
	[Capacity] DESC
)
INCLUDE ( [LivePhotos],
[Name]) WITH (STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO







IF EXISTS ( 

	SELECT * FROM sys.indexes indexes WHERE name = '_dta_index_Event_8_1465772279__K12_K9_K1_K46_K52_K32_K16_2_8_53_55_63' 

)

BEGIN 
	DROP INDEX [_dta_index_Event_8_1465772279__K12_K9_K1_K46_K52_K32_K16_2_8_53_55_63] ON [dbo].[Event] WITH ( ONLINE = OFF )
	
END

CREATE NONCLUSTERED INDEX [_dta_index_Event_8_1465772279__K12_K9_K1_K46_K52_K32_K16_2_8_53_55_63] ON [dbo].[Event] 
(
	[VenueK] ASC,
	[DateTime] ASC,
	[K] ASC,
	[StartTime] ASC,
	[HasHilight] DESC,
	[LivePhotos] DESC,
	[UsrAttendCount] DESC,
	[Capacity] DESC
)
INCLUDE ( [IsDescriptionCleanHtml],
[IsDescriptionText],
[UrlFragment],
[Name],
[Pic]) WITH (STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO








IF EXISTS ( 

	SELECT * FROM sys.indexes indexes WHERE name = '_dta_index_Event_8_1465772279__K18_K1_K9_K46_K52_K32_K16_2_5_8_12_19_20_21_22_23_24_25_31_33_34_35_36_37_38_39_40_42_43_44_45_' 

)

BEGIN 
	DROP INDEX [_dta_index_Event_8_1465772279__K18_K1_K9_K46_K52_K32_K16_2_5_8_12_19_20_21_22_23_24_25_31_33_34_35_36_37_38_39_40_42_43_44_45_] ON [dbo].[Event] WITH ( ONLINE = OFF )
	
END

CREATE NONCLUSTERED INDEX [_dta_index_Event_8_1465772279__K18_K1_K9_K46_K52_K32_K16_2_5_8_12_19_20_21_22_23_24_25_31_33_34_35_36_37_38_39_40_42_43_44_45_] ON [dbo].[Event] 
(
	[OwnerUsrK] ASC,
	[K] ASC,
	[DateTime] ASC,
	[StartTime] ASC,
	[HasHilight] DESC,
	[LivePhotos] DESC,
	[UsrAttendCount] DESC,
	[Capacity] DESC
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
[VenueK]) WITH (STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO






IF EXISTS ( 

	SELECT * FROM sys.indexes indexes WHERE name = '_dta_index_Event_8_1465772279__K9_K46_K52D_K16D_1_2_5_8_12_18_19_20_21_22_23_24_25_31_32_33_34_35_36_37_38_39_40_42_43_44_45_' 

)

BEGIN 
	DROP INDEX [_dta_index_Event_8_1465772279__K9_K46_K52D_K16D_1_2_5_8_12_18_19_20_21_22_23_24_25_31_32_33_34_35_36_37_38_39_40_42_43_44_45_] ON [dbo].[Event] WITH ( ONLINE = OFF )
	
END

CREATE NONCLUSTERED INDEX [_dta_index_Event_8_1465772279__K9_K46_K52D_K16D_1_2_5_8_12_18_19_20_21_22_23_24_25_31_32_33_34_35_36_37_38_39_40_42_43_44_45_] ON [dbo].[Event] 
(
	[DateTime] ASC,
	[StartTime] ASC,
	[HasHilight] DESC,
	[UsrAttendCount] DESC,
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
[VenueK]) WITH (STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

