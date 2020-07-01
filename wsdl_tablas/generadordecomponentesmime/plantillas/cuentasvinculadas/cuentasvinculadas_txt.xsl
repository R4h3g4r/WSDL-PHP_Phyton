<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="correoCuentasVinculadas">
	   
		<xsl:text> Estimado(a) </xsl:text> <xsl:value-of select="nombreCliente" /> : 
		<xsl:text> Con fecha </xsl:text> <xsl:value-of select="fechaActual" />  <xsl:text> se ha vinculado a Ud. la Cuenta Corriente N° </xsl:text> <xsl:value-of select="ctaCliente" />
        <xsl:text> perteneciente a nuestro cliente </xsl:text>  <xsl:value-of select="nombreAutoriza" /> <xsl:text>  quien lo autoriza a realizar servicios de consulta para dicha cuenta. </xsl:text>
		<xsl:text> Atentamente </xsl:text> 
        <xsl:text> Bci </xsl:text>

	</xsl:template>
</xsl:stylesheet>