Type.registerNamespace('SpottedScript.Pages.Events.BuyTickets');
SpottedScript.Pages.Events.BuyTickets.View=function(clientId){SpottedScript.Pages.Events.BuyTickets.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Events.BuyTickets.View.prototype={clientId:null,get_eventSelectedPanel:function(){return document.getElementById(this.clientId+'_EventSelectedPanel');},get_promoterPanel:function(){return document.getElementById(this.clientId+'_PromoterPanel');},get_payForTicketsPanel:function(){return document.getElementById(this.clientId+'_PayForTicketsPanel');},get_payForTicketsHeading:function(){return document.getElementById(this.clientId+'_PayForTicketsHeading');},get_payment:function(){return document.getElementById(this.clientId+'_Payment');},get_errorMessageLabel:function(){return document.getElementById(this.clientId+'_ErrorMessageLabel');},get_cancelTicketPaymentButton:function(){return document.getElementById(this.clientId+'_CancelTicketPaymentButton');},get_myTicketsPanel:function(){return document.getElementById(this.clientId+'_MyTicketsPanel');},get_h1:function(){return document.getElementById(this.clientId+'_H1');},get_myTicketsRepeater:function(){return document.getElementById(this.clientId+'_MyTicketsRepeater');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Events.BuyTickets.View.registerClass('SpottedScript.Pages.Events.BuyTickets.View',SpottedScript.Pages.Events.EventUserControl.View);