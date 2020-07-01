<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="GeneralInformation">
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'General Information'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template match="eucpVersion"> 
		<xsl:call-template name="generalDescAsValue">
			<xsl:with-param name="ID" 			select="'eUCP Version'"/>
			<xsl:with-param name="Value"		select="."/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="acceptanceToAdvise"> 
		<xsl:call-template name="generalDescAsValue">
			<xsl:with-param name="ID" 			select="'Acceptance To Advise'"/>
			<xsl:with-param name="Value"		select="."/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="advisingBankConfirmed"> 
		<xsl:call-template name="generalDescAsValue">
			<xsl:with-param name="ID" 			select="'Advising Bank Confirmed'"/>
			<xsl:with-param name="Value"		select="."/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="presentationCompleteness"> 
		<xsl:call-template name="generalDescAsValue">
			<xsl:with-param name="ID" 			select="'Presentation Completeness'"/>
			<xsl:with-param name="Value"		select="."/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="PlaceForPresentation">
		<br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Place For Presentation'"/>
			<xsl:with-param name="Node"	select="./*"/>
			<xsl:with-param name="SubBox"	select="'Yes'"/>
		</xsl:call-template><br/>
	</xsl:template>

</xsl:stylesheet>