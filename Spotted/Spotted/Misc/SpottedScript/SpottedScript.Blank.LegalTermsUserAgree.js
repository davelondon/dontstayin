Type.registerNamespace('SpottedScript.Blank.LegalTermsUserAgree');
SpottedScript.Blank.LegalTermsUserAgree.View=function(clientId){SpottedScript.Blank.LegalTermsUserAgree.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Blank.LegalTermsUserAgree.View.prototype={clientId:null,get_validationsummary1:function(){return document.getElementById(this.clientId+'_Validationsummary1');},get_termsCheckbox:function(){return document.getElementById(this.clientId+'_TermsCheckbox');},get_customvalidator7:function(){return document.getElementById(this.clientId+'_Customvalidator7');},get_prefsUpdateButton:function(){return document.getElementById(this.clientId+'_PrefsUpdateButton');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Blank.LegalTermsUserAgree.View.registerClass('SpottedScript.Blank.LegalTermsUserAgree.View',SpottedScript.BlankUserControl.View);