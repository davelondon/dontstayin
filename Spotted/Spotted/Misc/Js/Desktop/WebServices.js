// WebServices.js
(function(){
Type.registerNamespace('Spotted');Spotted.GenericPage=function(){}
Spotted.GenericPage.clientRequest=function(typeName,methodName,args,success,failure,userContext,timeout){var $0={};$0['typeName']=typeName;$0['methodName']=methodName;$0['args']=args;var $1=Js.Library.WebServiceHelper.options('ClientRequest','/GenericPage.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'ClientRequest');};$.ajax($1);}
Type.registerNamespace('Spotted.WebServices');Spotted.WebServices.AutoComplete=function(){}
Spotted.WebServices.AutoComplete.getTags=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetTags','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetTags');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getTagSearchString=function(prefixText,count,success,failure,userContext,timeout){var $0={};$0['prefixText']=prefixText;$0['count']=count;var $1=Js.Library.WebServiceHelper.options('GetTagSearchString','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetTagSearchString');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getGroupMembers=function(maxNumberOfItemsToGet,text,parameters,success,failure,userContext,timeout){var $0={};$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['text']=text;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetGroupMembers','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetGroupMembers');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getUsrsPublic=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetUsrsPublic','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetUsrsPublic');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getBuddiesThenUsrs=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetBuddiesThenUsrs','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetBuddiesThenUsrs');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getBuddies=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetBuddies','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetBuddies');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getBrands=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetBrands','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetBrands');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getPromotersWithK=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetPromotersWithK','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetPromotersWithK');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getUsersWithK=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetUsersWithK','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetUsersWithK');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getPlacesEnabled=function(maxNumberOfItemsToGet,text,parameters,success,failure,userContext,timeout){var $0={};$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['text']=text;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetPlacesEnabled','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetPlacesEnabled');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getVenuesFull=function(maxNumberOfItemsToGet,text,parameters,success,failure,userContext,timeout){var $0={};$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['text']=text;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetVenuesFull','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetVenuesFull');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getVenues=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetVenues','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetVenues');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getEvents=function(maxNumberOfItemsToGet,text,parameters,success,failure,userContext,timeout){var $0={};$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['text']=text;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetEvents','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetEvents');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getPlaces=function(maxNumberOfItemsToGet,text,parameters,success,failure,userContext,timeout){var $0={};$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['text']=text;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetPlaces','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetPlaces');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getSiteSearchResults=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetSiteSearchResults','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetSiteSearchResults');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getGroups=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetGroups','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetGroups');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getGroupsNoBrands=function(maxNumberOfItemsToGet,text,parameters,success,failure,userContext,timeout){var $0={};$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['text']=text;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetGroupsNoBrands','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetGroupsNoBrands');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getObjects=function(text,maxNumberOfItemsToGet,parameters,success,failure,userContext,timeout){var $0={};$0['text']=text;$0['maxNumberOfItemsToGet']=maxNumberOfItemsToGet;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetObjects','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetObjects');};$.ajax($1);}
Spotted.WebServices.AutoComplete.getCountries=function(get,text,parameters,success,failure,userContext,timeout){var $0={};$0['get']=get;$0['text']=text;$0['parameters']=parameters;var $1=Js.Library.WebServiceHelper.options('GetCountries','/WebServices/AutoComplete.asmx',$0,failure,userContext,timeout);$1.success=function($p1_0,$p1_1,$p1_2){
success(($p1_0)['d'],userContext,'GetCountries');};$.ajax($1);}
Spotted.GenericPage.registerClass('Spotted.GenericPage');Spotted.WebServices.AutoComplete.registerClass('Spotted.WebServices.AutoComplete');})();// This script was generated using Script# v0.7.4.0