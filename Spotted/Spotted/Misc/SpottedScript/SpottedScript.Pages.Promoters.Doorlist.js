Type.registerNamespace('SpottedScript.Pages.Promoters.Doorlist');
SpottedScript.Pages.Promoters.Doorlist.View=function(clientId){SpottedScript.Pages.Promoters.Doorlist.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Promoters.Doorlist.View.prototype={clientId:null,get_promoterIntro:function(){return document.getElementById(this.clientId+'_PromoterIntro');},get_doorlistPanel:function(){return document.getElementById(this.clientId+'_DoorlistPanel');},get_h1Title:function(){return document.getElementById(this.clientId+'_H1Title');},get_hasTicketsP:function(){return document.getElementById(this.clientId+'_HasTicketsP');},get_eventDropDownList:function(){return document.getElementById(this.clientId+'_EventDropDownList');},get_doorlistButton:function(){return document.getElementById(this.clientId+'_DoorlistButton');},get_noTicketsP:function(){return document.getElementById(this.clientId+'_NoTicketsP');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Promoters.Doorlist.View.registerClass('SpottedScript.Pages.Promoters.Doorlist.View',SpottedScript.Pages.Promoters.PromoterUserControl.View);