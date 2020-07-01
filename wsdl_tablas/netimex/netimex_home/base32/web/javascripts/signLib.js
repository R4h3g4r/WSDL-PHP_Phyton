
var logs = new Array();
function Log(message) {
     this.date = new Date();
     this.message = message;
}  

logs[logs.length] = new Log("message 0");
logs[logs.length] = new Log("message 1");

function logToString(log) {   
    return "" + log.date + ":  " + log.message;
}

function keyObject(keyId, keyName, keyValue, keyLocation)
{
	this.keyId		= keyId;
	this.keyName	= stringToISO88592Hex(keyName);
	this.keyValue	= keyValue;
	this.keyLocation= keyLocation;
}

var defKey = "";
var keysID = "||";
var	keysTable = new Array();

// required component version
var requiredActiveXVersion="1,0,0,35";
var requiredPluginVersion="1,0,0,35";
var requiredAppletVersion="1,0,0,40";

var requiredComponentVersion="1,0,0,18";


// component status
//   N - komponent nie wykryty
//   I - komponent nie wykryty, trwa instalacja
//   O - komponent istnieje, ale wersja komponentu nie jest aktualna, wymaga instalacji
//   Y - komponent istnieje i nadaje sie do uzytku
var componentStatus = "N";
var componentVersion;
  
// component type
//   "" - brak
//   A - ActiveX
//   P - Plugin
//   J - Java Applet
var componentType = "";
var SignComponent;   // global variable - reference to Signatory Component

// czy komponent zostal zainicjowany kluczami
var isComponentInitialized = false;

var keysNumber = 0;
var keysError = false;

/*
 * Metoda uruchamiajaca podpisywanie dokumentu
 */
function signTr(formName)
{
	if (keysID.length<2) {
	alert(LANG_ERROR_MESSAGE_22);
	return;
	}
	var textToSign = formName.p_text.value;
	var signature = signOperation(keysID, defKey, textToSign);
	if(checkResult(signature)) {
    	formName.p_signed_text.value=getSignedText(signature);
	    formName.p_key_id.value=getKeyId(signature);
	    return true;
	} else if(!isCancelled(signature))
	    window.alert(LANG_SIGN_PROCESS_BREAK
	    + '\n' + getErrorMessage(getErrorCode(signature)));
}

function isCancelled(message) {
     var errorCode = getErrorCode(message);
     if(errorCode == 0x08)
       return true;
     return false;
   }

function checkResult(message) {
     if(getErrorCode(message) == 0x00)
       return true;
     return false;
   }

function getSignedText(signature) {
     var result = '';
	 var elements = getSignatureElements(signature);
	 if(elements && (elements.length >= 3))
	   result = elements[2]; 
	 return result;
   }
   function getKeyId(signature) {
     var result = '';
	 var elements = getSignatureElements(signature);
	 if(elements && (elements.length >= 2))
	   result = elements[1]; 
	 return result;
   }
 function getSignatureElements(signature) {
     var result = new Array();
     if(signature && (signature.length > 0)) {
	   var counter = -1;
	   var position, lastPosition = 0;
	   while((position = signature.indexOf('|', lastPosition)) != -1) {
	     counter ++;
	     if((position - lastPosition) > 0)
		   result[counter] = signature.substring(lastPosition, position);
		 else
		   result[counter] = '';
		 lastPosition = position + 1;
		 if(lastPosition > signature.length)
		   break;
	   }
	   if(lastPosition < signature.length) {
	     counter ++;
	     result[counter] = signature.substring(lastPosition, signature.length);
	   }
	 }
	 return result;
   }

