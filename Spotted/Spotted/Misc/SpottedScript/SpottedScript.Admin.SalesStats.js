Type.registerNamespace('SpottedScript.Admin.SalesStats');
SpottedScript.Admin.SalesStats.View=function(clientId){SpottedScript.Admin.SalesStats.View.initializeBase(this,[clientId]);this.clientId=clientId;}
SpottedScript.Admin.SalesStats.View.prototype={clientId:null,get_callsDataGrid:function(){return document.getElementById(this.clientId+'_CallsDataGrid');},get_dailySalesDataGrid:function(){return document.getElementById(this.clientId+'_DailySalesDataGrid');},get_monthlySalesDataGrid:function(){return document.getElementById(this.clientId+'_MonthlySalesDataGrid');},get_genericContainerPage:function(){return document.getElementById(this.clientId+'_GenericContainerPage');}}
SpottedScript.Admin.SalesStats.View.registerClass('SpottedScript.Admin.SalesStats.View',SpottedScript.AdminUserControl.View);