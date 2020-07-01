<%
	try{
		netimex.framework.JSLoader.getInstance().loadAllJavascripts();
		out.print("javascript files where reloaded!");	
	}catch(Throwable t){
		out.print(t.getMessage());
		t.printStackTrace();
	}		
		
%>