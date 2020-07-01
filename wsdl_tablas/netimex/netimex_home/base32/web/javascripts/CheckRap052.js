function CheckRap052()
{

var Sight="";
var NameStr;
Sight=javascript:GetSight();
NameStr=(document.<%getPageName()%>_form.collect_type[document.<%getPageName()%>_form.collect_type.selectedIndex].value);
//NameStr+='<%getLanguage()%>';

if (Rap052ChkLoop(NameStr,Sight)) 
   { return true; }
else 
   { 
   //document.<%getPageName()%>_form.collect_type.focus();
   //alert("<%getError("cmx00021")%>");
   javascript:DisplayErrorMsg(document.<%getPageName()%>_form.collect_type, "<%getError(cmx00021)%>");
   return false; 
   }  

} 
//////////////////////////////////////////////////////////////////////////////////
function Rap052ChkLoop(NameStr,Sight)
{
if(document.<%getPageName()%>_form.sight==undefined)
{
	return true;
}

var SightStr = new String("")

x = document.Rap052.elements.length;

for (i=0;i<x;i++) 
 {
  if (document.Rap052.elements[i].name == NameStr) 
	 {
	  SightStr = document.Rap052.elements[i].value;
	  if (SightStr.indexOf(Sight) != -1)  
		 { return true; }
	 }
 }

return false;

}
//////////////////////////////////////////////////////////////////////////////////
