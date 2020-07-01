function removeFrameSet(){
	alert("removing frameset");
	
//	if (top.name != "NetImex") {
//		alert("removing frameset- do1");
//		res = window.open(window.location.href,"_top","");
    		/*if (document.images)
		        top.location.replace(window.location.href);
    		else
		        top.location.href = window.location.href;*/
//		res.name = "NetImex";
//	}

/*	if (top.frames.length!=0 || self != top) {
		alert("removing frameset- here");
	    if (window.location.href.replace)
        	top.location.replace(self.location.href);
	    else
        	top.location.href=self.document.href;
	}//*/
//	top.name = "NetImex";
//	window.name = "NetImex";


//	res = window.open(window.location.href,"_top","");
//	alert(res.name);
	if (self != top){
		alert("removing frameset- do");
        	res = window.open(window.location.href,"_top","");
        	//res.name = "NetImex";
        }//*/

}