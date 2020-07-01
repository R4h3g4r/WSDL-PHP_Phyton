<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="comprobante">
		<xsl:value-of select="cabecera1" /><xsl:text> </xsl:text><xsl:value-of select="nombre-cliente"/><xsl:text>:&#xA;&#xA;</xsl:text>
		<xsl:value-of select="cabecera2" /><xsl:text> </xsl:text><xsl:value-of select="fecha-recarga" /><xsl:text> </xsl:text>
		<xsl:value-of select="cabecera3" />
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Identificador             : </xsl:text><xsl:value-of select="celular"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Monto de Recarga          : $</xsl:text><xsl:value-of select="monto"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Compañia                  : </xsl:text><xsl:value-of select="compania"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Cuenta de Cargo           : </xsl:text><xsl:value-of select="cuenta-cargo"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Numero Comprobante        : </xsl:text><xsl:value-of select="numero-comprobante"/>
		<xsl:text>&#xA;&#xA;</xsl:text>

		<xsl:value-of select="pieInfo" /><xsl:text> </xsl:text><xsl:value-of select="pieFono" />
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:value-of select="firma" />
		<xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="firmaSlogan" />
		<xsl:text>&#xA;&#xA;</xsl:text>
		
		<xsl:value-of select="nota" />
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- </xsl:text><xsl:value-of select="punto1" />
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- </xsl:text><xsl:value-of select="punto2" />
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- </xsl:text><xsl:value-of select="punto3" />

	</xsl:template>
</xsl:stylesheet>