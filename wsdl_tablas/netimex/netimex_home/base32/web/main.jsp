<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%@ page import="netimex.util.*"%>

<%
class jUtils
{
  private Hashtable p;

  public jUtils(Hashtable parms)
  {
   p=parms;
  }


  public String get(String sKey)
  {
   sKey=sKey.toLowerCase();
   Object o = p.get(sKey);
   if (o == null)
      return "";
   else
      return o.toString();
  }



}
%>


<%
// prepare date field
	String now;
	Date dt = new Date();
	SimpleDateFormat f = new SimpleDateFormat("EEE, MMM d, yyyy");
	now = f.format(dt);
	Hashtable hashJspParam;
// get external parameters
	String key = request.getParameter("key");
	if(key != null){
		hashJspParam = (Hashtable)JetImexUtils.getJspEntry(key);
	}else{
		hashJspParam = new Hashtable();			        
	}
	jUtils c = new jUtils(hashJspParam);
        
%>


