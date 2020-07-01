function setVis(stype) {
switch (stype) { 
  case "D" :    
	<% If Session("BROWSER_TYPE") = "IE" Then%>
	 document.all['one'].style.visibility='visible';
	 document.all['two'].style.visibility= 'hidden';
	 document.all['three'].style.visibility= 'hidden';
     getType(document.Purge1.DealType);
	 <% else %>
		document.layers['one'].visibility='visible';
		document.layers['two'].visibility= 'hidden';
		document.layers['three'].visibility= 'hidden';
	getType(document.layers['one'].document.forms[0].elements[0]);
	<%end if%>
	 break;    
   case "T" : 
    	<% If Session("BROWSER_TYPE") = "IE" Then%>
		 document.all['two'].style.visibility='visible';
		 document.all['one'].style.visibility= 'hidden';
		 document.all['three'].style.visibility= 'hidden';
 	   	 getType(document.Purge2.TextType);
	<%else %>
		document.layers['two'].visibility='visible';
		document.layers['one'].visibility= 'hidden';
		document.layers['three'].visibility= 'hidden';
		getType(document.layers['two'].document.forms[0].elements[0]);
	<%end if %>
	   	 break;   
    case "U" :       
   		<% If Session("BROWSER_TYPE") = "IE" Then%>
		document.all['three'].style.visibility='visible';
		 document.all['two'].style.visibility= 'hidden';
		 document.all['one'].style.visibility= 'hidden';
 		 getType(document.Purge3.TranType);
		<% else %>
	 	document.layers['three'].visibility='visible';
		document.layers['two'].visibility= 'hidden';
		document.layers['one'].visibility= 'hidden';
		getType(document.layers['three'].document.forms[0].elements[0]);
		<%end if%>
	   break; 
     
     default :    
    	<% If Session("BROWSER_TYPE") = "IE" Then%>
			document.all['one'].style.visibility='visible';
			document.all['two'].style.visibility= 'hidden';
			document.all['three'].style.visibility= 'hidden';
			getType(document.Purge1.DealType);
    	 <% else %>
			document.layers['one'].visibility='visible';
			document.layers['two'].visibility= 'hidden';
			document.layers['three'].visibility= 'hidden';
			getType(document.layers['one'].document.forms[0].elements[0]);
		<%end if%>
	  break; 
  }
}

function getType(NameType)
{
//alert(NameType);
document.PURGE_form.hNxxType.value=NameType.options[NameType.selectedIndex].value;

}
