<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	
	<xsl:template match="DateDetails">
	  <xsl:variable name="DocDesc" select="document('..\Code Lists\datequalifier.xml')" />
 	  <xsl:variable name="ID" select="dateQualifier" />
	    <!-- Put the sections headers in a table row at the top of the table -->
	    <tr align="left">
		 <!-- <td><xsl:value-of select="./dateQualifier"/></td-->
              <!-- These lines produce the description of the qualifier from $DocDesc -->
		   <xsl:for-each select="$DocDesc//*[code = $ID]">
			<th align="left" width="100px"><xsl:value-of select="name" /></th>
		   </xsl:for-each>
	       <td align="left" width="500px"><xsl:value-of select="./dateValue"/></td>
	    </tr>
	    <!-- Produce the table rows that contain the actual entries. This is a function call of the template
	     with 'name' rowCounter, called with a parameter of 1, i.e. rowCounter(1). 
	    <xsl:call-template name="rowCounter">
	      <xsl:with-param name="N" select="1"/>
	   </xsl:call-template-->
	</xsl:template>

	<!-- xsl:template match="dateQualifier">
	   <th><xsl:text>BEFORE</xsl:text></th>
	   <th><xsl:value-of select="."/></th>
	   <th><xsl:text>AFTER</xsl:text></th>
	</xsl:template>

	<xsl:template name="rowCounter">
	   <xsl:param name="N" />
	    If there are any entries in any section 
	    with a  position number of $N then we produce a
	    new table row 
	   xsl:if test="dateValue[ $N ]">
	     <TR>-
	       We produce a TD for each section, which contains a processed entry if there was an
	       N-th entry in the section. 
	       xsl:for-each select="DateDetails">
	        <TD>
	          <xsl:apply-templates select="dateValue[ $N ]"/>
	          <xsl:text> </xsl:text>
	           This space is needed to stop us getting empty TD elements which XT outputs as <TD/> which
		     Netscape doesn't like. 
	         /TD>
	      </xsl:for-each>
	      The recursive call for the next larger
	       value of N 
	     xsl:call-template name="rowCounter">
	       <xsl:with-param name="N" select="$N + 1"/>
	     </xsl:call-template>
	     </TR>
	   </xsl:if>
	</xsl:template-->






</xsl:stylesheet>