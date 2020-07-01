// set global variables to act as switches elsewhere
var isNav4 = ((parseInt(navigator.appVersion) >= 4) && (navigator.appName == "Netscape"))
var isIE4 = ((parseInt(navigator.appVersion) >= 4) && (navigator.appName.indexOf("Microsoft") >= 0))
var width = 350
var top;
var left        // will hold left coordinate of panel centered left-to-right
 if (isNav4) {
        // use Navigator-specific geometry to determine left position
        left = (window.innerWidth ) / 2
        // create wait panel as a LAYER (needed for a fixed-width element)
        document.write("<LAYER ID='wait' LEFT=" + left + " TOP=150 WIDTH=" +
        width + "  VISIBILITY='hidden'>")
        document.write("<font id='errorLabel'><%getErrorMsg(NMX10008)%></font>")

         document.write("</LAYER>")
} else if (isIE4) {
        // use IE-specific geometry to determine left position
        left = (document.body.clientWidth) / 2;
        top = (document.body.clientHeight/2+100);

        // create wait panel as a DIV
        document.write("<DIV ID='wait' STYLE='position:absolute; left:" + left +
       ";height:30;top:"+top+"; width:" + width + ";VISIBILITY: hidden; border:none; border:none;background-color: #FFFFFF; layer-background-color: #FFFFFF; '>")
         document.write("<table border=thin width=100% height=100%><tr><td align='center'><font id='errorLabel'><%getErrorMsg(NMX10008)%></td></tr></table>");

            document.write("<BR></DIV>");


   }

function signInProcess(){

 if (isNav4) {
                document.wait.visibility ="visible";
}
  else
 {
 document.all.wait.style.visibility = "visible";
   document.body.style.cursor ='wait';
   }


}
