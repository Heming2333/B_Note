function Drag(obj){
	obj.ontouchstart = function(e){
		obj.style.opacity ="0.5";
	};
	
	obj.ontouchend = function(e){
		obj.style.opacity ="1";
	}
	
	obj.ontouchmove = function(e){
		var touch = e.touches[0];
		var x = touch.clientX;
		var y = touch.clientY;
		var cx = document.body.clientWidth;
		var cy = document.body.clientHeight;
		obj.style.left = x / cx * 100 + "%";
		obj.style.top = y / cy * 100 + "%";
	}
	
	return obj;
}
