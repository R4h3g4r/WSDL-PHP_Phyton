<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="correoMasSolicitarInformacion">
        <xsl:text> Estimado Cliente </xsl:text> <xsl:value-of select="nombreCliente" /><xsl:text>:</xsl:text>
	    <xsl:text> Se ha generado con éxito su solicitud N°  </xsl:text> <xsl:value-of select="numeroEventoSolicitudInformacion" />
		<xsl:text> Lo contactaremos dentro de las próximas 48 horas. Podrá realizar seguimiento a esta solicitud a través de la opción  Servicio al Cliente Bci, ingresando con su rut y clave a www.bci.cl  </xsl:text>
	    <xsl:text> Atentamente </xsl:text>
        <xsl:text>  Bci </xsl:text>
	</xsl:template>
</xsl:stylesheet>