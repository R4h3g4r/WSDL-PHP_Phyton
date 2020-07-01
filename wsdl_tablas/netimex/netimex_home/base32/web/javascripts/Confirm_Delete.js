function Confirm_Delete(sAdrr,sDelMsg)
{

	var customParams = "<%getCustomizedURLParameters()%>";//avis - generalize url customization
//    alert(sAdrr);
	if (sDelMsg == "True") {
		if (window.confirm("<%getErrorMsg(NMX00041)%>")) {
			window.location="<%getWebLocation()%>Page=<%getPageName()%>&Action=put&PageNext=<%getPageName()%>&Del=" + sAdrr + customParams;
		}
	}       
	else {
		if (window.confirm("<%getErrorMsg(NMX01001)%>")) { 
			window.location="<%getWebLocation()%>Page=<%getPageName()%>&Action=put&PageNext=<%getPageName()%>&Del=" + sAdrr + customParams;
		}
	}
	        
}
