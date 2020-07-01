<%if (request.getParameter("sendMail") != null) {
	surecomp.mail.util.EIMessage eiMessage = new surecomp.mail.util.EIMessage();
	eiMessage.setSender(request.getParameter("sender"));
	eiMessage.addReciient(request.getParameter("receiver"));
	eiMessage.setSubject(request.getParameter("subject"));
	eiMessage.setBody(request.getParameter("body"));
	try {
		out.println(
			"trying to send mail <br>from:"
				+ request.getParameter("sender")
				+ " <br>to:"
				+ request.getParameter("receiver")
				+ "<br>");
		surecomp.mail.util.EIWrapper.sendMail(eiMessage);
		out.println("<br><font color='green'>mail sent successfully</font>");
	} catch (Throwable tr) {
		out.println("<br><br><font color='red'>error:<br/>" + tr+"</font>");
		tr.printStackTrace();
	}
}
%>
<HTML>
<BODY>
<p>Test Mail Session using Surecomp Wrapper</p>
<FORM method="POST" action="#">
<P>Sender: <INPUT type="text" name="sender" size="20"></P>
<P>Receiver: <INPUT type="text" name="receiver" size="20"></P>
<P>Subject: <INPUT type="text" name="subject" size="20"></P>
<P>Body: <textarea name="body" cols="60" rows="5"></textarea></P>
<P align="center"><INPUT type="submit" name="sendMail" value="Submit"></P>
</FORM>
</BODY>
</HTML>
