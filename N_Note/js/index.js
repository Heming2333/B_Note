 	window.onload = function(){
	    	 	document.body.style.height = window.innerHeight +"px";
	    		var shape = document.getElementById("shape");
	    		 //removeClassName(shape,'shape_anim');
	    }
   		document.addEventListener('plusready', function(){
   			//console.log("所有plus api都应该在此事件发生后调用，否则会出现plus is undefined。"
   		});
  		function plusReady(){
			// 隐藏滚动条
			plus.webview.currentWebview().setStyle({scrollIndicator:'none'});
			// Android处理返回键
			plus.key.addEventListener('backbutton',function(){
				if(confirm('确认退出？')){
					plus.runtime.quit();
				}
			},false);
			compatibleAdjust();
		}
		if(window.plus){
			plusReady();
		}else{
			document.addEventListener('plusready',plusReady,false);
		}
		function shapeClick(){
			var shape = document.getElementById("shape");
			var menu = document.getElementById("menu");
		      if (hasClassName(shape, 'ring')) {
		        removeClassName(shape, 'ring');
		        addClassName(shape, 'cube');
		        	removeClassName(menu,'menu_anim_forward');
		        addClassName(menu,'menu_anim_backword');
		      } else {
		        removeClassName(shape, 'cube');		        		      
		        addClassName(shape, 'ring');
		        addClassName(menu,'menu_anim_forward');
		        removeClassName(menu,'menu_anim_backword');
		      }
		     
		}
		function noteshapeClick(){
			var shape = document.getElementById("noteshape");
			var parentEl = shape.parentElement;
			if(!hasClassName(parentEl,'noteboard_half')){
				if (hasClassName(shape, 'ring')) {
			        removeClassName(shape, 'ring');
			        addClassName(shape, 'cube');
			      } else {
			        removeClassName(shape, 'cube');		        		      
			        addClassName(shape, 'ring');
			      }
			}
			else{
				return;
			}
		      
		     
		}
		function forward_noteboard_anim(){
			var n1 = document.getElementById("n1");
			var n2 = document.getElementById("n2");
			var n3 = document.getElementById("n3");
			var n4 = document.getElementById("n4");
			var n5 = document.getElementById("n5");
			var n6 = document.getElementById("n6");
			var n7 = document.getElementById("n7");
			var n8 = document.getElementById("n8");
			var n9 = document.getElementById("n9");
			var n10 = document.getElementById("n10");
			var n11 = document.getElementById("n11");
			var n12 = document.getElementById("n12");
			var n13 = document.getElementById("n13");
			var n14 = document.getElementById("n14");
			var n15 = document.getElementById("n15");
			var n16 = document.getElementById("n16");
			addClassName(n1,'n1_anim');
			addClassName(n2,'n2_anim');
			addClassName(n3,'n3_anim');
			addClassName(n4,'n4_anim');
			addClassName(n5,'n5_anim');
			addClassName(n6,'n6_anim');
			addClassName(n7,'n7_anim');
			addClassName(n8,'n8_anim');
			addClassName(n9,'n9_anim');
			addClassName(n10,'n10_anim');
			addClassName(n11,'n11_anim');
			addClassName(n12,'n12_anim');
			addClassName(n13,'n13_anim');
			addClassName(n14,'n14_anim');
			addClassName(n15,'n15_anim');
			addClassName(n16,'n16_anim');
		}
		function homeClick(){
			var homepage = document.getElementById("homepage");
			var notepage = document.getElementById("notepage");
			var shape = document.getElementById("shape");
			var menu = document.getElementById("menu");
			if(hasClassName(homepage,'home_forward')){
				removeClassName(homepage,'home_forward');
				addClassName(homepage,'home_forward');
			}
			else if(hasClassName(notepage,'note_forward')){
				removeClassName(notepage,'note_forward');
				addClassName(notepage,'note_back');
				addClassName(homepage,'home_forward');
			}
			else{}
			
			 if (hasClassName(shape, 'ring')) {
		        removeClassName(shape, 'ring');
		        addClassName(shape, 'cube');
		        	removeClassName(menu,'menu_anim_forward');
		        addClassName(menu,'menu_anim_backword');
		      } else {
		        removeClassName(shape, 'cube');		        		      
		        addClassName(shape, 'ring');
		        addClassName(menu,'menu_anim_forward');
		        removeClassName(menu,'menu_anim_backword');
		      }
		}
		function noteClick(){
			var homepage = document.getElementById("homepage");
			var notepage = document.getElementById("notepage");
			var shape = document.getElementById("shape");
			var menu = document.getElementById("menu");
			if(hasClassName(homepage,'home_forward')){
				removeClassName(homepage,'home_forward');
				addClassName(homepage,'home_back');
				addClassName(notepage,'note_forward');
				forward_noteboard_anim();
			}

		    if (hasClassName(shape, 'ring')) {
		        removeClassName(shape, 'ring');
		        addClassName(shape, 'cube');
		        	removeClassName(menu,'menu_anim_forward');
		        addClassName(menu,'menu_anim_backword');
		      } else {
		        removeClassName(shape, 'cube');		        		      
		        addClassName(shape, 'ring');
		        addClassName(menu,'menu_anim_forward');
		        removeClassName(menu,'menu_anim_backword');
		      }
		}
	    function hasClassName(inElement, inClassName)
	    {
	        var regExp = new RegExp('(?:^|\\s+)' + inClassName + '(?:\\s+|$)');
	        return regExp.test(inElement.className);
	    }

	    function addClassName(inElement, inClassName)
	    {
	        if (!hasClassName(inElement, inClassName))
	            inElement.className = [inElement.className, inClassName].join(' ');
	    }
	
	    function removeClassName(inElement, inClassName)
	    {
	        if (hasClassName(inElement, inClassName)) {
	            var regExp = new RegExp('(?:^|\\s+)' + inClassName + '(?:\\s+|$)', 'g');
	            var curClasses = inElement.className;
	            inElement.className = curClasses.replace(regExp, ' ');
	        }
    		}
	    function show_notelist(btn){
	    		var parentEl = shape.parentElement;
			if(!hasClassName(parentEl,'noteboard_half')){
				//TODO switch
		    		var notelist = document.getElementById("notelist");
		    		var noteboard = document.getElementById("noteboard");
		    		var n_board = document.getElementById("n_board");
		    		var ite_back = document.getElementById("ite_back");
		    		var nl_up = document.getElementById("nl_up");
		    		var nl_down = document.getElementById("nl_down");
		    		var nl_left = document.getElementById("nl_left");
		    		var nl_right = document.getElementById("nl_right");
		    		var n = document.getElementById("n");
		    		var n_ul = document.getElementById("n_ul");
		    		var n_ur = document.getElementById("n_ur");
		    		var n_dl = document.getElementById("n_dl");
		    		var n_dr = document.getElementById("n_dr");
		    		getRadius();
		    		addClassName(notelist,'notelist_forward');
		    		addClassName(noteboard,'noteboard_half');
		    		addClassName(nl_up,'notelist_up');
		    		addClassName(nl_down,'notelist_down');
		    		addClassName(nl_left,'notelist_left');
		    		addClassName(nl_right,'notelist_right');
		    		addClassName(ite_btn,'ite_anim');
		    		addClassName(ite_back,'ite_back_anim');
		    		addClassName(n,'n_anim');
		    		addClassName(n_ul,'n_ul');
		    		addClassName(n_ur,'n_ur');
		    		addClassName(n_dl,'n_dl');
		    		addClassName(n_dr,'n_dr');
		    		addClassName(n_board,'n_board_anim');
		    		var note = noteClass('5','5');
		    		var note1 = noteClass('8','65');
		    		var note2 = noteClass('23','12');
		    		var note3 = noteClass('35','45');
		    		ite_btn = Drag(ite_btn);
		    		document.getElementById("n_board").appendChild(note.showlayout()); 
		    		document.getElementById("n_board").appendChild(note1.showlayout()); 
		    		document.getElementById("n_board").appendChild(note2.showlayout()); 
		    		document.getElementById("n_board").appendChild(note3.showlayout()); 
			}
			else{
				return;
			}	    		
	    }
	    function getRadius(){
	    		var height = window.innerHeight;
	    		var width = window.innerWidth;
		    	var nl_up = document.getElementById("nl_up");
		    	var nl_down = document.getElementById("nl_down");
		    	var nl_left = document.getElementById("nl_left");
		    	var nl_right = document.getElementById("nl_right");
		    	var itembtn1 = document.getElementById("btn_item1");
		    	var itembtn2 = document.getElementById("btn_item2");
		    	var itembtn3 = document.getElementById("btn_item3");
		    	var itembtn4 = document.getElementById("btn_item4");
		    	var itebtn = document.getElementById("ite_btn");
		    	var ite_back = document.getElementById("ite_back");
	    		nl_up.style.height = height * 0.45 + "px";
	    		nl_down.style.height = height * 0.4534 + "px";
	    		nl_left.style.height = height * 0.1 + "px";
	    		nl_right.style.height = height * 0.1 + "px";
	    		nl_left.style.top = height * 0.45 + "px";
	    		nl_right.style.top = height * 0.45 + "px";
	    		itebtn.style.top = height * 0.45 + "px";
	    		ite_back.style.top = height * 0.45 + "px";
	    		nl_down.style.bottom = 0 + "px";
	    		itebtn.style.width = height * 0.1 + "px";
	    		itebtn.style.height = height * 0.1 + "px";
	    		ite_back.style.width = height * 0.105 + "px";
	    		ite_back.style.height = height * 0.1 + "px";
	    		itembtn1.style.width = (width - height * 0.1) / 4 + "px";
	    		itembtn2.style.width = (width - height * 0.09) / 4 + "px";
	    		itembtn3.style.width = (width - height * 0.098) / 4 + "px";
	    		itembtn4.style.width = (width - height * 0.1) / 4 + "px";
	    		itembtn1.style.left = 0 + "px";
	    		itembtn2.style.left = (width - height * 0.1) / 4 + "px";
	    		itembtn3.style.left = 0 + "px";
	    		itembtn4.style.left = (width - height * 0.1) / 4 + "px";
	    		itebtn.style.left = (width - height * 0.1) / 2 + "px";
	    		ite_back.style.left = (width - height * 0.1) / 2 + "px";
	    		nl_left.style.width = (width - height * 0.1) / 2 + "px";
	    		nl_right.style.width = (width - height * 0.1) / 2 + "px";
	    		nl_left.style.left = 0 + "px";
	    		nl_right.style.right = 0+ "px";
	    }
	    function note_conClick(){
	    		var note_lg = document.getElementById("note_lg");
	    		addClassName(note_lg,'note_lg_forward');
	    }
