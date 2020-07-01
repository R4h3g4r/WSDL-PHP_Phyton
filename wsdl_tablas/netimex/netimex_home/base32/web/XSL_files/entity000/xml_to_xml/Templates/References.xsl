<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cmp=" http://www.bolero.net/io/xmlns/header/1.0">
<!-- now this is the template without data, because References section data (referenceValue and referenceQualifier) -->
<!-- completely is used in  Header element -->
	<xsl:template name="References">
		<xsl:element name="References">
			<xsl:element name="referenceQualifier">
		</xsl:element>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
