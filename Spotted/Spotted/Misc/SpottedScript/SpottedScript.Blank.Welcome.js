Type.registerNamespace('SpottedScript.Blank.Welcome');
SpottedScript.Blank.Welcome.View=function(clientId){SpottedScript.Blank.Welcome.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Blank.Welcome.View.prototype={clientId:null,get_welcomeHeaderInvite:function(){return document.getElementById(this.clientId+'_WelcomeHeaderInvite');},get_welcomeHeaderSignUp:function(){return document.getElementById(this.clientId+'_WelcomeHeaderSignUp');},get_welcomePart1Header:function(){return document.getElementById(this.clientId+'_WelcomePart1Header');},get_validationsummary1:function(){return document.getElementById(this.clientId+'_Validationsummary1');},get_uiAddedByUsrsDiv:function(){return document.getElementById(this.clientId+'_uiAddedByUsrsDiv');},get_uiAddedByUsrLabel:function(){return document.getElementById(this.clientId+'_uiAddedByUsrLabel');},get_uiAddedByUsrsGridView:function(){return document.getElementById(this.clientId+'_uiAddedByUsrsGridView');},get_uiAddedByGroupsDiv:function(){return document.getElementById(this.clientId+'_uiAddedByGroupsDiv');},get_uiAddedByGroupLabel:function(){return document.getElementById(this.clientId+'_uiAddedByGroupLabel');},get_uiAddedByGroupsGridView:function(){return document.getElementById(this.clientId+'_uiAddedByGroupsGridView');},get_nickName:function(){return document.getElementById(this.clientId+'_NickName');},get_requiredfieldvalidator1:function(){return document.getElementById(this.clientId+'_Requiredfieldvalidator1');},get_regularexpressionvalidator99:function(){return document.getElementById(this.clientId+'_Regularexpressionvalidator99');},get_customvalidator1:function(){return document.getElementById(this.clientId+'_Customvalidator1');},get_firstName:function(){return document.getElementById(this.clientId+'_FirstName');},get_requiredfieldvalidator2:function(){return document.getElementById(this.clientId+'_Requiredfieldvalidator2');},get_lastName:function(){return document.getElementById(this.clientId+'_LastName');},get_requiredfieldvalidator3:function(){return document.getElementById(this.clientId+'_Requiredfieldvalidator3');},get_email:function(){return document.getElementById(this.clientId+'_Email');},get_requiredfieldvalidator4:function(){return document.getElementById(this.clientId+'_Requiredfieldvalidator4');},get_emailRegex:function(){return document.getElementById(this.clientId+'_EmailRegex');},get_emailDuplicateValidator:function(){return document.getElementById(this.clientId+'_EmailDuplicateValidator');},get_passwordTr:function(){return document.getElementById(this.clientId+'_PasswordTr');},get_password1:function(){return document.getElementById(this.clientId+'_Password1');},get_password2:function(){return document.getElementById(this.clientId+'_Password2');},get_requiredFieldValidator5:function(){return document.getElementById(this.clientId+'_RequiredFieldValidator5');},get_regularExpressionValidator1:function(){return document.getElementById(this.clientId+'_RegularExpressionValidator1');},get_compareValidator1:function(){return document.getElementById(this.clientId+'_CompareValidator1');},get_dialingCodeDropDown:function(){return document.getElementById(this.clientId+'_DialingCodeDropDown');},get_dialingCodeOtherSpan:function(){return document.getElementById(this.clientId+'_DialingCodeOtherSpan');},get_dialingCodeOther:function(){return document.getElementById(this.clientId+'_DialingCodeOther');},get_mobileNumber:function(){return document.getElementById(this.clientId+'_MobileNumber');},get_sexMale:function(){return document.getElementById(this.clientId+'_SexMale');},get_sexFemale:function(){return document.getElementById(this.clientId+'_SexFemale');},get_customvalidator2:function(){return document.getElementById(this.clientId+'_Customvalidator2');},get_dateOfBirthDay:function(){return document.getElementById(this.clientId+'_DateOfBirthDay');},get_dateOfBirthMonth:function(){return document.getElementById(this.clientId+'_DateOfBirthMonth');},get_dateOfBirthYear:function(){return document.getElementById(this.clientId+'_DateOfBirthYear');},get_customvalidator8:function(){return document.getElementById(this.clientId+'_Customvalidator8');},get_customvalidator9:function(){return document.getElementById(this.clientId+'_Customvalidator9');},get_favouriteMusicDropDownList:function(){return document.getElementById(this.clientId+'_FavouriteMusicDropDownList');},get_customvalidator6:function(){return document.getElementById(this.clientId+'_Customvalidator6');},get_isDjYes:function(){return document.getElementById(this.clientId+'_IsDjYes');},get_isDjNo:function(){return document.getElementById(this.clientId+'_IsDjNo');},get_customValidatorIsDj:function(){return document.getElementById(this.clientId+'_CustomValidatorIsDj');},get_homeTownDropDownList:function(){return document.getElementById(this.clientId+'_HomeTownDropDownList');},get_customvalidator4:function(){return document.getElementById(this.clientId+'_Customvalidator4');},get_sendSpottedEmails:function(){return document.getElementById(this.clientId+'_SendSpottedEmails');},get_sendInvites:function(){return document.getElementById(this.clientId+'_SendInvites');},get_sendFlyers:function(){return document.getElementById(this.clientId+'_SendFlyers');},get_sendSpottedTexts:function(){return document.getElementById(this.clientId+'_SendSpottedTexts');},get_hipChallengeTextBox:function(){return document.getElementById(this.clientId+'_HipChallengeTextBox');},get_hipImage:function(){return document.getElementById(this.clientId+'_HipImage');},get_customvalidator10:function(){return document.getElementById(this.clientId+'_Customvalidator10');},get_termsCheckbox:function(){return document.getElementById(this.clientId+'_TermsCheckbox');},get_customvalidator7:function(){return document.getElementById(this.clientId+'_Customvalidator7');},get_prefsUpdateButton:function(){return document.getElementById(this.clientId+'_PrefsUpdateButton');},get_welcomePart2And3:function(){return document.getElementById(this.clientId+'_WelcomePart2And3');},get_logOffButton:function(){return document.getElementById(this.clientId+'_LogOffButton');},get_unsubscribeButton:function(){return document.getElementById(this.clientId+'_UnsubscribeButton');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Blank.Welcome.View.registerClass('SpottedScript.Blank.Welcome.View',SpottedScript.BlankUserControl.View);