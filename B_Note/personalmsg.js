define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	
	Model.prototype.modelLoad = function(event){
	};
	var uinfo;
	Model.prototype.userCustomRefresh = function(event){
		var userData = event.source;
        $.ajax({
            type: "POST",
            url: "http://www.mmddragon.com/bs/index.php?p=front&c=User&a=infouser",
            data: {"userId":uinfo},
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	var json = "["+JSON.stringify(data["data"])+"]";
            	var userd = JSON.parse(json);
            	userData.loadData(userd);//将返回的数据加载到data组件
            	userData.first();
            	
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
	};
	Model.prototype.modelParamsReceive = function(event){
		uinfo = event.params.id;
		this.comp("user").refreshData();
	};


	Model.prototype.li2Click = function(event){
		var params = {
				id : uinfo
		};
		justep.Shell.showPage("modifynickName",params);
	};


	Model.prototype.li4Click = function(event){
		var params = {
				id : uinfo
		};
		justep.Shell.showPage("modifyuserIntro",params);
	};


	Model.prototype.backbtnClick = function(event){
		var params = {
				id : uinfo
		};
		justep.Shell.showPage("home",params);
	};


	return Model;
});