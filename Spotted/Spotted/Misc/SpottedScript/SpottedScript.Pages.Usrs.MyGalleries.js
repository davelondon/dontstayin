Type.registerNamespace('SpottedScript.Pages.Usrs.MyGalleries');
SpottedScript.Pages.Usrs.MyGalleries.View=function(clientId){SpottedScript.Pages.Usrs.MyGalleries.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Usrs.MyGalleries.View.prototype={clientId:null,get_panelItems:function(){return document.getElementById(this.clientId+'_PanelItems');},get_noItemsPanel:function(){return document.getElementById(this.clientId+'_NoItemsPanel');},get_h12:function(){return document.getElementById(this.clientId+'_H12');},get_itemsPanel:function(){return document.getElementById(this.clientId+'_ItemsPanel');},get_h13:function(){return document.getElementById(this.clientId+'_H13');},get_pageP:function(){return document.getElementById(this.clientId+'_PageP');},get_prevPageLink:function(){return document.getElementById(this.clientId+'_PrevPageLink');},get_nextPageLink:function(){return document.getElementById(this.clientId+'_NextPageLink');},get_dataList:function(){return document.getElementById(this.clientId+'_DataList');},get_pageP1:function(){return document.getElementById(this.clientId+'_PageP1');},get_prevPageLink1:function(){return document.getElementById(this.clientId+'_PrevPageLink1');},get_nextPageLink1:function(){return document.getElementById(this.clientId+'_NextPageLink1');},get_usrIntro:function(){return document.getElementById(this.clientId+'_UsrIntro');},get_cal:function(){return document.getElementById(this.clientId+'_Cal');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Usrs.MyGalleries.View.registerClass('SpottedScript.Pages.Usrs.MyGalleries.View',SpottedScript.Pages.Usrs.UsrUserControl.View);