Type.registerNamespace('SpottedScript.Pages.ModerateNews');
SpottedScript.Pages.ModerateNews.View=function(clientId){SpottedScript.Pages.ModerateNews.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.ModerateNews.View.prototype={clientId:null,get_h16:function(){return document.getElementById(this.clientId+'_H16');},get_h13:function(){return document.getElementById(this.clientId+'_H13');},get_h11:function(){return document.getElementById(this.clientId+'_H11');},get_itemsPanel:function(){return document.getElementById(this.clientId+'_ItemsPanel');},get_itemsRepeater:function(){return document.getElementById(this.clientId+'_ItemsRepeater');},get_outputP:function(){return document.getElementById(this.clientId+'_OutputP');},get_moderatorsDataGrid:function(){return document.getElementById(this.clientId+'_ModeratorsDataGrid');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.ModerateNews.View.registerClass('SpottedScript.Pages.ModerateNews.View',SpottedScript.DsiUserControl.View);