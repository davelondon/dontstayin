Type.registerNamespace('SpottedScript.Pages.AreYouDj');
SpottedScript.Pages.AreYouDj.View=function(clientId){SpottedScript.Pages.AreYouDj.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.AreYouDj.View.prototype={clientId:null,get_isDjYes:function(){return document.getElementById(this.clientId+'_IsDjYes');},get_isDjNo:function(){return document.getElementById(this.clientId+'_IsDjNo');},get_customValidatorIsDj:function(){return document.getElementById(this.clientId+'_CustomValidatorIsDj');},get_savedPanel:function(){return document.getElementById(this.clientId+'_SavedPanel');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.AreYouDj.View.registerClass('SpottedScript.Pages.AreYouDj.View',SpottedScript.DsiUserControl.View);