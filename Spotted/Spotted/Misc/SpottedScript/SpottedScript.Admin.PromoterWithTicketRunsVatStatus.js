Type.registerNamespace('SpottedScript.Admin.PromoterWithTicketRunsVatStatus');
SpottedScript.Admin.PromoterWithTicketRunsVatStatus.View=function(clientId){SpottedScript.Admin.PromoterWithTicketRunsVatStatus.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Admin.PromoterWithTicketRunsVatStatus.View.prototype={clientId:null,get_promoterWithTicketRunsVatStatusPanel:function(){return document.getElementById(this.clientId+'_PromoterWithTicketRunsVatStatusPanel');},get_vatStatusDropDownList:function(){return document.getElementById(this.clientId+'_VatStatusDropDownList');},get_sendReminderEmailForUnknownVatStatusPromotersButton:function(){return document.getElementById(this.clientId+'_SendReminderEmailForUnknownVatStatusPromotersButton');},get_unknownPromoterVatStatusGridView:function(){return document.getElementById(this.clientId+'_UnknownPromoterVatStatusGridView');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Admin.PromoterWithTicketRunsVatStatus.View.registerClass('SpottedScript.Admin.PromoterWithTicketRunsVatStatus.View',SpottedScript.AdminUserControl.View);