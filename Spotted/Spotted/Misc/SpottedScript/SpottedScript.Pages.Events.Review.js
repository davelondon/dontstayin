Type.registerNamespace('SpottedScript.Pages.Events.Review');
SpottedScript.Pages.Events.Review.View=function(clientId){SpottedScript.Pages.Events.Review.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Events.Review.View.prototype={clientId:null,get_summaryTextBox:function(){return document.getElementById(this.clientId+'_SummaryTextBox');},get_reviewBody:function(){return document.getElementById(this.clientId+'_ReviewBody');},get_statusLabel:function(){return document.getElementById(this.clientId+'_StatusLabel');},get_deleteReviewPanel:function(){return document.getElementById(this.clientId+'_DeleteReviewPanel');},get_cantEditPanel:function(){return document.getElementById(this.clientId+'_CantEditPanel');},get_infoPanel:function(){return document.getElementById(this.clientId+'_InfoPanel');},get_deleteButton:function(){return document.getElementById(this.clientId+'_DeleteButton');},get_h11:function(){return document.getElementById(this.clientId+'_H11');},get_requiredFieldValidator1:function(){return document.getElementById(this.clientId+'_RequiredFieldValidator1');},get_requiredfieldvalidator2:function(){return document.getElementById(this.clientId+'_Requiredfieldvalidator2');},get_reviewHtml:function(){return eval(this.clientId+'_ReviewHtmlController');},get_h12:function(){return document.getElementById(this.clientId+'_H12');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Events.Review.View.registerClass('SpottedScript.Pages.Events.Review.View',SpottedScript.Pages.Events.EventUserControl.View);