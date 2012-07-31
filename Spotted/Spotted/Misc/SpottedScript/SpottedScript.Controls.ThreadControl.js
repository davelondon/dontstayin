Type.registerNamespace('SpottedScript.Controls.ThreadControl');
SpottedScript.Controls.ThreadControl.Controller=function(view){this.$0=view;view.get_commentHtml().get_$1().setAttribute('onclick','');$addHandler(view.get_commentHtml().get_$1(),'click',Function.createDelegate(this,this.$9));this.$6();if(view.get_addThreadAdvancedCheckBox()!=null){$addHandler(view.get_addThreadAdvancedCheckBox(),'click',Function.createDelegate(this,this.$5));}view.get_uiCommentsDisplay().$1.$27=Function.createDelegate(this,this.$4);view.get_uiCommentsDisplay().$1.$15=Function.createDelegate(this,this.$8);view.get_uiCommentsDisplay().$B=Function.createDelegate(this,this.$3);}
SpottedScript.Controls.ThreadControl.Controller.prototype={$0:null,get_uiCommentsDisplay:function(){return this.$0.get_uiCommentsDisplay();},onThreadCreated:null,onCommentPosted:null,$1:null,get_currentParentObjectK:function(){try{return Number.parseInvariant(this.$0.get_uiParentObjectK().value);}catch($0){return 0;}},set_currentParentObjectK:function(value){this.$0.get_uiParentObjectK().value=value.toString();return value;},get_$2:function(){try{return Number.parseInvariant(this.$0.get_uiParentObjectType().value);}catch($0){return 0;}},$3:function($p0,$p1){this.$0.get_commentHtml().$4();try{if(this.$0.get_uiMultiBuddyChooser()!=null){this.$0.get_uiMultiBuddyChooser().$1B();}}catch($0){}},$4:function($p0,$p1){if(this.onCommentPosted!=null){this.onCommentPosted(null,$p1);}this.$6();this.$0.get_commentHtml().$4();},$5:function($p0){WhenLoggedIn(Function.createDelegate(this,function(){
this.$0.get_addThreadAdvancedPanel().style.display=(this.$0.get_addThreadAdvancedCheckBox().checked)?'':'none';}));},$6:function(){Spotted.WebServices.Controls.CommentsDisplay.Service.getNewGuid(Function.createDelegate(this,this.$7),Function.createDelegate(null,Utils.Trace.webServiceFailure),null,-1);},$7:function($p0,$p1,$p2){this.$1=$p0;},$8:function($p0,$p1){if(this.onThreadCreated!=null){this.onThreadCreated($p0,$p1);}},$9:function($p0){$p0.preventDefault();WhenLoggedIn(Function.createDelegate(this,function(){
this.$A();}));},$A:function(){var $0=this.$0.get_commentHtml().get_$2();if($0.trim().length===0){return;}SpottedScript.Misc.showWaitingCursor();var $1=this.$0.get_uiMultiBuddyChooser().get_selectedValues();if(!this.$0.get_addThreadAdvancedCheckBox().checked||this.$0.get_addThreadPublicRadioButton().checked||this.$0.get_addThreadNewPublicRadioButton().checked){if(this.$0.get_uiCommentsDisplay().$1.get_$2()===0){this.$0.get_uiCommentsDisplay().$1.$2B(this.get_$2(),this.get_currentParentObjectK(),this.$1,$0,this.$0.get_commentHtml().get_$3(),this.$0.get_addThreadAdvancedCheckBox().checked&&this.$0.get_addThreadNewsCheckBox().checked,$1);}else if(this.$0.get_addThreadAdvancedCheckBox().checked&&this.$0.get_addThreadNewPublicRadioButton().checked){this.$0.get_uiCommentsDisplay().$1.$2D(this.get_$2(),this.get_currentParentObjectK(),this.$1,$0,this.$0.get_commentHtml().get_$3(),this.$0.get_addThreadNewsCheckBox().checked,$1);}else{this.$0.get_uiCommentsDisplay().$1.$2F(this.get_$2(),this.get_currentParentObjectK(),this.$0.get_uiCommentsDisplay().$1.get_$2(),this.$1,$0,this.$0.get_commentHtml().get_$3(),this.$0.get_uiCommentsDisplay().$1.get_$D(),$1);}}else if(this.$0.get_addThreadAdvancedCheckBox().checked&&this.$0.get_addThreadPrivateRadioButton().checked){Spotted.WebServices.Controls.CommentsDisplay.Service.createPrivateThread(this.get_$2(),this.get_currentParentObjectK(),this.$1,$0,this.$0.get_commentHtml().get_$3(),$1,this.$0.get_addThreadSealedCheckBox().checked,Function.createDelegate(this,this.$B),null,null,-1);}else if(this.$0.get_addThreadAdvancedCheckBox().checked&&this.$0.get_addThreadGroupRadioButton().checked){var $2=Number.parseInvariant(this.$0.get_addThreadGroupDropDown().value);Spotted.WebServices.Controls.CommentsDisplay.Service.createNewThreadInGroup($2,this.get_$2(),this.get_currentParentObjectK(),this.$1,$0,this.$0.get_commentHtml().get_$3(),this.$0.get_addThreadNewsCheckBox().checked,$1,this.$0.get_addThreadGroupPrivateCheckBox().checked,Function.createDelegate(this,this.$C),null,null,-1);}},$B:function($p0,$p1,$p2){SpottedScript.Misc.hideWaitingCursor();SpottedScript.Misc.redirect($p0);},$C:function($p0,$p1,$p2){SpottedScript.Misc.hideWaitingCursor();SpottedScript.Misc.redirect($p0);}}
SpottedScript.Controls.ThreadControl.View=function(clientId){this.clientId=clientId;}
SpottedScript.Controls.ThreadControl.View.prototype={clientId:null,get_uiCommentsDisplay:function(){return eval(this.clientId+'_uiCommentsDisplayController');},get_postCommentPanel:function(){return document.getElementById(this.clientId+'_PostCommentPanel');},get_h1:function(){return document.getElementById(this.clientId+'_H1');},get_threadWatchButtonHolder:function(){return document.getElementById(this.clientId+'_ThreadWatchButtonHolder');},get_inlineScript3:function(){return document.getElementById(this.clientId+'_InlineScript3');},get_threadFavouriteButtonP:function(){return document.getElementById(this.clientId+'_ThreadFavouriteButtonP');},get_threadFavouriteButtonHolder:function(){return document.getElementById(this.clientId+'_ThreadFavouriteButtonHolder');},get_inlineScript2:function(){return document.getElementById(this.clientId+'_InlineScript2');},get_requiredFieldValidator1:function(){return document.getElementById(this.clientId+'_RequiredFieldValidator1');},get_commentGroupMemberPanel:function(){return document.getElementById(this.clientId+'_CommentGroupMemberPanel');},get_commentGroupMemberAnchor:function(){return document.getElementById(this.clientId+'_CommentGroupMemberAnchor');},get_commentLoginPanel:function(){return document.getElementById(this.clientId+'_CommentLoginPanel');},get_commentEmailVerifyPanel:function(){return document.getElementById(this.clientId+'_CommentEmailVerifyPanel');},get_commentHtml:function(){return eval(this.clientId+'_CommentHtmlController');},get_addThreadAdvancedCheckBoxP:function(){return document.getElementById(this.clientId+'_AddThreadAdvancedCheckBoxP');},get_addThreadAdvancedCheckBox:function(){return document.getElementById(this.clientId+'_AddThreadAdvancedCheckBox');},get_addThreadAdvancedPanel:function(){return document.getElementById(this.clientId+'_AddThreadAdvancedPanel');},get_addThreadPublicRadioButtonSpan:function(){return document.getElementById(this.clientId+'_AddThreadPublicRadioButtonSpan');},get_addThreadPublicRadioButton:function(){return document.getElementById(this.clientId+'_AddThreadPublicRadioButton');},get_addThreadNewPublicRadioButtonSpan:function(){return document.getElementById(this.clientId+'_AddThreadNewPublicRadioButtonSpan');},get_addThreadNewPublicRadioButton:function(){return document.getElementById(this.clientId+'_AddThreadNewPublicRadioButton');},get_addThreadPrivateRadioButtonSpan:function(){return document.getElementById(this.clientId+'_AddThreadPrivateRadioButtonSpan');},get_addThreadPrivateRadioButton:function(){return document.getElementById(this.clientId+'_AddThreadPrivateRadioButton');},get_addThreadGroupRadioButtonSpan:function(){return document.getElementById(this.clientId+'_AddThreadGroupRadioButtonSpan');},get_addThreadGroupRadioButton:function(){return document.getElementById(this.clientId+'_AddThreadGroupRadioButton');},get_addThreadGroupDropDown:function(){return document.getElementById(this.clientId+'_AddThreadGroupDropDown');},get_addThreadGroupPrivateCheckBoxSpan:function(){return document.getElementById(this.clientId+'_AddThreadGroupPrivateCheckBoxSpan');},get_addThreadGroupPrivateCheckBox:function(){return document.getElementById(this.clientId+'_AddThreadGroupPrivateCheckBox');},get_addThreadNewsCheckBoxSpan:function(){return document.getElementById(this.clientId+'_AddThreadNewsCheckBoxSpan');},get_addThreadNewsCheckBox:function(){return document.getElementById(this.clientId+'_AddThreadNewsCheckBox');},get_addThreadSealedCheckBoxSpan:function(){return document.getElementById(this.clientId+'_AddThreadSealedCheckBoxSpan');},get_addThreadSealedCheckBox:function(){return document.getElementById(this.clientId+'_AddThreadSealedCheckBox');},get_addThreadInviteCheckBoxSpan:function(){return document.getElementById(this.clientId+'_AddThreadInviteCheckBoxSpan');},get_addThreadInviteCheckBox:function(){return document.getElementById(this.clientId+'_AddThreadInviteCheckBox');},get_addThreadInvitePanel:function(){return document.getElementById(this.clientId+'_AddThreadInvitePanel');},get_uiMultiBuddyChooser:function(){return eval(this.clientId+'_uiMultiBuddyChooserController');},get_inlineScript1:function(){return document.getElementById(this.clientId+'_InlineScript1');},get_uiThreadK:function(){return document.getElementById(this.clientId+'_uiThreadK');},get_uiParentObjectK:function(){return document.getElementById(this.clientId+'_uiParentObjectK');},get_uiParentObjectType:function(){return document.getElementById(this.clientId+'_uiParentObjectType');}}
SpottedScript.Controls.ThreadControl.Controller.registerClass('SpottedScript.Controls.ThreadControl.Controller');
SpottedScript.Controls.ThreadControl.View.registerClass('SpottedScript.Controls.ThreadControl.View');