<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="comprobante">
	
		<xsl:value-of select="para"/><xsl:text> </xsl:text><xsl:value-of select="nombreCliente"/><xsl:text>:&#xA;&#xA;</xsl:text>
		<xsl:value-of select="cuerpo"/><xsl:value-of select="numVerificacion"/>
		<xsl:value-of select="cuerpo2"/>
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:value-of select="tituloDetalle"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:for-each select="listaBeneficiarios">
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Rut Destino:</xsl:text> <xsl:value-of select='format-number(rutBene, "########")'></xsl:value-of><xsl:text> | Nombre Destinatario:</xsl:text><xsl:value-of select="nombreBene"></xsl:value-of>
			<xsl:text> | Cuenta Destino:</xsl:text><xsl:value-of select='format-number(cuentaBene, "##################")'></xsl:value-of><xsl:text> | Banco Destino:</xsl:text><xsl:value-of select="bcoDestino"></xsl:value-of>	
		</xsl:for-each>
		
		<xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="pie"/>
	</xsl:template>
</xsl:stylesheet>