<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="Internals">
		<xsl:param name="isdeal_no">yes</xsl:param>
		<xsl:param name="isreference_no">yes</xsl:param>
		<xsl:param name="iscustomer_id">yes</xsl:param>
		<xsl:param name="iscustomer_name">yes</xsl:param>
		<xsl:param name="isstreet">yes</xsl:param>
		<xsl:param name="iscity">yes</xsl:param>
		<xsl:param name="iscountry">yes</xsl:param>

		<xsl:element name="Internals">
			<xsl:copy>
				<xsl:copy-of select="DocumentRoot/Internals"/>
			
			</xsl:copy>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
