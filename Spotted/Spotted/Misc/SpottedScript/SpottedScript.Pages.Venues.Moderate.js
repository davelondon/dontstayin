Type.registerNamespace('SpottedScript.Pages.Venues.Moderate');
SpottedScript.Pages.Venues.Moderate.View=function(clientId){SpottedScript.Pages.Venues.Moderate.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Venues.Moderate.View.prototype={clientId:null,get_h16:function(){return document.getElementById(this.clientId+'_H16');},get_h13:function(){return document.getElementById(this.clientId+'_H13');},get_button1:function(){return document.getElementById(this.clientId+'_Button1');},get_h11:function(){return document.getElementById(this.clientId+'_H11');},get_itemsPanel:function(){return document.getElementById(this.clientId+'_ItemsPanel');},get_itemsRepeater:function(){return document.getElementById(this.clientId+'_ItemsRepeater');},get_deleteSelectedButton:function(){return document.getElementById(this.clientId+'_DeleteSelectedButton');},get_outputP:function(){return document.getElementById(this.clientId+'_OutputP');},get_moderatorsDataGrid:function(){return document.getElementById(this.clientId+'_ModeratorsDataGrid');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Venues.Moderate.View.registerClass('SpottedScript.Pages.Venues.Moderate.View',SpottedScript.DsiUserControl.View);