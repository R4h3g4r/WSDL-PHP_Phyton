//////////////////////////////////////////////////////////////////////////////////
function CheckAp200(){
var NameStr="";
var Elem;
var Temp;
    NameStr=GetSight();
if (NameStr=="I") 
   { //NameStr = "I";
     Temp=javascript:Ap200ChkLoop(NameStr,"i");
     if (Temp=="1") 
	  {return true;}
	  else if (Temp=="0") {return false;}
	  NameStr= "N";
   }
Temp=javascript:Ap200ChkLoop(NameStr,"");
if (Temp=="1") 
  {return true;}
else if (Temp=="0") {return false;}   
} 

//////////////////////////////////////////////////////////////////////////////////
