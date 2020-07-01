<%@ include file="main.jsp"%>
<HTML>
<HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<TITLE></TITLE>
</HEAD>
<BODY ONLOAD="window.print()">

<P ALIGN="center"></P>
<font face="Arial">
<FONT SIZE="-1">
<P ALIGN="center">
<%if(c.get("trntransaction_type").equals("AMD")) {%>
<b>APPLICATION FOR AMEND LETTER OF CREDIT</b>
<%}%>
<%if(c.get("trntransaction_type").equals("ISS")) {%>
<b>APPLICATION FOR DOCUMENTARY CREDIT</b>
<%}%>


	

</P>

<TABLE WIDTH=100% BGCOLOR=white BORDERCOLOR=white BORDER=0 CELLSPACING=1 CELLPADDING=1>
<td><FONT SIZE="-1">
 &nbsp &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  <%//=FormatDateTime(Date,1)	 %>
     <br>
 TO: <%=c.get("trnentity_d")%>   
 <!--The Bank of Nova Scotia, Hong Kong-->
<%if(c.get("trntransaction_type").equals("ISS")) {%>	 
<br>
  I/We request you to issue on my/our behalf and for my/our 
<%}%>
<%if(c.get("trntransaction_type").equals("AMD")) {%>	 
<br>
  I/We request you to amend on my/our behalf and for my/our 
<%}%>  
<br>
  account your irrevocable Documentary Credit in accordance 
<br>
  with the following instructions

</td>
<td><FONT SIZE="-1">

<table border = 1 WIDTH=100%>
<tr>  
    <th  align = center colspan = 2><FONT SIZE="-1">FOR BANK USER ONLY</th>
</tr>
<tr>
<%if(c.get("trntransaction_type").equals("ISS")) {%>	
    <th align = left  colspan = 2 ><FONT SIZE="-1">CREDIT NO.</th>
<%}%>
<%if(c.get("trntransaction_type").equals("AMD")) {%>	
    <th align = left  colspan = 2 ><FONT SIZE="-1">DEAL NO.:&nbsp &nbsp<%=c.get("trndeal_no")%></th>
<%}%>   
</tr>
<tr>
    
    <th align = left colspan = 2 ><FONT SIZE="-1">APPROVED BY</th>
    
</tr>
<tr>
    <th align = left  ><FONT SIZE="-1">EXCH.RATE   &nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
    <th align = left  ><FONT SIZE="-1">COMM&nbsp &nbsp &nbsp &nbsp
   </th>
</tr>

</table>
</td>
</table>


<TABLE WIDTH=100%  BORDER=1 CELLSPACING=1 CELLPADDING=1>
	
	    
    
	
	<TR>
		<Td  ><FONT SIZE="-1"><B>ADVISING BANK </B>
		   <br>
		   <%=c.get("ADV_name")%>   
		   <br>  
		  
		   <%=c.get("ADV_street")%>    
           <br>
          
           <%=c.get("ADV_city")%>
           <br>
           <%=c.get("ADV_country")%>  
		   </font>
		</td>
		<td valign=top><FONT SIZE="-1"><B>TO BE ISSUED BY : </B>
        <%=c.get("trnsend_by_d")%>  
       
               <hr>
        <B>AMOUNT:</B>
        <br>
          
         <%=c.get("trnamount")%> &nbsp  <%=c.get("trncurrency_d")%>
         <br>

        <B>AMOUNT TERMS:</B>
         <%=c.get("trnamount_terms_d")%>
         <br>

        <B>VARIED AMOUNT SUM:</B>
         <%=c.get("trnvrid_amount_sum")%>
         <br>

        <B>VARIED AMOUNT % +:</B>
         <%=c.get("trnvrid_amount_prc_plus")%> 
        <B>&nbsp;-</B>
         <%=c.get("trnvrid_amount_prc_minus")%>
         <br>

        <B>VARIED QUANTITY %:</B>
         <%=c.get("trnvrid_qnty_prcnt")%>
        </td>
    </tr>    
      
    <tr>
         	       
  	    <TD ><FONT SIZE="-1"><B>APPLICANT (NAME AND ADDRESS )</B>
          <br> 
		  <%=c.get("CUSTOMER_name") %>   
		 
	      <br>
		   <%=c.get("CUSTOMER_street") %>    &nbsp
           <%=c.get("CUSTOMER_city") %>
        
          <br>
           <%=c.get("CUSTOMER_country") %>   
        </td>
        <td valign=top><FONT SIZE="-1">
	       <B>EXPIRY DATE:</B>
	       
	          <%if(!c.get("trnexpiry_date").equals("") && !c.get("trnexpiry_date").equals(""))%>
		    <%{%>
		    <%=c.get("trnexpiry_date") %>
	          <%}%>
	       <br>
	       
	       PLACE OF EXPIRY : <%=c.get("trnexpiry_place") %>
	       <hr>
		   <B>TERMS OF DELIVERY :</B>
		    <%=c.get("trnincoterm_d") %>
	    </td>   
    </tr>
     	            
    <TR>
     <TD ><FONT SIZE="-1"><B>BENEFICIARY (NAME AND ADDRESS)</B>
      	<br>
      	<%=c.get("BNE_name") %>   
	    <br>
		<%=c.get("BNE_street") %>   
	    &nbsp
		<%=c.get("BNE_city") %>   
	    <br>	    
		<%=c.get("BNE_country") %>   
	 </td>   
	 <td valign = top ><FONT SIZE="-1">
        <b> SHIPMENT FROM </b>&nbsp
	        <%=c.get("trnshipment_from") %>
	    
	    <b>TO</b> &nbsp
	        <%=c.get("trnshipment_to") %>
         
	     
	        <B>NOT LATER THAN </B> 
	         <%if(!c.get("trnlatest_shipment_date").equals("") && !c.get("trnlatest_shipment_date").equals(""))%>
		   <%{%>
	           <%=c.get("trnlatest_shipment_date") %>
	           <%}%>
	   
        <hr>
          
            <B> PARTIAL SHIPMENT :  </B>  
            <%=c.get("TERML5_D") %>
	
               
        <hr>
        
	        <B> TRANSHIPMENT : </B>  
	        <%=c.get("TERML6_D") %>
	    
	  
	    </TD>    
	
    </tr>
    
	    
       
   
	    
 </TABLE>

