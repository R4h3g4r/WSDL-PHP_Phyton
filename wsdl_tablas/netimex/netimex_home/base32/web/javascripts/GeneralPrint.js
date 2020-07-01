function GeneralPrint(){
	if ("<%getBrowserType()%>" == "IE"){
		  if ("<%getBrowserVersion()%>" < 5)
				window.alert("Go to the Menu and click Print");
		  else
				window.print(); 
	}
	if ("<%getBrowserType()%>" == "Netscape")
		window.print(); 
}
