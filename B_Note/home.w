<!DOCTYPE HTML>
<html style="width:100%;height:100%" class="no-js">
    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
        <script src="../system/lib/base/modernizr-2.8.3.min.js"></script>
		<script id="__varReplace">
    	
    	    	window.__justep = window.__justep || {};
				window.__justep.isDebug = false;
				window.__justep.__packageMode = "1";
				window.__justep.__isPackage = true;;
				window.__justep.url = location.href;
				window.__justep.versionInfo = {};
		 
    	</script>
        <script id="__updateVersion">
        
				(function(url, mode){
					if (("@"+"mode@") === mode) mode = "3";
					if (("@"+"versionUrl@") === url) url = "system/service/common/app.j";
					if ((mode!=="1" && (mode!="2") && (mode!="3"))) return;
					var async = (mode=="1");
					var x5Version = "noApp";
					var x5AppAgents = /x5app\/([0-9.]*)/.exec(navigator.userAgent);
					if(x5AppAgents && x5AppAgents.length > 1){
					   	x5Version = x5AppAgents[1] || "";
					} 
					function createXhr(){
						try {	
							return new XMLHttpRequest();
						}catch (tryMS) {	
							var version = ["MSXML2.XMLHttp.6.0",
							               "MSXML2.XMLHttp.3.0",
							               "MSXML2.XMLHttp",
							               "Miscrosoft.XMLHTTP"];
							for(var i = 0; i < version.length; i++){
								try{
							    	return new ActiveXObject(version[i]);
								}catch(e){}
							}
						}
						throw new Error("您的系统或浏览器不支持XHR对象！");
					}
					
					function createGuid(){	
						var guid = '';	
						for (var i = 1; i <= 32; i++){		
							var n = Math.floor(Math.random()*16.0).toString(16);		
							guid += n;		
							if((i==8)||(i==12)||(i==16)||(i==20))			
								guid += '-';	
						}	
						return guid;
					}
					
					function parseUrl(href){
						href = href.split("#")[0];
						var items = href.split("?");
						href = items[0];
						var query = items[1] || "";
						items = href.split("/");
						var baseItems = [];
						var pathItems = [];
						var isPath = false;
						for (var i=0; i<items.length; i++){
							if (mode == "3"){
								if (items[i] && (items[i].indexOf("v_") === 0) 
										&& (items[i].indexOf("l_") !== -1)
										&& (items[i].indexOf("s_") !== -1)
										&& (items[i].indexOf("d_") !== -1)
										|| (items[i]=="v_")){
									isPath = true;
									continue;
								}
							}else{
								if (items[i] && (items[i].indexOf("v-")===0) && (items[i].charAt(items[i].length-1)=="-") ){
									isPath = true;
									continue;
								}
							}
							if (isPath){
								pathItems.push(items[i]);
							}else{
								baseItems.push(items[i]);	
							}
							
						}
						var base = baseItems.join("/");
						if (base.charAt(base.length-1)!=="/") base += "/";
						
						var path = pathItems.join("/");
						if (path.charAt(0) !== "/") path = "/" + path;
						return [base, path, query];
					}
					
					
					var items = parseUrl(window.location.href);
					var base = items[0];
					var path = items[1];
					var query = items[2];
					var xhr = createXhr();
					url += ((url.indexOf("?")!=-1) ? "&" : "?") +"_=" + createGuid();
					if (mode === "3"){
						url += "&url=" + path;
						if (query)
							url += "&" + query;
					}
					xhr.open('GET', base + url, async);
					
					if (async){
						xhr.onreadystatechange=function(){
							if((xhr.readyState == 4) && (xhr.status == 200) && xhr.responseText){
								var versionInfo = JSON.parse(xhr.responseText);
								window.__justep.versionInfo = versionInfo;
								window.__justep.versionInfo.baseUrl = base;
								if (window.__justep.url.indexOf(versionInfo.resourceInfo.version) == -1){
									versionInfo.resourceInfo.isNewVersion = true;
								};
							}
						}
					}
					
					try{
						xhr.send(null);
						if (!async && (xhr.status == 200) && xhr.responseText){
							var versionInfo = JSON.parse(xhr.responseText);
							window.__justep.versionInfo = versionInfo;
							window.__justep.versionInfo.baseUrl = base;
							if ((mode==="3") && window.__justep.isDebug){
								/* 模式3且是调试模式不重定向 */
							}else{
								if (versionInfo.resourceInfo && versionInfo.resourceInfo.version && (window.__justep.url.indexOf(versionInfo.resourceInfo.version) == -1)){
									if (query){
										path = path + "?" + query;
									}
									path = versionInfo.resourceInfo.indexURL || path; /* 如果返回indexPath则使用indexPath，否则使用当前的path */
									var indexUrl = versionInfo.baseUrl + versionInfo.resourceInfo.version + path;
									window.location.href = indexUrl;
								}
							}
						}
					}catch(e2){}
				}("appMetadata_in_server.json", "1"));
                 
        </script>
    <link rel="stylesheet" href="../system/components/bootstrap.min.css" include="$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme"><link rel="stylesheet" href="../system/components/comp.min.css" include="$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables"></head>
	
    <body style="width:100%;height:100%;margin: 0;">
        <script intro="none"></script>
    	<div id="applicationHost" class="applicationHost" style="width:100%;height:100%;" __component-context__="block"><div xid="window" class="window c3uQfUn" component="$model/UI2/system/components/justep/window/window" design="device:m;" data-bind="component:{name:'$model/UI2/system/components/justep/window/window'}" __cid="c3uQfUn" components="$model/UI2/system/components/justep/model/model,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/button/button,$model/UI2/system/components/justep/scrollView/scrollView,$model/UI2/system/components/justep/menu/menu,$model/UI2/system/components/justep/panel/child,$model/UI2/system/components/justep/panel/panel,$model/UI2/system/components/justep/popOver/popOver,$model/UI2/system/components/justep/contents/content,$model/UI2/system/components/justep/windowContainer/windowContainer,$model/UI2/system/components/justep/popMenu/popMenu,$model/UI2/system/components/justep/titleBar/titleBar,$model/UI2/system/components/justep/contents/contents,$model/UI2/system/components/justep/data/data,$model/UI2/system/components/justep/window/window,$model/UI2/system/components/justep/button/buttonGroup,">
  <style>.shadow.c3uQfUn{-webkit-box-shadow: rgb(102, 102, 102) 0px 0px 10px; -moz-box-shadow: rgb(102, 102, 102) 0px 0px 10px; box-shadow: rgb(102, 102, 102) 0px 0px 10px; background: rgb(238, 255, 153)} .yj.c3uQfUn{border: 8px solid whitesmoke; -moz-border-radius: 15px; -webkit-border-radius: 15px; border-radius: 15px} .gridtable.c3uQfUn{font-family: verdana, arial, sans-serif; font-size: 11px; color: rgb(51, 51, 51); border-width: 1px; border-color: whitesmoke; border-collapse: collapse} .gridtable.c3uQfUn th.c3uQfUn{border-width: 1px; padding: 8px; border-style: solid; border-color: whitesmoke} .gridtable.c3uQfUn td.c3uQfUn{border-width: 1px; padding: 8px; border-style: solid; border-color: whitesmoke} .yj-small.c3uQfUn{border: 4px solid whitesmoke; -moz-border-radius: 7.5px; -webkit-border-radius: 7.5px; border-radius: 7.5px} .yj-x-small.c3uQfUn{border: 2px solid whitesmoke; -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px} .yj-small-noboarder.c3uQfUn{border: 0px solid whitesmoke; -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px} .two.c3uQfUn:hover{-webkit-transform: rotateY(360deg); transition: all 0.8s ease-in-out}</style>  
  <div component="$model/UI2/system/components/justep/model/model" xid="model" style="display:none" data-bind="component:{name:'$model/UI2/system/components/justep/model/model'}" data-events="onLoad:modelLoad;onParamsReceive:modelParamsReceive" __cid="c3uQfUn" class="c3uQfUn"></div>  
  <div component="$model/UI2/system/components/justep/panel/panel" class="x-panel x-full p42b5e5562b4d4a679cce168d4ff8666b-iosstatusbar c3uQfUn" xid="mainPanel" data-bind="component:{name:'$model/UI2/system/components/justep/panel/panel'}" __cid="c3uQfUn"> 
    <div class="x-panel-content c3uQfUn" xid="mainContent" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="c3uQfUn">
      <div component="$model/UI2/system/components/justep/contents/contents" class="x-contents x-full c3uQfUn" xid="contents" data-bind="component:{name:'$model/UI2/system/components/justep/contents/contents'}" data-config="{&#34;active&#34;:0}" __cid="c3uQfUn"> 
        <div class="x-contents-content active c3uQfUn" xid="noteContent" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" __cid="c3uQfUn">
          <div component="$model/UI2/system/components/justep/panel/panel" class="x-panel x-full p1ab9e0b0eab043aa801b7dd547895206-iosstatusbar c3uQfUn" xid="notePanel" style="background-color:#e4c6d0;" data-bind="component:{name:'$model/UI2/system/components/justep/panel/panel'}" __cid="c3uQfUn"> 
            <div class="x-panel-top c3uQfUn" xid="top1" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" data-config="{&#34;height&#34;:45}" __cid="c3uQfUn"> 
              <div component="$model/UI2/system/components/justep/titleBar/titleBar" class="x-titlebar c3uQfUn" xid="titleBar" style="background-color:#e4c6d0;height:100%;" data-bind="component:{name:'$model/UI2/system/components/justep/titleBar/titleBar'}" __cid="c3uQfUn"> 
                <div class="x-titlebar-left c3uQfUn" xid="left1" __cid="c3uQfUn"> 
                  <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link c3uQfUn" xid="button6" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;linear linear-piechart&#34;}" __cid="c3uQfUn"> 
                    <i xid="i6" class="linear linear-piechart c3uQfUn" __cid="c3uQfUn"></i>  
                    <span xid="span6" __cid="c3uQfUn" class="c3uQfUn"></span>
                  </a>
                </div>  
                <div class="x-titlebar-title c3uQfUn" xid="title1" __cid="c3uQfUn"></div>  
                <div class="x-titlebar-right  c3uQfUn" xid="right1" __cid="c3uQfUn">
                  <div class="empty c3uQfUn" __cid="c3uQfUn"></div>
                  <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-only-icon c3uQfUn" xid="button1" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:button1Click" data-config="{&#34;icon&#34;:&#34;linear linear-menu&#34;,&#34;label&#34;:&#34;button&#34;}" __cid="c3uQfUn"> 
                    <i xid="i5" class="linear linear-menu c3uQfUn" __cid="c3uQfUn"></i>  
                    <span xid="span5" __cid="c3uQfUn" class="c3uQfUn"></span>
                  </a>
                </div> 
              </div> 
            </div>  
            <div class="x-panel-content c3uQfUn" xid="content2" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="c3uQfUn"> 
              <div xid="div3" style="height:3%;" __cid="c3uQfUn" class="c3uQfUn"></div>  
              <div id="bg_div" xid="div4" style="height:94%;width:90%;background-size:contain;background-color:white;" class="center-block shadow yj c3uQfUn" __cid="c3uQfUn"> 
                <div xid="div7" style="height: 100%;" __cid="c3uQfUn" class="c3uQfUn"> 
                  <div component="$model/UI2/system/components/justep/panel/panel" class="x-panel p74c0e7132eb747d1aee071eb276b53c7-iosstatusbar c3uQfUn" xid="panel1" style="height:100%;" data-bind="component:{name:'$model/UI2/system/components/justep/panel/panel'}" __cid="c3uQfUn"> 
                    <div class="x-panel-content  x-scroll-view c3uQfUn" xid="content1" _xid="C7310D48A6D00001B3AF1AB016C01813" style="bottom: 0px; top: 0px;" supportpulldown="true" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="c3uQfUn"> 
                      <div class="center-block x-scroll c3uQfUn" component="$model/UI2/system/components/justep/scrollView/scrollView" xid="scrollView5" data-bind="component:{name:'$model/UI2/system/components/justep/scrollView/scrollView'}" __cid="c3uQfUn"> 
                        <div xid="div29" style="height:2%;" __cid="c3uQfUn" class="c3uQfUn"></div>
                        <div class="center-block x-scroll-content c3uQfUn" xid="tablediv" style="text-align:center;width:95%;" __cid="c3uQfUn"> 
                          <table class="gridtable c3uQfUn" style="width:100%;text-align:center;" id="tablediv" __cid="c3uQfUn"></table> 
                        </div>  
                        <div xid="div30" style="height:2%;" __cid="c3uQfUn" class="c3uQfUn"></div>
                      </div>
                    </div>  
                    <div xid="div12" style="height:86%;" __cid="c3uQfUn" class="c3uQfUn"></div>
                    <div xid="div6" style="height:14%;width:90%;" class="center-block c3uQfUn" __cid="c3uQfUn"> 
                      <div xid="div22" style="height:100%;width:88%;float:left;" __cid="c3uQfUn" class="c3uQfUn"></div>
                      <a component="$model/UI2/system/components/justep/button/button" class="shadow btn btn-link btn-only-icon pull-right c3uQfUn" xid="button3" style="position:fixed;height:40;width:40;border-radius:50%;background-color:whitesmoke;" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;linear linear-arrowleftcircle&#34;,&#34;label&#34;:&#34;button&#34;}" __cid="c3uQfUn"> 
                        <i xid="i8" class="linear linear-arrowleftcircle c3uQfUn" __cid="c3uQfUn"></i>  
                        <span xid="span8" __cid="c3uQfUn" class="c3uQfUn"></span>
                      </a>
                    </div>  
                    <style __cid="c3uQfUn" class="c3uQfUn">.x-panel.p74c0e7132eb747d1aee071eb276b53c7-iosstatusbar >.x-panel-top {height: 0px;}.x-panel.p74c0e7132eb747d1aee071eb276b53c7-iosstatusbar >.x-panel-content { top: 0px;bottom: nullpx;}.x-panel.p74c0e7132eb747d1aee071eb276b53c7-iosstatusbar >.x-panel-bottom {height: nullpx;}.iosstatusbar .x-panel.p74c0e7132eb747d1aee071eb276b53c7-iosstatusbar >.x-panel-top,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.p74c0e7132eb747d1aee071eb276b53c7-iosstatusbar >.x-panel-top {height: 0px;}.iosstatusbar .x-panel.p74c0e7132eb747d1aee071eb276b53c7-iosstatusbar >.x-panel-content,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.p74c0e7132eb747d1aee071eb276b53c7-iosstatusbar >.x-panel-content { top: 0px;}.iosstatusbar .x-panel .x-panel-content .x-panel.p74c0e7132eb747d1aee071eb276b53c7-iosstatusbar >.x-panel-top {height: 0px;}.iosstatusbar .x-panel .x-panel-content .x-panel.p74c0e7132eb747d1aee071eb276b53c7-iosstatusbar >.x-panel-content {top: 0px;}</style>
                  </div>
                </div>
              </div>  
              <div xid="div5" style="height:3%;" __cid="c3uQfUn" class="c3uQfUn"></div> 
            </div>  
            <style __cid="c3uQfUn" class="c3uQfUn">.x-panel.p1ab9e0b0eab043aa801b7dd547895206-iosstatusbar >.x-panel-top {height: 45px;}.x-panel.p1ab9e0b0eab043aa801b7dd547895206-iosstatusbar >.x-panel-content { top: 45px;bottom: nullpx;}.x-panel.p1ab9e0b0eab043aa801b7dd547895206-iosstatusbar >.x-panel-bottom {height: nullpx;}.iosstatusbar .x-panel.p1ab9e0b0eab043aa801b7dd547895206-iosstatusbar >.x-panel-top,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.p1ab9e0b0eab043aa801b7dd547895206-iosstatusbar >.x-panel-top {height: 65px;}.iosstatusbar .x-panel.p1ab9e0b0eab043aa801b7dd547895206-iosstatusbar >.x-panel-content,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.p1ab9e0b0eab043aa801b7dd547895206-iosstatusbar >.x-panel-content { top: 65px;}.iosstatusbar .x-panel .x-panel-content .x-panel.p1ab9e0b0eab043aa801b7dd547895206-iosstatusbar >.x-panel-top {height: 45px;}.iosstatusbar .x-panel .x-panel-content .x-panel.p1ab9e0b0eab043aa801b7dd547895206-iosstatusbar >.x-panel-content {top: 45px;}</style>
          </div>
        </div>  
        <div class="x-contents-content c3uQfUn" xid="shareContent" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" __cid="c3uQfUn">
          <div component="$model/UI2/system/components/justep/windowContainer/windowContainer" class="x-window-container c3uQfUn" xid="shareContainer" __component-context__="block" data-bind="component:{name:'$model/UI2/system/components/justep/windowContainer/windowContainer'}" __cid="c3uQfUn"></div>
        </div>  
        <div class="x-contents-content c3uQfUn" xid="friendContent" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" __cid="c3uQfUn">
          <div component="$model/UI2/system/components/justep/windowContainer/windowContainer" class="x-window-container c3uQfUn" xid="friendContainer" __component-context__="block" data-bind="component:{name:'$model/UI2/system/components/justep/windowContainer/windowContainer'}" __cid="c3uQfUn"></div>
        </div>  
        <div class="x-contents-content c3uQfUn" xid="myContent" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" __cid="c3uQfUn"> 
          <div component="$model/UI2/system/components/justep/panel/panel" class="x-panel x-full pc71146a376be409fb2b5dc03100ced19-iosstatusbar c3uQfUn" xid="myPanel" data-bind="component:{name:'$model/UI2/system/components/justep/panel/panel'}" __cid="c3uQfUn"> 
            <div class="x-panel-top c3uQfUn" xid="top3" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="c3uQfUn"> 
              <div component="$model/UI2/system/components/justep/titleBar/titleBar" class="x-titlebar c3uQfUn" xid="titleBar" style="background-color:#e4c6d0;height:100%;" data-bind="component:{name:'$model/UI2/system/components/justep/titleBar/titleBar'}" __cid="c3uQfUn"> 
                <div class="x-titlebar-left c3uQfUn" xid="left1" __cid="c3uQfUn"> 
                  <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link c3uQfUn" xid="button6" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;linear linear-piechart&#34;}" __cid="c3uQfUn"> 
                    <i xid="i6" class="linear linear-piechart c3uQfUn" __cid="c3uQfUn"></i>  
                    <span xid="span6" __cid="c3uQfUn" class="c3uQfUn"></span>
                  </a>
                </div>  
                <div class="x-titlebar-title c3uQfUn" xid="title1" __cid="c3uQfUn"></div>  
                <div class="x-titlebar-right  c3uQfUn" xid="right1" __cid="c3uQfUn">
                  <div class="empty c3uQfUn" __cid="c3uQfUn"></div>
                </div> 
              </div> 
            </div>  
            <div class="x-panel-content c3uQfUn" xid="content3" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="c3uQfUn"> 
              <div style="height:30%;background-color:#e4c6d0;" class="text-center c3uQfUn" __cid="c3uQfUn"> 
                <div style="height:60%;" __cid="c3uQfUn" class="c3uQfUn"> 
                  <img alt="" xid="headimg" class="img-circle img-thumbnail  c3uQfUn" style="max-width:79px;max-height:79px;height:70px;width:70px;background-color:whitesmoke;" src="../dragon_app/img/man/3.png" __cid="c3uQfUn" data-bind="attr:{src:$model.user.val(&#34;headimgURL&#34;)}"> 
                </div>  
                <div style="height:17%;" __cid="c3uQfUn" class="c3uQfUn"> 
                  <label xid="nickName" class="text-white c3uQfUn" style="font-weight:400;" __cid="c3uQfUn" data-bind="text:$model.user.val(&#34;nickName&#34;)">亲，您还没有登录</label> 
                </div>  
                <div style="height:23%;" __cid="c3uQfUn" class="c3uQfUn"> 
                  <label xid="label2" style="font-size:xx-small;font-weight:200;height:80%;width:60%;" class="center-block c3uQfUn" __cid="c3uQfUn" data-bind="text:$model.user.val(&#34;userIntro&#34;)">label</label> 
                </div> 
              </div>
              <div style="height:70%;" __cid="c3uQfUn" class="c3uQfUn"> 
                <div xid="div2" style="height:8%;text-align:center;" __cid="c3uQfUn" class="c3uQfUn"></div>  
                <ul xid="ul1" __cid="c3uQfUn" class="c3uQfUn"> 
                  <li class="list-group-item c3uQfUn" xid="li1" __cid="c3uQfUn"> 
                    <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right c3uQfUn" xid="button12" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;icon-ios7-arrow-right&#34;,&#34;label&#34;:&#34;button&#34;}" __cid="c3uQfUn"> 
                      <i xid="i18" class="icon-ios7-arrow-right text-muted c3uQfUn" __cid="c3uQfUn"></i>  
                      <span xid="span17" __cid="c3uQfUn" class="c3uQfUn"></span> 
                    </a>  
                    <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon c3uQfUn" xid="button13" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;linear linear-lock&#34;}" __cid="c3uQfUn"> 
                      <i xid="i26" class="icon-link text-warning linear linear-lock c3uQfUn" __cid="c3uQfUn"></i>  
                      <span xid="span18" __cid="c3uQfUn" class="c3uQfUn"></span> 
                    </a>  
                    <span xid="span16" style="font-size:xx-small;" __cid="c3uQfUn" class="c3uQfUn">密码修改</span> 
                  </li>  
                  <li class="list-group-item c3uQfUn" xid="li2" __cid="c3uQfUn" data-bind="event:{click:$model._callModelFn.bind($model, 'li2Click')}"> 
                    <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right c3uQfUn" xid="button14" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;icon-ios7-arrow-right&#34;,&#34;label&#34;:&#34;button&#34;}" __cid="c3uQfUn"> 
                      <i xid="i27" class="icon-ios7-arrow-right text-muted c3uQfUn" __cid="c3uQfUn"></i>  
                      <span xid="span20" __cid="c3uQfUn" class="c3uQfUn"></span> 
                    </a>  
                    <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon c3uQfUn" xid="button15" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;icon-clipboard&#34;}" __cid="c3uQfUn"> 
                      <i xid="i28" class="icon-clipboard c3uQfUn" __cid="c3uQfUn"></i>  
                      <span xid="span21" __cid="c3uQfUn" class="c3uQfUn"></span> 
                    </a>  
                    <span xid="span19" style="font-size:xx-small;" __cid="c3uQfUn" class="c3uQfUn">个人信息修改</span> 
                  </li> 
                </ul>  
                <div xid="div1" style="height:5%;" __cid="c3uQfUn" class="c3uQfUn"></div>
                <ul xid="ul2" __cid="c3uQfUn" class="c3uQfUn"> 
                  <li class="list-group-item c3uQfUn" xid="li3" __cid="c3uQfUn"> 
                    <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right c3uQfUn" xid="button16" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;icon-ios7-arrow-right&#34;,&#34;label&#34;:&#34;button&#34;}" __cid="c3uQfUn"> 
                      <i xid="i29" class="icon-ios7-arrow-right text-muted c3uQfUn" __cid="c3uQfUn"></i>  
                      <span xid="span23" __cid="c3uQfUn" class="c3uQfUn"></span> 
                    </a>  
                    <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon c3uQfUn" xid="button17" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;linear linear-clouddownload&#34;}" __cid="c3uQfUn"> 
                      <i xid="i30" class="text-danger linear linear-clouddownload c3uQfUn" __cid="c3uQfUn"></i>  
                      <span xid="span24" __cid="c3uQfUn" class="c3uQfUn"></span> 
                    </a>  
                    <span xid="span22" style="font-size:xx-small;" __cid="c3uQfUn" class="c3uQfUn">设置</span> 
                  </li>
                </ul> 
              </div> 
            </div>  
            <style __cid="c3uQfUn" class="c3uQfUn">.x-panel.pc71146a376be409fb2b5dc03100ced19-iosstatusbar >.x-panel-top {height: 48px;}.x-panel.pc71146a376be409fb2b5dc03100ced19-iosstatusbar >.x-panel-content { top: 48px;bottom: nullpx;}.x-panel.pc71146a376be409fb2b5dc03100ced19-iosstatusbar >.x-panel-bottom {height: nullpx;}.iosstatusbar .x-panel.pc71146a376be409fb2b5dc03100ced19-iosstatusbar >.x-panel-top,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.pc71146a376be409fb2b5dc03100ced19-iosstatusbar >.x-panel-top {height: 68px;}.iosstatusbar .x-panel.pc71146a376be409fb2b5dc03100ced19-iosstatusbar >.x-panel-content,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.pc71146a376be409fb2b5dc03100ced19-iosstatusbar >.x-panel-content { top: 68px;}.iosstatusbar .x-panel .x-panel-content .x-panel.pc71146a376be409fb2b5dc03100ced19-iosstatusbar >.x-panel-top {height: 48px;}.iosstatusbar .x-panel .x-panel-content .x-panel.pc71146a376be409fb2b5dc03100ced19-iosstatusbar >.x-panel-content {top: 48px;}</style>
          </div>
        </div>
      </div>
    </div>  
    <div class="x-panel-bottom c3uQfUn" xid="bottom1" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" data-config="{&#34;height&#34;:55}" __cid="c3uQfUn">
      <div component="$model/UI2/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified c3uQfUn" xid="buttonGroup1" style="height:100%;width:100%;" data-bind="component:{name:'$model/UI2/system/components/justep/button/buttonGroup'}" data-config="{&#34;tabbed&#34;:true}" __cid="c3uQfUn">
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default btn-icon-top c3uQfUn" xid="note" style="height:100%;" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;linear linear-code&#34;,&#34;label&#34;:&#34;记事本&#34;,&#34;target&#34;:&#34;noteContent&#34;}" __cid="c3uQfUn"> 
          <i xid="i1" class="linear linear-code c3uQfUn" __cid="c3uQfUn"></i>  
          <span xid="span1" __cid="c3uQfUn" class="c3uQfUn">记事本</span>
        </a>  
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default btn-icon-top c3uQfUn" xid="share" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;linear linear-link&#34;,&#34;label&#34;:&#34;记事分享&#34;,&#34;target&#34;:&#34;shareContent&#34;}" __cid="c3uQfUn"> 
          <i xid="i2" class="linear linear-link c3uQfUn" __cid="c3uQfUn"></i>  
          <span xid="span2" __cid="c3uQfUn" class="c3uQfUn">记事分享</span>
        </a>  
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default btn-icon-top c3uQfUn" xid="friend" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;linear linear-users&#34;,&#34;label&#34;:&#34;我的好友&#34;,&#34;target&#34;:&#34;friendContent&#34;}" __cid="c3uQfUn"> 
          <i xid="i3" class="linear linear-users c3uQfUn" __cid="c3uQfUn"></i>  
          <span xid="span3" __cid="c3uQfUn" class="c3uQfUn">我的好友</span>
        </a>  
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default btn-icon-top c3uQfUn" xid="my" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;linear linear-chevronrightcircle&#34;,&#34;label&#34;:&#34;我的信息&#34;,&#34;target&#34;:&#34;myContent&#34;}" __cid="c3uQfUn"> 
          <i xid="i4" class="linear linear-chevronrightcircle c3uQfUn" __cid="c3uQfUn"></i>  
          <span xid="span4" __cid="c3uQfUn" class="c3uQfUn">我的信息</span>
        </a> 
      </div>
    </div>
    <style __cid="c3uQfUn" class="c3uQfUn">.x-panel.p42b5e5562b4d4a679cce168d4ff8666b-iosstatusbar >.x-panel-top {height: 0px;}.x-panel.p42b5e5562b4d4a679cce168d4ff8666b-iosstatusbar >.x-panel-content { top: 0px;bottom: 55px;}.x-panel.p42b5e5562b4d4a679cce168d4ff8666b-iosstatusbar >.x-panel-bottom {height: 55px;}.iosstatusbar .x-panel.p42b5e5562b4d4a679cce168d4ff8666b-iosstatusbar >.x-panel-top,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.p42b5e5562b4d4a679cce168d4ff8666b-iosstatusbar >.x-panel-top {height: 0px;}.iosstatusbar .x-panel.p42b5e5562b4d4a679cce168d4ff8666b-iosstatusbar >.x-panel-content,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.p42b5e5562b4d4a679cce168d4ff8666b-iosstatusbar >.x-panel-content { top: 0px;}.iosstatusbar .x-panel .x-panel-content .x-panel.p42b5e5562b4d4a679cce168d4ff8666b-iosstatusbar >.x-panel-top {height: 0px;}.iosstatusbar .x-panel .x-panel-content .x-panel.p42b5e5562b4d4a679cce168d4ff8666b-iosstatusbar >.x-panel-content {top: 0px;}</style>
  </div>  
  <div component="$model/UI2/system/components/justep/popMenu/popMenu" class="x-popMenu c3uQfUn" xid="popMenu" style="text-align:center;" data-bind="component:{name:'$model/UI2/system/components/justep/popMenu/popMenu'}" data-config="{&#34;anchor&#34;:&#34;button1&#34;,&#34;direction&#34;:&#34;right-bottom&#34;,&#34;opacity&#34;:0.4}" __cid="c3uQfUn"> 
    <div class="x-popMenu-overlay c3uQfUn" xid="div10" __cid="c3uQfUn"></div>  
    <ul component="$model/UI2/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content c3uQfUn" xid="menu1" data-bind="component:{name:'$model/UI2/system/components/justep/menu/menu'}" __cid="c3uQfUn"> 
      <li class="x-menu-item c3uQfUn" xid="item1" __cid="c3uQfUn"> 
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-icon-left center-block c3uQfUn" xid="button2" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:button2Click" data-config="{&#34;icon&#34;:&#34;linear linear-pencil&#34;,&#34;label&#34;:&#34;背景修改&#34;}" __cid="c3uQfUn"> 
          <i xid="i2" class="linear linear-pencil c3uQfUn" __cid="c3uQfUn"></i>  
          <span xid="span2" __cid="c3uQfUn" class="c3uQfUn">背景修改</span> 
        </a> 
      </li> 
    </ul>
  </div>  
  <div component="$model/UI2/system/components/justep/popOver/popOver" class="x-popOver c3uQfUn" xid="popOver" data-bind="component:{name:'$model/UI2/system/components/justep/popOver/popOver'}" data-config="{&#34;direction&#34;:&#34;auto&#34;}" __cid="c3uQfUn"> 
    <div class="x-popOver-overlay c3uQfUn" xid="div16" __cid="c3uQfUn"></div>  
    <div class="x-popOver-content shadow c3uQfUn" xid="div17" style="height:80%;width:80%;opacity:0.9;background-color:white;    border-radius:15px;    border-radius:15px;" dir="ltr" __cid="c3uQfUn">
      <div component="$model/UI2/system/components/justep/panel/panel" class="x-panel x-full ped9210fce37c4470bf24dbf994d6fbfa-iosstatusbar c3uQfUn" xid="panel2" style="border-radius:15px;" data-bind="component:{name:'$model/UI2/system/components/justep/panel/panel'}" __cid="c3uQfUn"> 
        <div class="x-panel-top c3uQfUn" xid="top2" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="c3uQfUn">
          <div component="$model/UI2/system/components/justep/titleBar/titleBar" class="x-titlebar c3uQfUn" xid="titleBar1" style="background-color:whitesmoke;color:black;" data-bind="component:{name:'$model/UI2/system/components/justep/titleBar/titleBar'}" data-config="{&#34;title&#34;:&#34;背景修改&#34;}" __cid="c3uQfUn"> 
            <div class="x-titlebar-left c3uQfUn" xid="left2" __cid="c3uQfUn"></div>  
            <div class="x-titlebar-title c3uQfUn" xid="title2" __cid="c3uQfUn">背景修改</div>  
            <div class="x-titlebar-right  c3uQfUn" xid="right2" __cid="c3uQfUn">
              <div class="empty c3uQfUn" __cid="c3uQfUn"></div>
            </div>
          </div>
        </div>  
        <div class="x-panel-content c3uQfUn" xid="content4" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="c3uQfUn">
          <div component="$model/UI2/system/components/justep/contents/contents" class="x-contents x-full c3uQfUn" xid="bgcontents" style="height:100%;width:100%;" data-bind="component:{name:'$model/UI2/system/components/justep/contents/contents'}" data-config="{&#34;active&#34;:0}" __cid="c3uQfUn"> 
            <div class="x-contents-content active c3uQfUn" xid="bgcontent" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" __cid="c3uQfUn"> 
              <div component="$model/UI2/system/components/justep/panel/panel" class="x-panel x-full pd347781772b94e3092526e5a663c0ac9-iosstatusbar c3uQfUn" xid="panel3" data-bind="component:{name:'$model/UI2/system/components/justep/panel/panel'}" __cid="c3uQfUn"> 
                <div class="x-panel-content center-block c3uQfUn" xid="content8" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="c3uQfUn"> 
                  <div xid="div18" style="height:7.5%;" __cid="c3uQfUn" class="c3uQfUn"></div>  
                  <div xid="div8" style="float:left;width:10%;height:85%;" __cid="c3uQfUn" class="c3uQfUn"> 
                    <div xid="div9" style="height:46.5%;width:100%;" __cid="c3uQfUn" class="c3uQfUn"></div>
                    <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon btn-block c3uQfUn" xid="button4" style="color:gray;" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:button4Click" data-config="{&#34;icon&#34;:&#34;icon-chevron-left&#34;,&#34;label&#34;:&#34;button&#34;}" __cid="c3uQfUn"> 
                      <i xid="i7" class="icon-chevron-left c3uQfUn" __cid="c3uQfUn"></i>  
                      <span xid="span7" __cid="c3uQfUn" class="c3uQfUn"></span>
                    </a>
                  </div>
                  <div xid="div11" style="float:right;width:10%;height:85%;" __cid="c3uQfUn" class="c3uQfUn">
                    <div xid="div13" style="height:46.5%;width:100%;" __cid="c3uQfUn" class="c3uQfUn"></div>  
                    <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon btn-block c3uQfUn" xid="button5" style="color:gray;" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:button5Click" data-config="{&#34;icon&#34;:&#34;icon-chevron-right&#34;,&#34;label&#34;:&#34;button&#34;}" __cid="c3uQfUn"> 
                      <i xid="i9" class="icon-chevron-right c3uQfUn" __cid="c3uQfUn"></i>  
                      <span xid="span9" __cid="c3uQfUn" class="c3uQfUn"></span>
                    </a>
                  </div>  
                  <div id="bgcontent" xid="div21" style="width:80%;height:85%; display: inline-block;" class="center-block   c3uQfUn" __cid="c3uQfUn"> 
                    <div xid="div19" id="bgborder" style="width:100%;height:100%;background-color:whitesmoke;transform:rotate(2deg);" class="yj-small shadow c3uQfUn" __cid="c3uQfUn" data-bind="event:{click:$model._callModelFn.bind($model, 'div19Click')}"> 
                      <div id="jpgdiv" xid="jpgdiv" style="width:100%;height:85%;" class="yj-small-noboarder c3uQfUn" __cid="c3uQfUn"></div>  
                      <div xid="div23" style="height:15%;width:100%;background-color:whitesmoke;" class="yj-small-noboarder c3uQfUn" __cid="c3uQfUn"> 
                        <div xid="div24" style="width:100%;height:33%;" __cid="c3uQfUn" class="c3uQfUn"></div>  
                        <div xid="div25" style="text-align:center;height:67%;width:100%;" __cid="c3uQfUn" class="c3uQfUn">
                          <div xid="div28" style="height:100%;width:20%;float:left;" __cid="c3uQfUn" class="c3uQfUn"></div>
                          <label id="bgname" xid="label1" __cid="c3uQfUn" class="c3uQfUn" data-bind="text:$model.boardBackGround.val(&#34;boardBackGroundName&#34;)"></label>
                          <div xid="div26" style="color:#228B22;height:100%;width:20%;float:right;transform:rotate(-30deg);" __cid="c3uQfUn" class="c3uQfUn">
                            <label xid="label3" id="bgsign" style="display:none;" __cid="c3uQfUn" class="c3uQfUn">当前选择</label>
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div xid="div20" style="height:7.5%;" __cid="c3uQfUn" class="c3uQfUn"></div> 
                </div>  
                <style __cid="c3uQfUn" class="c3uQfUn">.x-panel.pd347781772b94e3092526e5a663c0ac9-iosstatusbar >.x-panel-top {height: 0px;}.x-panel.pd347781772b94e3092526e5a663c0ac9-iosstatusbar >.x-panel-content { top: 0px;bottom: nullpx;}.x-panel.pd347781772b94e3092526e5a663c0ac9-iosstatusbar >.x-panel-bottom {height: nullpx;}.iosstatusbar .x-panel.pd347781772b94e3092526e5a663c0ac9-iosstatusbar >.x-panel-top,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.pd347781772b94e3092526e5a663c0ac9-iosstatusbar >.x-panel-top {height: 0px;}.iosstatusbar .x-panel.pd347781772b94e3092526e5a663c0ac9-iosstatusbar >.x-panel-content,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.pd347781772b94e3092526e5a663c0ac9-iosstatusbar >.x-panel-content { top: 0px;}.iosstatusbar .x-panel .x-panel-content .x-panel.pd347781772b94e3092526e5a663c0ac9-iosstatusbar >.x-panel-top {height: 0px;}.iosstatusbar .x-panel .x-panel-content .x-panel.pd347781772b94e3092526e5a663c0ac9-iosstatusbar >.x-panel-content {top: 0px;}</style>
              </div> 
            </div>
          </div>
        </div>  
        <style __cid="c3uQfUn" class="c3uQfUn">.x-panel.ped9210fce37c4470bf24dbf994d6fbfa-iosstatusbar >.x-panel-top {height: 48px;}.x-panel.ped9210fce37c4470bf24dbf994d6fbfa-iosstatusbar >.x-panel-content { top: 48px;bottom: nullpx;}.x-panel.ped9210fce37c4470bf24dbf994d6fbfa-iosstatusbar >.x-panel-bottom {height: nullpx;}.iosstatusbar .x-panel.ped9210fce37c4470bf24dbf994d6fbfa-iosstatusbar >.x-panel-top,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.ped9210fce37c4470bf24dbf994d6fbfa-iosstatusbar >.x-panel-top {height: 68px;}.iosstatusbar .x-panel.ped9210fce37c4470bf24dbf994d6fbfa-iosstatusbar >.x-panel-content,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.ped9210fce37c4470bf24dbf994d6fbfa-iosstatusbar >.x-panel-content { top: 68px;}.iosstatusbar .x-panel .x-panel-content .x-panel.ped9210fce37c4470bf24dbf994d6fbfa-iosstatusbar >.x-panel-top {height: 48px;}.iosstatusbar .x-panel .x-panel-content .x-panel.ped9210fce37c4470bf24dbf994d6fbfa-iosstatusbar >.x-panel-content {top: 48px;}</style>
      </div>
    </div>
  </div> 
</div></div>
        
        <div id="downloadGCF" style="display:none;padding:50px;">
        	<span>您使用的浏览器需要下载插件才能使用, </span>
        	<a id="downloadGCFLink" href="#">下载地址</a>
        	<p>(安装后请重新打开浏览器)</p>
        </div>
    	<script>
    	
    	            //判断浏览器, 判断GCF
    	 			var browser = {
    			        isIe: function () {
    			            return navigator.appVersion.indexOf("MSIE") != -1;
    			        },
    			        navigator: navigator.appVersion,
    			        getVersion: function() {
    			            var version = 999; // we assume a sane browser
    			            if (navigator.appVersion.indexOf("MSIE") != -1)
    			                // bah, IE again, lets downgrade version number
    			                version = parseFloat(navigator.appVersion.split("MSIE")[1]);
    			            return version;
    			        }
    			    };
    				function isGCFInstalled(){
    			      try{
    			        var i = new ActiveXObject('ChromeTab.ChromeFrame');
    			        if (i) {
    			          return true;
    			        }
    			      }catch(e){}
    			      return false;
    				}
    	            //判断浏览器, 判断GCF
    	            var __continueRun = true;
    				if (browser.isIe() && (browser.getVersion() < 10) && !isGCFInstalled()) {
    					document.getElementById("applicationHost").style.display = 'none';
    					document.getElementById("downloadGCF").style.display = 'block';
    					var downloadLink = "/" + location.pathname.match(/[^\/]+/)[0] + "/v8.msi";
    					document.getElementById("downloadGCFLink").href = downloadLink; 
    					__continueRun = false;
    	            }
		 	
    	</script>
        
        <script id="_requireJS" src="../system/lib/require/require.2.1.10.js"> </script>
        <script src="../system/core.min.js"></script><script src="../system/common.min.js"></script><script src="../system/components/comp.min.js"></script><script id="_mainScript">
        
			if (__continueRun) {
                window.__justep.cssReady = function(fn){
                	var promises = [];
                	for (var p in window.__justep.__ResourceEngine.__loadingCss){
                		if(window.__justep.__ResourceEngine.__loadingCss.hasOwnProperty(p))
                			promises.push(window.__justep.__ResourceEngine.__loadingCss[p].promise());
                	}
                	$.when.apply($, promises).done(fn);
                };
                
            	window.__justep.__ResourceEngine = {
            		readyRegExp : navigator.platform === 'PLAYSTATION 3' ? /^complete$/ : /^(complete|loaded)$/,
            		url: window.location.href,	
            		/*contextPath: 不包括语言 */
            		contextPath: "",
            		serverPath: "",
            		__loadedJS: [],
            		__loadingCss: {},
            		onLoadCss: function(url, node){
            			if (!this.__loadingCss[url]){
            				this.__loadingCss[url] = $.Deferred();	
                			if (node.attachEvent &&
                                    !(node.attachEvent.toString && node.attachEvent.toString().indexOf('[native code') < 0) &&
                                    !(typeof opera !== 'undefined' && opera.toString() === '[object Opera]')) {
                                node.attachEvent('onreadystatechange', this.onLinkLoad.bind(this));
                            } else {
                                node.addEventListener('load', this.onLinkLoad.bind(this), false);
                                node.addEventListener('error', this.onLinkError.bind(this), false);
                            }
            			}
            		},
            		
            		onLinkLoad: function(evt){
            	        var target = (evt.currentTarget || evt.srcElement);
            	        if (evt.type === 'load' ||
                                (this.readyRegExp.test(target.readyState))) {
            	        	var url = target.getAttribute("href");
            	        	if (url && window.__justep.__ResourceEngine.__loadingCss[url]){
            	        		window.__justep.__ResourceEngine.__loadingCss[url].resolve(url);
            	        	}
                        }
            		},
            		
            		onLinkError: function(evt){
            	        var target = (evt.currentTarget || evt.srcElement);
        	        	var url = target.getAttribute("href");
        	        	if (url && window.__justep.__ResourceEngine.__loadingCss[url]){
        	        		window.__justep.__ResourceEngine.__loadingCss[url].resolve(url);
        	        	}
            		},
            		
            		initContextPath: function(){
            			var baseURL = document.getElementById("_requireJS").src;
            			var before = location.protocol + "//" + location.host;
            			var after = "/system/lib/require/require.2.1.10.js";
            			var i = baseURL.indexOf(after);
            			if (i !== -1){
    	        			var middle = baseURL.substring(before.length, i);
    						var items = middle.split("/");
    						
    						
    						if ((items[items.length-1].indexOf("v_") === 0) 
    								&& (items[items.length-1].indexOf("l_") !== -1)
    								&& (items[items.length-1].indexOf("s_") !== -1)
    								&& (items[items.length-1].indexOf("d_") !== -1)
    								|| (items[items.length-1]=="v_")){
    							items.splice(items.length-1, 1);
    						}
    						
    						
    						if (items.length !== 1){
    							window.__justep.__ResourceEngine.contextPath = items.join("/");
    						}else{
    							window.__justep.__ResourceEngine.contextPath = before;
    						}
    						var index = window.__justep.__ResourceEngine.contextPath.lastIndexOf("/");
    						if (index != -1){
    							window.__justep.__ResourceEngine.serverPath = window.__justep.__ResourceEngine.contextPath.substr(0, index);
    						}else{
    							window.__justep.__ResourceEngine.serverPath = window.__justep.__ResourceEngine.contextPath;
    						}
            			}else{
            				throw new Error(baseURL + " hasn't  " + after);
            			}
            		},
            	
            		loadJs: function(urls){
            			if (urls && urls.length>0){
            				var loadeds = this._getResources("script", "src").concat(this.__loadedJS);
    	       				for (var i=0; i<urls.length; i++){
    	       					var url = window.__justep.__ResourceEngine.contextPath + urls[i];
    	        				if(!this._isLoaded(url, loadeds)){
    	        					this.__loadedJS[this.__loadedJS.length] = url;
    	        					/*
    	        					var script = document.createElement("script");
    	        					script.src = url;
    	        					document.head.appendChild(script);
    	        					*/
    	        					//$("head").append("<script  src='" + url + "'/>");
    	        					$.ajax({
    	        						url: url,
    	        						dataType: "script",
    	        						cache: true,
    	        						async: false,
    	        						success: function(){}
    	        						});
    	        				} 
    	       				}
            			}
            		},
            		
            		loadCss: function(styles){
           				var loadeds = this._getResources("link", "href");
            			if (styles && styles.length>0){
            				for (var i=0; i<styles.length; i++){
    	       					var url = window.__justep.__ResourceEngine.contextPath + styles[i].url
    	        				if(!this._isLoaded(url, loadeds)){
    	        					var include = styles[i].include || "";
    	        					var link = $("<link type='text/css' rel='stylesheet' href='" + url + "' include='" + include + "'/>");
    	        					this.onLoadCss(url, link[0]);
    	        					$("head").append(link);
    	        				} 
            				}
            			}
            			
            		},
            		
            		
            		_isLoaded: function(url, loadeds){
            			if (url){
            				var newUrl = "";
            				var items = url.split("/");
            				var isVls = false;
            				for (var i=0; i<items.length; i++){
            					if (isVls){
                					newUrl += "/" + items[i];
            					}else{
                					if (items[i] && (items[i].indexOf("v_")===0)
            								&& (items[i].indexOf("l_")!==-1)
            								&& (items[i].indexOf("s_")!==-1)
            								&& (items[i].indexOf("d_")!==-1)
            								|| (items[i]=="v_")){
                						isVls = true;
                					}
            					}
            				}
            				if (!newUrl)
            					newUrl = url;
            				
            				for (var i=0; i<loadeds.length; i++){
    							if (loadeds[i] && (loadeds[i].indexOf(newUrl)!==-1)){
    								return true;
    							}
    						}
            			}
    					return false;
            		},
            		
            		_getResources: function(tag, attr){
    					var result = [];
    					var scripts = $(tag);
    					for (var i=0; i<scripts.length; i++){
    						var v = scripts[i][attr];
    						if (v){
    							result[result.length] = v;
    						}
    					}
    					return result;
            		}
            	};
            	
            	window.__justep.__ResourceEngine.initContextPath();
    			requirejs.config({
    				baseUrl: window.__justep.__ResourceEngine.contextPath + '/B_Note',
    			    paths: {
    			    	/* 解决require.normalizeName与require.toUrl嵌套后不一致的bug   */
    			    	'$model/UI2/v_': window.__justep.__ResourceEngine.contextPath + '',
    			    	'$model/UI2': window.__justep.__ResourceEngine.contextPath + '',
    			    	'$model': window.__justep.__ResourceEngine.serverPath,
    			        'text': window.__justep.__ResourceEngine.contextPath + '/system/lib/require/text.2.0.10',
    			        'bind': window.__justep.__ResourceEngine.contextPath + '/system/lib/bind/bind',
    			        'jquery': window.__justep.__ResourceEngine.contextPath + '/system/lib/jquery/jquery-1.11.1.min'
    			    },
    			    map: {
    				        '*': {
    				            res: '$model/UI2/system/lib/require/res',
    				            cordova: '$model/UI2/system/lib/require/cordova',
    				            w: '$model/UI2/system/lib/require/w',
    				            css: '$model/UI2/system/lib/require/css'
    				        }
    				},
    				waitSeconds: 300
    			});
    			
    			requirejs(['require', 'jquery', '$model/UI2/system/lib/base/composition', '$model/UI2/system/lib/base/url', '$model/UI2/system/lib/route/hashbangParser', '$model/UI2/system/components/justep/versionChecker/versionChecker', '$model/UI2/system/components/justep/loadingBar/loadingBar', '$model/UI2/system/lib/jquery/domEvent',  '$model/UI2/system/lib/cordova/cordova'],  function (require, $, composition, URL, HashbangParser,versionChecker) { 
    				document.addEventListener('deviceready', function() {
    	                if (navigator && navigator.splashscreen && navigator.splashscreen.hide) {
    	                	/*延迟隐藏，视觉效果更理想*/
    	                	setTimeout(function() {navigator.splashscreen.hide();}, 800);
    	                }
						setTimeout(function(){
							versionChecker.check();			
						},1000);
    	            }, false);
    				var context = {};
    				context.model = '$model/UI2/B_Note/home.w' + (document.location.search || "");
    				context.view = $('#applicationHost').children()[0];
    				var element = document.getElementById('applicationHost');

					    				
    				
    				var ownerid = new URL(window.__justep.__ResourceEngine.url).getParam("$ownerid");
    				var pwindow = opener;
    				if (!pwindow && window.parent && window.parent.window){
    					pwindow = window.parent.window;
    				}
    				if(ownerid && pwindow 
    						&& pwindow.__justep && pwindow.__justep.windowOpeners
    						&& pwindow.__justep.windowOpeners[ownerid]
    						&& $.isFunction(pwindow.__justep.windowOpeners[ownerid].sendToWindow)){
    					window.__justep.setParams = function(params){
    						/* 给windowOpener提供再次传参数的接口  */
    						params = params || {};
    						composition.setParams(document.getElementById('applicationHost'), params);
    					};
    					var winOpener = pwindow.__justep.windowOpeners[ownerid];
    					$(window).unload(function(event){
    						if(winOpener && winOpener.dispatchCloseEvent) winOpener.dispatchCloseEvent();
    					});
    					var params = winOpener.sendToWindow();
						context.owner = winOpener;
						context.params = params || {};
	        			composition.compose(element, context);
    				}else{
        				var params =  {};
    					var state = new HashbangParser(window.location.hash).parse().__state;
    					if (state){
    						params = state.get("");
    						try{
    							params = JSON.parse(params);
    							if (params.hasOwnProperty("__singleValue__")){
    								params = params.__singleValue__;
    							}
    						}catch(e1){}
    					}
    					context.noUpdateState = true;
        				context.params = params;
        				composition.compose(element, context);
    				}
    			});    
            }
		 	
        </script>
    </body>
</html>