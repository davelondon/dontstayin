Type.registerNamespace('SpottedScript.Controls.MapBrowser.Map');
SpottedScript.Controls.MapBrowser.Map.Controller=function(view){this.view=view;GEvent.addListener(this.view.get_uiMapControl().gmap2,'moveend',Function.createDelegate(this,function(){
Utils.Trace.write(this.view.get_uiMapControl().gmap2.getBounds().getNorthEast().lat()+','+this.view.get_uiMapControl().gmap2.getBounds().getNorthEast().lng()+','+this.view.get_uiMapControl().gmap2.getBounds().getSouthWest().lat()+','+this.view.get_uiMapControl().gmap2.getBounds().getSouthWest().lng()+': ZOOM:'+this.view.get_uiMapControl().gmap2.getBoundsZoomLevel(this.view.get_uiMapControl().gmap2.getBounds()));if(this.$0!=null){this.$0(this,null);}}));}
SpottedScript.Controls.MapBrowser.Map.Controller.prototype={view:null,get_parameters:function(){var $0={};var $1=this.view.get_uiMapControl().gmap2.getBounds();$0['north']=$1.getNorthEast().lat();$0['south']=$1.getSouthWest().lat();$0['east']=$1.getNorthEast().lng();$0['west']=$1.getSouthWest().lng();return $0;},$0:null,get_parametersUpdated:function(){return this.$0;},set_parametersUpdated:function(value){this.$0=value;return value;}}
SpottedScript.Controls.MapBrowser.Map.View=function(clientId){this.clientId=clientId;}
SpottedScript.Controls.MapBrowser.Map.View.prototype={clientId:null,get_uiMapControl:function(){return eval(this.clientId+'_uiMapControlController');}}
SpottedScript.Controls.MapBrowser.Map.Controller.registerClass('SpottedScript.Controls.MapBrowser.Map.Controller',null,SpottedScript.Controls.PagedData._IParameterSource);
SpottedScript.Controls.MapBrowser.Map.View.registerClass('SpottedScript.Controls.MapBrowser.Map.View');