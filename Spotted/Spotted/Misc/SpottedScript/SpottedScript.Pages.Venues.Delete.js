Type.registerNamespace('SpottedScript.Pages.Venues.Delete');
SpottedScript.Pages.Venues.Delete.View=function(clientId){SpottedScript.Pages.Venues.Delete.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Venues.Delete.View.prototype={clientId:null,get_panelDelete:function(){return document.getElementById(this.clientId+'_PanelDelete');},get_h10:function(){return document.getElementById(this.clientId+'_H10');},get_venueDescriptionP:function(){return document.getElementById(this.clientId+'_VenueDescriptionP');},get_password:function(){return document.getElementById(this.clientId+'_Password');},get_button1:function(){return document.getElementById(this.clientId+'_Button1');},get_panelError:function(){return document.getElementById(this.clientId+'_PanelError');},get_h11:function(){return document.getElementById(this.clientId+'_H11');},get_deleteFailedP:function(){return document.getElementById(this.clientId+'_DeleteFailedP');},get_errorBackAnchor:function(){return document.getElementById(this.clientId+'_ErrorBackAnchor');},get_panelDone:function(){return document.getElementById(this.clientId+'_PanelDone');},get_h12:function(){return document.getElementById(this.clientId+'_H12');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Venues.Delete.View.registerClass('SpottedScript.Pages.Venues.Delete.View',SpottedScript.DsiUserControl.View);