///////////////////////////// SelectItem ///////////////////////////// 
function getSelectItemIndex(Elem,mode)
{
	var i=Elem.selectedIndex;
	if(mode == "N"){
		i = Elem.length;
		if(!(i>-1))
			i=0;
	}else{
		if (i==-1) 
		{
			alert("Please select one of the elements!");
			return -1;
		}	
	}
	return i;
}