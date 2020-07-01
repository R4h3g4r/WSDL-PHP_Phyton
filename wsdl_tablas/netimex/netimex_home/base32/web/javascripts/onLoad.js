function onLoad()
{
	//try - catch --> ignore, since this script is available only within BPH env
     try{
     	initSignComponent();
     }catch(ex){}
     try{
	     if(is_win && is_nav6up && (componentStatus != "Y")) {       
	       	installPlugin((componentStatus == "O"))       	
	     }
     }catch(ex){}
     try{
	     if (!is_win && componentStatus == "N")
	     {   
	     	 componentStatus = "I";
	    	 //startTimer();
	         //alert("wystartowano timer:"+timerID);
	     }
	     else
	     {	
	     	setKeys();       
	     }
	  }catch(ex){}
     //updateStatusFrame();
     loaded = true;  // set global flag
     //printLogs();
     try {
     	SignComponent.SetSignDialogType(2);
     } catch (ex) {
     }
     try {
     	SignComponent.SetLanguage(LANG_LANG_ID);
     } catch (ex) {
     }
}
