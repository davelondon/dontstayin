Type.registerNamespace('SpottedScript.Pages.Guestlists');
SpottedScript.Pages.Guestlists.View=function(clientId){SpottedScript.Pages.Guestlists.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Guestlists.View.prototype={clientId:null,get_h17:function(){return document.getElementById(this.clientId+'_H17');},get_button1:function(){return document.getElementById(this.clientId+'_Button1');},get_button2:function(){return document.getElementById(this.clientId+'_Button2');},get_otherEventDataList:function(){return document.getElementById(this.clientId+'_OtherEventDataList');},get_currentEventDataList:function(){return document.getElementById(this.clientId+'_CurrentEventDataList');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Guestlists.View.registerClass('SpottedScript.Pages.Guestlists.View',SpottedScript.DsiUserControl.View);