// Photos.js
(function($){
Type.registerNamespace('Js.Pages.Groups.Photos');Js.Pages.Groups.Photos.Controller=function(view){Js.Pages.Groups.Photos.Controller.initializeBase(this);this.$1_0=view;this.setupController();}
Js.Pages.Groups.Photos.Controller.prototype={$1_0:null,get_photoControl:function(){return this.$1_0.get_uiPhotoControl();},get_photoBrowser:function(){return this.$1_0.get_uiPhotoBrowser();},get_threadControl:function(){return this.$1_0.get_uiThreadControl();},$1_1:null,get_photoProvider:function(){return this.$1_1||(this.$1_1=new Js.Controls.PhotoBrowser.GroupPhotoProvider(parseInt(this.$1_0.get_uiGroupK().value)));},get_latestChatController:function(){return this.$1_0.get_uiLatestChat();}}
Js.Pages.Groups.Photos.View=function(clientId){Js.Pages.Groups.Photos.View.initializeBase(this,[clientId]);this.clientId=clientId;}
Js.Pages.Groups.Photos.View.prototype={clientId:null,get_uiTitle:function(){if(this.$2_0==null){this.$2_0=document.getElementById(this.clientId+'_uiTitle');}return this.$2_0;},$2_0:null,get_uiTitleJ:function(){if(this.$2_1==null){this.$2_1=$('#'+this.clientId+'_uiTitle');}return this.$2_1;},$2_1:null,get_uiPhotoBrowser:function(){return eval(this.clientId+'_uiPhotoBrowserController');},get_uiPhotoControl:function(){return eval(this.clientId+'_uiPhotoControlController');},get_uiUpdatePanel:function(){if(this.$2_2==null){this.$2_2=document.getElementById(this.clientId+'_uiUpdatePanel');}return this.$2_2;},$2_2:null,get_uiUpdatePanelJ:function(){if(this.$2_3==null){this.$2_3=$('#'+this.clientId+'_uiUpdatePanel');}return this.$2_3;},$2_3:null,get_uiLatestChat:function(){return eval(this.clientId+'_uiLatestChatController');},get_uiThreadControl:function(){return eval(this.clientId+'_uiThreadControlController');},get_uiGroupK:function(){if(this.$2_4==null){this.$2_4=document.getElementById(this.clientId+'_uiGroupK');}return this.$2_4;},$2_4:null,get_uiGroupKJ:function(){if(this.$2_5==null){this.$2_5=$('#'+this.clientId+'_uiGroupK');}return this.$2_5;},$2_5:null,get_genericContainerPage:function(){if(this.$2_6==null){this.$2_6=document.getElementById(this.clientId+'_GenericContainerPage');}return this.$2_6;},$2_6:null,get_genericContainerPageJ:function(){if(this.$2_7==null){this.$2_7=$('#'+this.clientId+'_GenericContainerPage');}return this.$2_7;},$2_7:null}
Js.Pages.Groups.Photos.Controller.registerClass('Js.Pages.Groups.Photos.Controller',Js.Controls.PhotoBrowser.PhotosController);Js.Pages.Groups.Photos.View.registerClass('Js.Pages.Groups.Photos.View',Js.DsiUserControl.View);})(jQuery);// This script was generated using Script# v0.7.4.0