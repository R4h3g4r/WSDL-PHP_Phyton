function changeNextStationMail(cmbNextStation){	
	var elem = <%getThis(cmbNextStationEmail)%>;
	
	//check if next station email is defined
	if(elem== null || elem=="undefined")
		return;
		
	var stationVal = GetElemValue(<%getThis(cmbNextStation)%>);
	if(stationVal=='stobo'){		
		hide(elem);
	}else{
		show(elem);
	}
	
	//check if the array of select box is defined
	try{
		var check = eval(group);//group - is a dynamic javascript written by the java code
	}catch(x){
		return; //means there is a send to BO option but only one station defined
	}
	
	if(elem.options == null){
		return;
	}	
	//delete the current options	
	for (m=elem.options.length-1;m>=0;m--)
		elem.options[m]=null;
	
	var groupNum = 0;
	//assume only 2 next stations  - first (0) selected index is empty
	if(cmbNextStation.options.selectedIndex == 2){
		groupNum = 1
	}
	
	//create the options dynamicly
	for (i=0;i<group[groupNum].length;i++){
		elem.options[i]=new Option(group[groupNum][i].text,group[groupNum][i].value)
	}
	elem.options.selectedIndex = 1;// select the default station
	
}
function hide(elem){
	if(elem== null || elem=="undefined")
		return;
		
	if (document.layers)
	{
		elem.visibility = 'hide';
	}
	else if (document.all || document.getElementById)
	{
		elem.style.visibility = 'hidden';
	}	
}
function show(elem){
	if(elem== null || elem=="undefined")
		return;
	if (document.layers)
	{
		elem.visibility = 'show';
	}
	else if (document.all || document.getElementById)
	{
		elem.style.visibility = 'visible';
	}	
}

