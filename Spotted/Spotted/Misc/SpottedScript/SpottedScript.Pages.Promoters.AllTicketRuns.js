Type.registerNamespace('SpottedScript.Pages.Promoters.AllTicketRuns');
SpottedScript.Pages.Promoters.AllTicketRuns.View=function(clientId){SpottedScript.Pages.Promoters.AllTicketRuns.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Promoters.AllTicketRuns.View.prototype={clientId:null,get_promoterIntro:function(){return document.getElementById(this.clientId+'_PromoterIntro');},get_addTicketRunPanel:function(){return document.getElementById(this.clientId+'_AddTicketRunPanel');},get_ticketSalesSummaryTable:function(){return document.getElementById(this.clientId+'_TicketSalesSummaryTable');},get_totalTicketRunsLabel:function(){return document.getElementById(this.clientId+'_TotalTicketRunsLabel');},get_totalTicketsSoldLabel:function(){return document.getElementById(this.clientId+'_TotalTicketsSoldLabel');},get_ticketFundsReleasedLabel:function(){return document.getElementById(this.clientId+'_TicketFundsReleasedLabel');},get_ticketFundsInWaitingLabel:function(){return document.getElementById(this.clientId+'_TicketFundsInWaitingLabel');},get_allTicketRunsPanel:function(){return document.getElementById(this.clientId+'_AllTicketRunsPanel');},get_h1Title:function(){return document.getElementById(this.clientId+'_H1Title');},get_selectCurrentDateRangeLinkButton:function(){return document.getElementById(this.clientId+'_SelectCurrentDateRangeLinkButton');},get_selectPastDateRangeLinkButton:function(){return document.getElementById(this.clientId+'_SelectPastDateRangeLinkButton');},get_selectAllDateRangeLinkButton:function(){return document.getElementById(this.clientId+'_SelectAllDateRangeLinkButton');},get_ticketRunsGridView:function(){return document.getElementById(this.clientId+'_TicketRunsGridView');},get_paginationPanel:function(){return document.getElementById(this.clientId+'_PaginationPanel');},get_prevPageLinkButton:function(){return document.getElementById(this.clientId+'_PrevPageLinkButton');},get_nextPageLinkButton:function(){return document.getElementById(this.clientId+'_NextPageLinkButton');},get_adminLinksPanel:function(){return document.getElementById(this.clientId+'_AdminLinksPanel');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Promoters.AllTicketRuns.View.registerClass('SpottedScript.Pages.Promoters.AllTicketRuns.View',SpottedScript.Pages.Promoters.PromoterUserControl.View);