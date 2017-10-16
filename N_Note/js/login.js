 	window.onload = function(){
	    	 	document.body.style.height = window.innerHeight +"px";
	    	 	loadinglogo();
	   }
 	function loadinglogo(){
 		var height = window.innerHeight;
	    	var width = window.innerWidth;
 		var logo = document.getElementById("logo");
 		var btn_sub = document.getElementById("btn_sub");
 		logo.style.width = height * 0.15 + "px";
 		logo.style.height = height * 0.15 + "px";
 		logo.style.top = height * 0.2 + "px";
 		logo.style.left = (width - height * 0.15)/2 + "px";
 		btn_sub.style.width = height * 0.2 + "px";
 		btn_sub.style.height = height * 0.2 + "px";
 	}
