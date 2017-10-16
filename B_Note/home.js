define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	var uinfo;
	var rotate = 0;
	Model.prototype.modelLoad = function(event){
	};
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
              throw justep.Error.create("加载数据失败 错误码00006");
            }
        });
        document.getElementById('tablediv').innerHTML=
        "<style>.gridtable th {"+
			"border-width: 1px;"+
			"padding: 8px;"+
			"border-style: solid;"+
			"border-color: whitesmoke;"+
		"}"+
		".gridtable td {"+
			"border-width: 1px;"+
			"padding: 8px;"+
			"border-style: solid;"+
			"border-color: whitesmoke;"+
		"}</style>"+
		"<tr>"+
			"<th></th><th style='text-align:center;'>冻结中</th><th style='text-align:center;'>进行中</th><th style='text-align:center;'>已完成</th>"+
		"</tr>"+
		"<tr>"+
			"<td>Text1A</td>"+
			"<td>"+
				"<table style='width:100%;text-align:center;'>"+
					"<tr><td>s1</td></tr>"+
					"<tr><td>s2</td></tr>"+
					"<tr><td>s3</td></tr>"+
					"<tr><td>s4</td></tr>"+
				"</table>"+
			"</td>"+
			
			"<td>"+
				"<table style='width:100%;text-align:center;'>"+
					"<tr><td>s1</td></tr>"+
					"<tr><td>s2</td></tr>"+
					"<tr><td>s3</td></tr>"+
				"</table>"+
			"</td><td>"+
				"<table style='width:100%;text-align:center;'>"+
					"<tr><td>s1</td></tr>"+
					"<tr><td>s2</td></tr>"+

				"</table>"+
			"</td>"+
		"</tr>"+
		"<tr>"+
			"<td>Text1A</td><td>"+
				"<table style='width:100%;text-align:center;'>"+
					"<tr><td>s1</td></tr>"+
					"<tr><td>s2</td></tr>"+
					"<tr><td>s3</td></tr>"+
					"<tr><td>s4</td></tr>"+
				"</table>"+
			"</td><td>"+
			"<table style='width:100%;text-align:center;'>"+
					"<tr><td>s1</td></tr>"+
					"<tr><td>s2</td></tr>"+
					"<tr><td>s3</td></tr>"+
					"<tr><td>s4</td></tr>"+
				"</table>"+
			"</td><td>"+
			"<table style='width:100%;text-align:center;'>"+
					"<tr><td>s1</td></tr>"+
					"<tr><td>s2</td></tr>"+
					"<tr><td>s3</td></tr>"+
					"<tr><td>s4</td></tr>"+
				"</table>"+
			"</td>"+
		"</tr>"+
				"<tr>"+
			"<td>Text1A</td><td>"+
				"<table style='width:100%;text-align:center;'>"+
					"<tr><td>s1</td></tr>"+
					"<tr><td>s2</td></tr>"+
					"<tr><td>s3</td></tr>"+
					"<tr><td>s4</td></tr>"+
				"</table>"+
			"</td><td>"+
			"<table style='width:100%;text-align:center;'>"+
					"<tr><td>s1</td></tr>"+
					"<tr><td>s2</td></tr>"+
					"<tr><td>s3</td></tr>"+
					"<tr><td>s4</td></tr>"+
				"</table>"+
			"</td><td>"+
			"<table style='width:100%;text-align:center;'>"+
					"<tr><td>s1</td></tr>"+
					"<tr><td>s2</td></tr>"+
					"<tr><td>s3</td></tr>"+
					"<tr><td>s4</td></tr>"+
				"</table>"+
			"</td>"+
		"</tr>";
	};
	Model.prototype.modelParamsReceive = function(event){
		uinfo = event.params.id;
		this.comp("user").refreshData();
		this.comp("note_board").refreshData();
		this.comp("boardBackGround").refreshData();
	};
	Model.prototype.li2Click = function(event){
		var params = {
				id : uinfo
		};
		justep.Shell.showPage("personalmsg",params);
	};
	Model.prototype.note_boardCustomRefresh = function(event){
		var note_boardData = event.source;
        $.ajax({
            type: "POST",
            url: "http://www.mmddragon.com/bs/index.php?p=front&c=NoteBoard&a=gnoteboard",
            data: {"userId":uinfo},
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	var json = "["+JSON.stringify(data["data"])+"]";
            	var note_boardd = JSON.parse(json);
            	note_boardData.loadData(note_boardd);//将返回的数据加载到data组件
            	note_boardData.first();
            	//background:url('img/board_bg/'+ $model.note_board.val('boardBackGroundId')+'.jpg');
            	document.getElementById("bg_div").style.background = "url(img/board_bg/"+note_boardData.getValue("boardBackGroundId")+".jpg)";
            },
            error: function(){
              throw justep.Error.create("加载数据失败 错误码00005");
            }
        });
	};
	
	
	Model.prototype.button1Click = function(event){
		this.comp("popMenu").show();
	};
	
	
	Model.prototype.button2Click = function(event){
		this.comp("popOver").show();
	};
	
	Model.prototype.boardBackGroundCustomRefresh = function(event){
		//var newContent = this.comp('bgcontents').add({});
		//var div = $(createNewContent("2","软木1"));
		//justep.Bind.addNodes(newContent.domNode, div);
		//this.comp("bgcontents").to(0);
		var boardBackGround = event.source;
        $.ajax({
            type: "POST",
            url: "http://www.mmddragon.com/bs/index.php?p=front&c=NoteBoard&a=gboardbackground",
            data: {"userId":uinfo},
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	//console.log(data);
            	//var json = "["+JSON.stringify(data["data"])+"]";
            	//var boardBackGroundd = JSON.parse(json);
            	
            	boardBackGround.loadData(data);//将返回的数据加载到data组件
            	boardBackGround.first();
            	////background:url('img/board_bg/'+ $model.note_board.val('boardBackGroundId')+'.jpg');
            	document.getElementById("jpgdiv").style.background = "url(img/board_bg/"+boardBackGround.getValue("boardBackGroundId")+".jpg)";
            	//document.getElementById("jpgdiv").style.background = "url(img/board_bg/1.jpg)";
            },
            error: function(){
              throw justep.Error.create("加载数据失败 错误码00007");
            }
        });
        
	};
	
	
	Model.prototype.button4Click = function(event){
		var boardBackGround = this.comp("boardBackGround");
		if(boardBackGround.getValue("boardBackGroundId") == 1){
			boardBackGround.last();
		}
		else{
			boardBackGround.pre();
		}
		rotate += 360;
		document.getElementById("jpgdiv").style.background = "url(img/board_bg/"+boardBackGround.getValue("boardBackGroundId")+".jpg)";
		document.getElementById("bgcontent").style.transition=" all 1s ease-in-out";
		document.getElementById("bgcontent").style.webkitTransform="rotateY("+rotate+"deg)";
		if(this.comp("note_board").getValue("boardBackGroundId") == boardBackGround.getValue("boardBackGroundId")){
				document.getElementById("bgborder").style.borderColor="#228B22";
				document.getElementById("bgsign").style.display="";
		}
		else{
				document.getElementById("bgborder").style.borderColor="whitesmoke";
				document.getElementById("bgsign").style.display="none";
		}

	};
	
	Model.prototype.button5Click = function(event){
		var boardBackGround = this.comp("boardBackGround");
		if(boardBackGround.getValue("boardBackGroundId") == boardBackGround.count()){
			boardBackGround.first();
		}
		else{
			boardBackGround.next();
		}
		rotate -= 360;
		document.getElementById("jpgdiv").style.background = "url(img/board_bg/"+boardBackGround.getValue("boardBackGroundId")+".jpg)";
		document.getElementById("bgcontent").style.transition=" all 1s ease-in-out";
		document.getElementById("bgcontent").style.webkitTransform="rotateY("+rotate+"deg)";
		if(this.comp("note_board").getValue("boardBackGroundId") == boardBackGround.getValue("boardBackGroundId")){
				document.getElementById("bgborder").style.borderColor="#228B22";
				document.getElementById("bgsign").style.display="";
		}
		else{
				document.getElementById("bgborder").style.borderColor="whitesmoke";
				document.getElementById("bgsign").style.display="none";		
		}
	};
	Model.prototype.div19Click = function(event){
		var newBackGroundid = this.comp("boardBackGround").getValue("boardBackGroundId");
		var oldBackGroundid = this.comp("note_board").getValue("boardBackGroundId");
		var BackGroundname = this.comp("boardBackGround").getValue("boardBackGroundName");
		var noteBoardId = this.comp("note_board").getValue("noteBoardId");
		var note_board = this.comp("note_board");
		var boardBackGround = this.comp("boardBackGround");
		if(newBackGroundid != oldBackGroundid){
			if(confirm("您要将背景修改为："+ BackGroundname + "?")){
				$.ajax({
	            type: "POST",
	            url: "http://www.mmddragon.com/bs/index.php?p=front&c=NoteBoard&a=cgnoteboard",
	            data: {"userId":uinfo,"boardBackGroundId":newBackGroundid,"noteBoardId":noteBoardId},
	            dataType: 'json',
	            async: false,
	            cache: false,
	            success: function(data){
	            	if(data.sign == "1"){
	            		note_board.refreshData(); 
						if(note_board.getValue("boardBackGroundId") == boardBackGround.getValue("boardBackGroundId")){
								document.getElementById("bgborder").style.borderColor="#228B22";
								document.getElementById("bgsign").style.display="";
						}
						else{
								document.getElementById("bgborder").style.borderColor="whitesmoke";
								document.getElementById("bgsign").style.display="none";		
						}        		
	            	}
	            	//document.getElementById("jpgdiv").style.background = "url(img/board_bg/"+boardBackGround.getValue("boardBackGroundId")+".jpg)";
	            },
	            error: function(){
	              throw justep.Error.create("加载数据失败 错误码00008");
	            }
        });
			}
		}
	};

	return Model;
	
});
