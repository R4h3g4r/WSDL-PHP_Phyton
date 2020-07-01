var tInterval;
function getTimer(){

var now = new Date();
// Make sure hours are displayed as two-digits
var MyHour = now.getHours();
if ( MyHour < 10 ) {
MyHour = '0' + MyHour;
}
// Make sure minutes are displayed as two-digits
var MyMin = now.getMinutes();
if ( MyMin < 10 ) {
MyMin = '0' + MyMin;
}
var theDateTime = "\n\n<%getError(NMX00186)%> "+MyHour +":"+ MyMin;
alert("<%getError(NMX00185)%>"+theDateTime );
 window.clearInterval (tInterval);
 tInterval = "";
 //window.setInterval('document.location=document.location', 300000);

return;
}
tInterval = window.setInterval("getTimer()", <%getTimeOut()%>);

 
