Type.registerNamespace('SpottedScript.Pages.Galleries.Paged');
SpottedScript.Pages.Galleries.Paged.View=function(clientId){SpottedScript.Pages.Galleries.Paged.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Galleries.Paged.View.prototype={clientId:null,get_header:function(){return document.getElementById(this.clientId+'_Header');},get_galleryPicImg:function(){return document.getElementById(this.clientId+'_GalleryPicImg');},get_eventLink:function(){return document.getElementById(this.clientId+'_EventLink');},get_eventVenueLink:function(){return document.getElementById(this.clientId+'_EventVenueLink');},get_eventPlaceLink:function(){return document.getElementById(this.clientId+'_EventPlaceLink');},get_discussionLink:function(){return document.getElementById(this.clientId+'_DiscussionLink');},get_ownerLink:function(){return document.getElementById(this.clientId+'_OwnerLink');},get_linkBack:function(){return document.getElementById(this.clientId+'_LinkBack');},get_quickBrowserLink:function(){return document.getElementById(this.clientId+'_QuickBrowserLink');},get_eventDate:function(){return document.getElementById(this.clientId+'_EventDate');},get_picCell:function(){return document.getElementById(this.clientId+'_PicCell');},get_eventLinkP:function(){return document.getElementById(this.clientId+'_EventLinkP');},get_articleLinkP:function(){return document.getElementById(this.clientId+'_ArticleLinkP');},get_articleLink:function(){return document.getElementById(this.clientId+'_ArticleLink');},get_discussionLinkCommentsLabel:function(){return document.getElementById(this.clientId+'_DiscussionLinkCommentsLabel');},get_discussionLinkTargetLabel:function(){return document.getElementById(this.clientId+'_DiscussionLinkTargetLabel');},get_noPhotosPanel:function(){return document.getElementById(this.clientId+'_NoPhotosPanel');},get_photosPanel:function(){return document.getElementById(this.clientId+'_PhotosPanel');},get_photosDataList:function(){return document.getElementById(this.clientId+'_PhotosDataList');},get_photoPageLinksP:function(){return document.getElementById(this.clientId+'_PhotoPageLinksP');},get_photoPageLinksP1:function(){return document.getElementById(this.clientId+'_PhotoPageLinksP1');},get_miscInfoPanel:function(){return document.getElementById(this.clientId+'_MiscInfoPanel');},get_h11:function(){return document.getElementById(this.clientId+'_H11');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Galleries.Paged.View.registerClass('SpottedScript.Pages.Galleries.Paged.View',SpottedScript.DsiUserControl.View);