function onLoad()
{
     initSignComponent();
     if(is_win && is_nav6up && (componentStatus != "Y")) {
       installPlugin((componentStatus == "O"))
     }
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

function init()
{
 if(is_win && is_ie4up) 
    {
    	document.write('   <object id="signObject" classid="clsid:92ECE6FA-AC2E-4042-BFAE-0C8608E52A43" codebase="components/SignActivX.cab#Version=');
    	document.write(requiredActiveXVersion);
    	document.write('">\n');
    	document.write('      Komponent podpisuj±cy nie zosta³ za³adowany.\n');
    	document.write('   </object>');
    
    	requiredComponentVersion = requiredActiveXVersion;
    	componentType = "A";
    } 
    else if(is_win && is_nav6up)
    {
    	document.write('   <embed name="name" type="application/sign-plugin" width="1" height="1" hidden="true"></embed>\n');
    
    	requiredComponentVersion = requiredPluginVersion;
    	componentType = "P";
    }
    else
    {
    	document.write('   <applet\n');
    	document.write('     archive="components/SignApplet.jar"\n');
    	document.write('     code   ="signaplet.SignAplet.class"\n');
    	document.write('     name   = "SignApplet"\n');
    	document.write('     width  = "550"\n');
    	document.write('     height   = "20"\n');
    	document.write('     hspace   = "0"\n');
    	document.write('     vspace   = "0"\n');
    	document.write('     align    = "middle"\n');
    	document.write('   >\n');
    	document.write('      Applet sie nie za³adowa³\n');
    	document.write('   </applet>\n');
    
    	requiredComponentVersion = requiredAppletVersion;
    	componentType = "J";
    }
}

function initSignComponent() 
{
 if (componentType=="A") 
 {   if (signObject)
	 {
	   SignComponent = signObject;
	   //logs[logs.length] = new Log("SignComponent = "+SignComponent);
	 }
 } 
 else if (componentType=="P")
	 SignComponent = document.embeds[0];
 else
	 SignComponent = document.SignApplet;
 setComponentStatus();
}

function isComponentActive()
{
 logs[logs.length] = new Log("checkComponent():"+ componentStatus);
 if(componentStatus=="Y") 
   return true;
 return false;
}

function setComponentStatus() {
 //logs[logs.length] = new Log("setComponentStatus()");
 componentVersion = isComponentInstalled();
 if(!componentVersion)
   componentStatus = "N";
 //else if(isInstalledCorrectVersion())
 else if(true)
   componentStatus = "Y";
 else
   componentStatus = "O";
// logs[logs.length] = new Log("  componentStatus = "+componentStatus);
}

/*
 * Ustawienie kluczy w komponencie
 */
function setKeys()
{
 if(isComponentActive()) {
   for(var idx = 0; idx < keysTable.length; idx++) {
	 var result = ""+SignComponent.SetKey(
	   keysTable[idx].keyId, keysTable[idx].keyName, 
	   keysTable[idx].keyValue, keysTable[idx].keyLocation);
	 var errorCode = -1;
	 if((errorCode = getErrorCode(result)) != 0x00) {
	   alert(LANG_INIT_COMPONENT_01 
		 + keysTable[idx].keyId 
		 + LANG_INIT_COMPONENT_02 + '\n' 
		 + getErrorMessage(errorCode));
	   keysError++;
	 }
	 else
		 keysNumber++;
   }
   isComponentInitialized = true;
 }
 return isComponentInitialized;
}

// return 'null' value if not installed or version number if installed
function isComponentInstalled()
{
 if(SignComponent != null) {
   logs[logs.length] = new Log("SignComponent != null");
   try {
	 var testRes = ""+SignComponent.TestComponent();
	 logs[logs.length] = new Log("TestComponent result "+testRes);
	 var arr = testRes.split('|');
	 if(arr[0] == 'OK')
	   return arr[1];
   } catch (err) {	
	 logs[logs.length] = new Log("TestComponent error:"+err);
	 return null;	
   }
 }
 return null;		
} 

 // ------------------- Funkcje wywolywane przy operacjach na komponencie
   function isComponentActive() {
	 logs[logs.length] = new Log("checkComponent():"+ componentStatus);
     if(componentStatus=="Y") 
       return true;
     return false;
   }
   function signOperation(signatoryKeys, defSignatoryKeys, textToSign) {
	 logs[logs.length] = new Log("signOperation()");
     var signature = '';
     if(isComponentActive())
       signature = ""+SignComponent.Sign(signatoryKeys, defSignatoryKeys, textToSign);
     return signature;
   }
   function signLogin(signatoryKeys, textToSign) {
	 logs[logs.length] = new Log("signLogin()");
     var signature = '';
     if(isComponentActive())
       signature = ""+SignComponent.Sign2(textToSign ,signatoryKeys);
     return signature;
   }

function getErrorCode(message)
{
 var result = -1;
 var messageText = new String(message);
 if(messageText.length > 0) {
   var position = messageText.indexOf('|', 0);
   var textErrorCode = null;
   if(position != -1)
	 textErrorCode = messageText.substring(0, position);
   else
	 textErrorCode = messageText;
   if(textErrorCode.length > 0) {
	 var errorCode = parseInt(textErrorCode);
	 if(!isNaN(errorCode))
	   result = errorCode;
   }
 }
 return result; 
}

function getErrorMessage(errorCode) 
{
 if((errorCode == 0x00) || (errorCode == 0x08))
   return '';
 var errorMessage = '';
 //if(errorCode != -1)
 //  errorMessage += 'Kod b\u0142\u0119du: ' + errorCode + '.';
 errorMessage = LANG_SIGN_PROCESS_FAIL;
 switch(errorCode) {
   case -1: errorMessage = LANG_ERROR_MESSAGE;
			break;
   case 0x01: errorMessage += LANG_ERROR_MESSAGE_01; break;
   case 0x02: errorMessage += LANG_ERROR_MESSAGE_02; break;
   case 0x03: errorMessage += LANG_ERROR_MESSAGE_03; break;
   case 0x04: errorMessage += LANG_ERROR_MESSAGE_04; break;
   case 0x05: errorMessage += LANG_ERROR_MESSAGE_05; break;
   case 0x06: errorMessage += LANG_ERROR_MESSAGE_06; break;
   case 0x07: errorMessage += LANG_ERROR_MESSAGE_07; break;
   case 0x08: errorMessage += LANG_ERROR_MESSAGE_08; break;
   case 0x09: errorMessage += LANG_ERROR_MESSAGE_09; break;
   case 0x10: errorMessage += LANG_ERROR_MESSAGE_10; break;
   case 0x12: errorMessage += LANG_ERROR_MESSAGE_12; break;
   case 0x13: errorMessage += LANG_ERROR_MESSAGE_13; break;
   case 0x14: errorMessage += LANG_ERROR_MESSAGE_14; break;
   case 0x15: errorMessage += LANG_ERROR_MESSAGE_15; break;
   case 0x17: errorMessage += LANG_ERROR_MESSAGE_17; break;
   case 0x19: 
   case 0x1A: 
   case 0x1B: 
   case 0x1C: 
   case 0x1E:
   case 0x1F:
	 errorMessage += LANG_ERROR_MESSAGE_1F;
	 errorMessage += '\n' + LANG_ERROR_MESSAGE_CODE + errorCode + '.';
	 break;
   case 0x1D: errorMessage += LANG_ERROR_MESSAGE_1D; break;
   case 0x20: errorMessage += LANG_ERROR_MESSAGE_20; break;
   case 0x22: errorMessage = LANG_ERROR_MESSAGE_22;break;
   case 0x23: errorMessage += LANG_ERROR_MESSAGE_23; break;
   case 0x24: errorMessage += LANG_ERROR_MESSAGE_24; break;
   case 0x25: errorMessage += LANG_ERROR_MESSAGE_25; break;
   case 0x27: errorMessage += LANG_ERROR_MESSAGE_27; break;
   case 0x28: errorMessage += LANG_ERROR_MESSAGE_28; break;
   case 0x29: errorMessage += LANG_ERROR_MESSAGE_29; break;
   
   case 0x21: errorMessage += LANG_ERROR_MESSAGE_21; break;
   case 0x30: errorMessage += LANG_ERROR_MESSAGE_30; break;
   case 0x31: errorMessage += LANG_ERROR_MESSAGE_31; break;
   case 0x32: errorMessage += LANG_ERROR_MESSAGE_32; break;
   case 0x33: errorMessage += LANG_ERROR_MESSAGE_33; break;
   case 0x34: errorMessage += LANG_ERROR_MESSAGE_34; break;
   case 0x35: errorMessage += LANG_ERROR_MESSAGE_35; break;
   case 0x36: errorMessage += LANG_ERROR_MESSAGE_36; break;
   case 0x37: errorMessage += LANG_ERROR_MESSAGE_37; break;
   case 0x38: errorMessage += LANG_ERROR_MESSAGE_38; break;
   case 0x39: errorMessage += LANG_ERROR_MESSAGE_39; break;
   case 0x40: errorMessage += LANG_ERROR_MESSAGE_40; break;
   case 0x41: errorMessage += LANG_ERROR_MESSAGE_41; break;
   case 0x42: errorMessage += LANG_ERROR_MESSAGE_42; break;
   case 0x60: errorMessage += LANG_ERROR_MESSAGE_60; break;
   default: 
	 errorMessage += LANG_ERROR_MESSAGE_CODE + errorCode + '.';
 }
 return errorMessage;
}


function installPlugin(upgrade) {
     var question = "";
	 if(upgrade)
       question = LANG_CUESTION_01;
	 else
       question = LANG_CUESTION_02;
	 showDialogToInstal(question);
   }
   function showDialogToInstal(sQuestion) {
	var sYes = 'TAK';
	var sNo  = 'NIE';
	if(LANG_LANG_ID && LANG_LANG_ID=='1') {sYes = 'YES';sNo  = 'NO';} else if (LANG_LANG_ID && LANG_LANG_ID=='2') {sYes = 'JA';sNo  = 'NEIN';}
		
	var sX = 0, sY = 0;
	sX = screen.availWidth/2-180;
	sY = screen.availHeight/2-50;
	
	var installPluginContent = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"><html><head><title>Bank BPH</title></head>"+
"<LINK href=\"../../static/css/bphpbk_t.css\" type=\"text/css\" rel=\"stylesheet\"><body>"+
"<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=350><tr><td align=center>"+
sQuestion+
"</td></tr><tr><td height=\"20\">&nbsp;</td></tr>"+
"<tr><td>"+
"<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=100%>"+
"<tr><td align=\"center\"><a href=\"components/SignPluginInstall.xpi\" target=\"_self\"><span class=\"buttons\" onmouseover=\"this.style.cursor='hand'\"><span style=\"PADDING-TOP=2;\">&nbsp;"+sYes+"&nbsp;</span></span></a></td>"+
"<td align=\"center\"><a href=\"javascript:self.close();\"><span class=\"buttons\" onmouseover=\"this.style.cursor='hand'\"><span style=\"PADDING-TOP=2;\">&nbsp;"+sNo+"&nbsp;</span></span></a></td></tr></table>"+
"</td></tr></table></body></html>";
	
	var installPlugin = window.open( '../../blank.html', 'InstallPluginWindow', 'left='+sX+',top='+sY+',width=360,height=100,resizable=0,location=0,menubar=0,scrollbars=0,status=0,toolbar=0' );
	installPlugin.document.open(); 
	installPlugin.document.write(installPluginContent); 
	installPlugin.document.close(); 	
}
