Type.registerNamespace('SpottedScript.Admin.DonationIcons');
SpottedScript.Admin.DonationIcons.View=function(clientId){SpottedScript.Admin.DonationIcons.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Admin.DonationIcons.View.prototype={clientId:null,get_uiK:function(){return document.getElementById(this.clientId+'_uiK');},get_uiName:function(){return document.getElementById(this.clientId+'_uiName');},get_uiGuid:function(){return document.getElementById(this.clientId+'_uiGuid');},get_uiExtension:function(){return document.getElementById(this.clientId+'_uiExtension');},get_uiText:function(){return document.getElementById(this.clientId+'_uiText');},get_uiActivationDate:function(){return eval(this.clientId+'_uiActivationDateController');},get_uiActivationTime:function(){return document.getElementById(this.clientId+'_uiActivationTime');},get_uiEnabled:function(){return document.getElementById(this.clientId+'_uiEnabled');},get_uiThreadK:function(){return document.getElementById(this.clientId+'_uiThreadK');},get_uiVatable:function(){return document.getElementById(this.clientId+'_uiVatable');},get_uiLink:function(){return document.getElementById(this.clientId+'_uiLink');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Admin.DonationIcons.View.registerClass('SpottedScript.Admin.DonationIcons.View',SpottedScript.AdminUserControl.View);