<P ALIGN="justify"></P>
<P ALIGN="justify">&nbsp;</P>

<FORM id=form1 name=form1>
CREDIT AVAILABLE BY BENEFICIARY'S 
DRAFT(S) IN DUPLICATE AT   
    <%if(c.get("trnsight").equals("Y")) {%>
     <b>SIGHT</b>
    <%}%>
    <%if (c.get("trnsight").equals("I")) {%>
     <b>INSTALLMENTS</b>
    <%}%>
    <%if (c.get("trnsight").equals("N")) {%>
    <b> <%=c.get("trntenor_days")%></b> DAYS AFTER <b><%=c.get("trndraft_after_d")%></b>
    <%}%> 
<%if(c.get("trntransaction_type").equals("ISS")) {%>   
 DRAWN ON A BANK DESIGNATED BY THE ISSUING BANK AND 
ACCOMPANIED BY DOCUMENTS DETAILED HEREUNDER:</P>
<%}%>
<P ALIGN="justify">
<b>
<%=c.get("TEXTCMX02")%>
</b>
</P>
<P ALIGN="justify">
<b>
<%=c.get("TEXTCMX03")%>
</b>
</P>
<P ALIGN="justify"></P>
<P ALIGN="justify">
         
<P ALIGN="justify">
<%if(c.get("trntransaction_type").equals("ISS")) {%>
EVIDENCING SHIPMENTS OF :
<%}%>	
<b>
<P ALIGN="justify"></P>
<%=c.get("TEXTSYS04")%>
</b>
</P>
<P ALIGN="justify"></P>
<P ALIGN="justify"><b>ADDITIONAL CONDITIONS:</b></P>
<P ALIGN="justify"></P>
<P ALIGN="justify">DOCUMENTS TO BE PRESENTED 
within<b>&nbsp; &nbsp; <%=c.get("trndays_for_present") %></b> &nbsp&nbsp&nbsp DAYS AFTER THE DATE OF SHIPMENT BUT WITHIN THE VALIDITY 
OF THE CREDIT (IF NUMBER OF DAYS IS NOT SPECIFIED, "21" DAYS" 
WILL APPLY) </P>



<%if(c.get("TERML7").equals("T")){%>
<P ALIGN="justify">THIS CREDIT IS TRANSFERABLE.</P>
<%}%>
<%if(c.get("TERMLP").equals("Y")){%>
 <P ALIGN="justify">CONFIRMATION OF THIS CREDIT IS REQUESTED 
 </P>
  <P ALIGN="justify"></P>
<%}%>
<%if(c.get("TERMLP").equals("M")) %>
<%{%>
  <P ALIGN="justify">CONFIRMATION TO THIS CREDIT MAY BE ADDED 
  IF IT SO REQUIRED BY THE BENEFICIARY AT THEIR OWN EXPENSE.</P>
  <P ALIGN="justify"></P>
<%}%>

<P ALIGN="justify">IF TERMS OF SHIPMENT DOES NOT REQUIRE 
INSURANCE TO BE EFFECTED BY BENEFICIARY/SHIPPER, I/WE CONFIRM THAT INSURANCE COVERING THE 
ABOVE MENTIONED GOODS WILL BE EFFECTED BY ME/US.</P>
<P ALIGN="justify">
<b>
<%=c.get("TEXTSYS05")%>
</b>
</P>
<P ALIGN="justify">
<b>
<%=c.get("TEXTCMX01")%>
</b>
</P>
<P ALIGN="justify">
<b>
<%=c.get("TEXTCMX04")%>
</b>
</P>
<P ALIGN="justify">
<b>
<%=c.get("TEXTSYS03")%>
</b>
</P>
<P ALIGN="justify">IT IS DISTINCTLY AGREED THAT THIS APPLICATION AND YOUR ISSUANCE
OF THIS LETTER OF CREDIT SHALL BE SUBJECT IN ALL RESPECTS TO THE TERMS AND 
CONDITIONS CONTAINED IN THE AGREEMENT FOR COMMERICAL LETTER OF CREDIT SIGNED
BY US AND DELIVERED TO YOU. EXCEPT SO FAR AS OTHERWISE EXPRESSLY STATED THIS
LETTER OF CREDIT IS SUBJECT TO THE UNIFORM CUSTOMS AND PRACTICE FOR DOCUMENTARY
CREDITS (THE "UCP") AS MOST RECENTLY PUBLISHED BY THE INTERNATIONAL CHAMBER OF
COMMERCE.</P>
</DIR>
</DIR>
</DIR>
</DIR>
</DIR>
</DIR>
</DIR>

</DIR>
</DIR>

<P ALIGN="justify"></P>
<P ALIGN="justify">YOURS FAITHFULLY,</P>
</DIR>
</DIR>
</DIR>
</DIR>
</DIR>
</DIR>
</DIR>

</DIR>
</DIR>

<P ALIGN="justify"></P>
<P ALIGN="justify">AUTHORIZED SIGNATURE (S)</P>
<P ALIGN="justify"></P>
<P ALIGN="justify">&nbsp;</P>

<P ALIGN="justify">______________________________</P>

</FORM>
</BODY>
</HTML>
