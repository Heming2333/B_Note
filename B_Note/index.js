define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	//require("$UI/B_Note/appVersionChecker");   TODO
	
	var Model = function(){
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"home":{
					url : '$UI/B_Note/home.w'
				},
				"personalmsg":{
					url : '$UI/B_Note/personalmsg.w'
				},
				"modifynickName" :{
					url : '$UI/B_Note/modify/modifynickName.w'
				},
				"modifyuserIntro" :{
					url : '$UI/B_Note/modify/modifyuserIntro.w'
				}
			}
		});
	};

	Model.prototype.modelLoad = function(event){
		//TODO 此处需加标识 证明是从微信端访问 形式POST
		var uinfo = get_paramater();
		var params = {
				id : uinfo
		};
		justep.Shell.showPage("home",params);
	};
	function get_paramater(){
		var par = "uinfo";
		var local_url = document.location.href; 
	    //获取要取得的get参数位置
	    var get = local_url.indexOf(par +"=");
	    if(get == -1){
	        return false;   
	    }   
	    //截取字符串
	    var get_par = local_url.slice(par.length + get + 1);    
	    //判断截取后的字符串是否还有其他get参数
	    var nextPar = get_par.indexOf("&");
	    if(nextPar != -1){
	        get_par = get_par.slice(0, nextPar);
	    }
	    get_par = get_par.substring(0,get_par.length-6);
	    //alert(get_par);
	    return get_par;
	}
	return Model;
});