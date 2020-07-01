  function openmsgwin(hrefstr){
  
 
  var menu = "menubar=no";
  var page = "Page=";
  var pageIndex =  hrefstr.indexOf(page);
  
  if(pageIndex != -1 ){
  		var pageName = "";
  		var endPageIndx = "";
  		
  		endPageIndx = hrefstr.indexOf("&",pageIndex);
  		if(endPageIndx!= -1){
  			pageName =  hrefstr.substring(pageIndex+page.length,endPageIndx);
  		}else{
  			pageName =  hrefstr.substring(pageIndex+page.length);	
  		}
  		if ( pageName == "IM_DOC_IMAGE_VIEWER" ){
   			 menu = "menubar=yes,toolbar=yes";
  		}
  }

  var sigwin=window.open("",'displayWindow',menu+',status=no,scrollbars=yes,width=570,height=230,resizable=yes');
  sigwin.location.href = hrefstr+"&isPopup=true";
  
}
