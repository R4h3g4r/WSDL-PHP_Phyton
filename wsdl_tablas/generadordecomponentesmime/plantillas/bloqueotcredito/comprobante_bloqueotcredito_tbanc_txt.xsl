<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="comprobante">
		<xsl:text>Estimado(A) : </xsl:text><xsl:value-of select="bloqueos/nombre-completo" /><xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Le informamos que se ha realizado el Bloqueo de la(s) Tarjeta(s) de Crédito.</xsl:text><xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Su número de comprobante es: </xsl:text><xsl:value-of select="bloqueos/numero-comprobante" />.
		<xsl:text>&#xA;&#xA;</xsl:text>

		<xsl:for-each select="bloqueos/tarjeta">

			<xsl:text>Número de Tarjeta       : </xsl:text><xsl:value-of select="nombre-tarjeta"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Código de Bloqueo       : </xsl:text><xsl:value-of select="codigo-bloqueo"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Hora                    : </xsl:text><xsl:value-of select="hora-bloqueo"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Fecha                   : </xsl:text><xsl:value-of select="fecha-bloqueo"/>
			<xsl:text>&#xA;&#xA;</xsl:text>

		</xsl:for-each>

		<xsl:text>- Has recibido este correo electrónico porque realizaste alguna transacción en TBanc.cl que requiere de tu atención.</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- Por favor no respondas a este correo electrónico. Para consultas o sugerencias visítanos en TBanc.cl, envíanos un correo electrónico a TBanc@bci.cl o llama al 600 524 2424.</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- Los tíldes en el asunto de este mail han sido omitidos intencionalmente.</xsl:text>
		
	</xsl:template>
</xsl:stylesheet>