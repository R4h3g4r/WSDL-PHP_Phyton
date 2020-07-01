<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="TransactionInformation">
		<xsl:element name="TransactionInformation">
			<xsl:element name="CommercialInvoiceInformation">
				<xsl:copy>
					<xsl:copy-of select="DocumentRoot/GeneralInformation/TotalAmount"/>
				</xsl:copy>
			</xsl:element>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
