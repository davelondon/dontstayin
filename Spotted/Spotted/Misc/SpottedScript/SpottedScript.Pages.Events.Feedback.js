Type.registerNamespace('SpottedScript.Pages.Events.Feedback');
SpottedScript.Pages.Events.Feedback.View=function(clientId){SpottedScript.Pages.Events.Feedback.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Events.Feedback.View.prototype={clientId:null,get_eventTicketFeedbackPanel:function(){return document.getElementById(this.clientId+'_EventTicketFeedbackPanel');},get_ticketsHeading:function(){return document.getElementById(this.clientId+'_TicketsHeading');},get_ticketEventDataList:function(){return document.getElementById(this.clientId+'_TicketEventDataList');},get_ticketFeedbackP:function(){return document.getElementById(this.clientId+'_TicketFeedbackP');},get_usrTicketFeedbackHeaderLabel:function(){return document.getElementById(this.clientId+'_UsrTicketFeedbackHeaderLabel');},get_usrTicketResponseGoodLinkButtonDiv:function(){return document.getElementById(this.clientId+'_UsrTicketResponseGoodLinkButtonDiv');},get_usrTicketResponseGoodLinkButton:function(){return document.getElementById(this.clientId+'_UsrTicketResponseGoodLinkButton');},get_usrTicketResponseGoodDiv:function(){return document.getElementById(this.clientId+'_UsrTicketResponseGoodDiv');},get_usrTicketResponseBadLinkButtonDiv:function(){return document.getElementById(this.clientId+'_UsrTicketResponseBadLinkButtonDiv');},get_usrTicketResponseBadLinkButton:function(){return document.getElementById(this.clientId+'_UsrTicketResponseBadLinkButton');},get_usrTicketResponseBadDiv:function(){return document.getElementById(this.clientId+'_UsrTicketResponseBadDiv');},get_usrTicketFeedbackTextDiv:function(){return document.getElementById(this.clientId+'_UsrTicketFeedbackTextDiv');},get_usrTicketFeedbackTextBox:function(){return document.getElementById(this.clientId+'_UsrTicketFeedbackTextBox');},get_usrTicketFeedbackLabel:function(){return document.getElementById(this.clientId+'_UsrTicketFeedbackLabel');},get_usrTicketFeedbackTextSubmitButton:function(){return document.getElementById(this.clientId+'_UsrTicketFeedbackTextSubmitButton');},get_successfulTicketEventPanel:function(){return document.getElementById(this.clientId+'_SuccessfulTicketEventPanel');},get_joinBrandRegularsGroup:function(){return document.getElementById(this.clientId+'_JoinBrandRegularsGroup');},get_brandGroupRepeater:function(){return document.getElementById(this.clientId+'_BrandGroupRepeater');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Events.Feedback.View.registerClass('SpottedScript.Pages.Events.Feedback.View',SpottedScript.Pages.Events.EventUserControl.View);