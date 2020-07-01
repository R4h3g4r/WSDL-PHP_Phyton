function SetAll(obj){
 var i;
 var curSel=obj.selectedIndex;
 var tmpStr = new String("");
 var formName;
 formName= "<%getPageName()%>" + "_form";
 var formParam = eval("document." + formName);
 var x = formParam.elements.length;
 if (curSel!=5)
 {
	 if (curSel==6) {curSel=5;}
	 for (i=0;i<x;i++) {
	     tmpStr= formParam.elements[i].name;
	     if (tmpStr.substring(0,5) == "sign_")
	 	    {
	  	     formParam.elements[i].options[curSel].selected=true;			 
		    }
	 }
 }
}
