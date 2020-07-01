var caution = false;
var bClose=false;
////////////////////////////////////////////////////////////////////////
function setCookie(name, value, expires, path, domain, secure) 
 {
//changes start
	mytoken = new String("token");
	sName = new String(name);
	sName=mytoken.concat(sName);
//changes end
      var curCookie = sName + "=" + escape(value) +
         ((expires) ? "; expires=" + expires.toGMTString() : "") +
         ((path) ? "; path=" + path : "") +
         ((domain) ? "; domain=" + domain : "") +
         ((secure) ? "; secure" : "")   
      if (!caution || (sName + "=" + escape(value)).length<= 4000)
         document.cookie = curCookie
      else
         if (confirm("Cookie exceeds 4KB and will be cut!"))
            document.cookie = curCookie
   }

 function getCookie(name) 
 {
//changes start
	mytoken = new String("token");
	sName = new String(name);
	sName=mytoken.concat(sName);
      	var prefix = sName + "="
//changes end
        var cookieStartIndex = document.cookie.indexOf(prefix)
      if (cookieStartIndex == -1)
         return null
      var cookieEndIndex = document.cookie.indexOf(";", cookieStartIndex +
         prefix.length)
      if (cookieEndIndex == -1)
         cookieEndIndex = document.cookie.length
     
      return unescape(document.cookie.substring(cookieStartIndex +
         prefix.length,cookieEndIndex))
   }
   
  function fixDate(date) 
  {
      var base = new Date(0)
      var skew = base.getTime()
      if (skew > 0)
         date.setTime(date.getTime() - skew)
   }

function deleteCookie(name, path, domain) 
{
      if (getCookie(name)) {
         document.cookie = name + "=" +
         ((path) ? "; path=" + path : "") +
         ((domain) ? "; domain=" + domain : "") +
         "; expires=Thu, 01-Jan-70 00:00:01 GMT"
      }
}
///////////////////////////////////////////////////////////////////////////////
var now = new Date();
fixDate(now);
now.setTime(now.getTime() + 365 * 24 * 60 * 60 * 1000)

if (getCookie(sessionid)==null) setCookie(sessionid,0,now);

if (getCookie(sessionid)!=0)

	window.setInterval("closeWin()",100);

else
	setCookie(sessionid,1,now);

function closeWin()
{
	bClose=true;window.close();
}

function unloadWin()
{		
	
	if (!bClose) setCookie(sessionid,0,now);
}

