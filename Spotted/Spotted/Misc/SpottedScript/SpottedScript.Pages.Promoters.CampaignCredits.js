Type.registerNamespace('SpottedScript.Pages.Promoters.CampaignCredits');
SpottedScript.Pages.Promoters.CampaignCredits.View=function(clientId){SpottedScript.Pages.Promoters.CampaignCredits.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Pages.Promoters.CampaignCredits.View.prototype={clientId:null,get_promoterIntro:function(){return document.getElementById(this.clientId+'_PromoterIntro');},get_h1Title:function(){return document.getElementById(this.clientId+'_H1Title');},get_creditsPanel:function(){return document.getElementById(this.clientId+'_CreditsPanel');},get_selectedCredits:function(){return document.getElementById(this.clientId+'_SelectedCredits');},get_creditsTable:function(){return document.getElementById(this.clientId+'_CreditsTable');},get_buyButton:function(){return document.getElementById(this.clientId+'_BuyButton');},get_ensureCampaignCreditsSelectedValidator:function(){return document.getElementById(this.clientId+'_EnsureCampaignCreditsSelectedValidator');},get_customCampaignCreditsCustomValidator:function(){return document.getElementById(this.clientId+'_CustomCampaignCreditsCustomValidator');},get_paymentPanel:function(){return document.getElementById(this.clientId+'_PaymentPanel');},get_payment:function(){return document.getElementById(this.clientId+'_Payment');},get_adminPriceEditP:function(){return document.getElementById(this.clientId+'_AdminPriceEditP');},get_fixPriceTextBox:function(){return document.getElementById(this.clientId+'_FixPriceTextBox');},get_fixPriceExVatButton:function(){return document.getElementById(this.clientId+'_FixPriceExVatButton');},get_fixPriceIncVatButton:function(){return document.getElementById(this.clientId+'_FixPriceIncVatButton');},get_fixPriceDiscountButton:function(){return document.getElementById(this.clientId+'_FixPriceDiscountButton');},get_clearFixDiscountButton:function(){return document.getElementById(this.clientId+'_ClearFixDiscountButton');},get_backToCreditOptionsButton:function(){return document.getElementById(this.clientId+'_BackToCreditOptionsButton');},get_successPanel:function(){return document.getElementById(this.clientId+'_SuccessPanel');},get_customRadioButton:function(){return document.getElementById(this.clientId+'_CustomRadioButton');},get_customCreditsTextBox:function(){return document.getElementById(this.clientId+'_CustomCreditsTextBox');},get_customPriceLabel:function(){return document.getElementById(this.clientId+'_CustomPriceLabel');},get_customDiscountLabel:function(){return document.getElementById(this.clientId+'_CustomDiscountLabel');},get_customTotalTextBox:function(){return document.getElementById(this.clientId+'_CustomTotalTextBox');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Pages.Promoters.CampaignCredits.View.registerClass('SpottedScript.Pages.Promoters.CampaignCredits.View',SpottedScript.Pages.Promoters.PromoterUserControl.View);