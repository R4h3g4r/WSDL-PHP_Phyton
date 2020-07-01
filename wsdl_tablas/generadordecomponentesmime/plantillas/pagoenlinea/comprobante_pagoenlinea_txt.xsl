<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="comprobante">
		<xsl:text>Estimado(a) </xsl:text><xsl:value-of select="nombre-cliente"/><xsl:text>:&#xA;&#xA;</xsl:text>
		<xsl:text>Con fecha </xsl:text><xsl:value-of select="fecha-pago" />
		<xsl:text> se ha realizado el siguiente pago en linea:</xsl:text>
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Empresa           : </xsl:text><xsl:value-of select="empresa"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Servicio          : </xsl:text><xsl:value-of select="servicio"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Numero Cliente    : </xsl:text><xsl:value-of select="numero-cliente"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Cuenta            : </xsl:text><xsl:value-of select="cuenta"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Monto             : $</xsl:text><xsl:value-of select="monto"/>
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:if test="aviso-efectuo-pago != ''">
			<xsl:value-of select="aviso-efectuo-pago" />
			<xsl:text>&#xA;&#xA;</xsl:text>
		</xsl:if>
		<xsl:choose>
			<xsl:when test="$canal = '100' or $canal = '905'">
				<xsl:text>Para cualquier duda al respecto de este email, escribenos en el formulario de contacto en tbanc.cl o llamanos al fono 600 524 24 24.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Atentamente,</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>TBanc - El Banco a distancia</xsl:text>
			</xsl:when>
			<xsl:when test="$canal = '110' or $canal = '901'">
				<xsl:text>Para cualquier duda al respecto de este email, escribanos en el formulario de contacto en bci.cl o llamenos al fono 600 824 24 24.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Atentamente,</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>BCI - Somos diferentes</xsl:text>
			</xsl:when>
			<xsl:when test="$canal = '800'">
				<xsl:text>Para cualquier duda al respecto de este email, escribanos a contacto@bci.cl o llamenos al fono 600 824 24 24.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Atentamente,</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>BCI Nova</xsl:text>
			</xsl:when>
		</xsl:choose>
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Importante:</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:choose>
			<xsl:when test="$canal = '100'">
				<xsl:text>- Este mail es generado de manera automatica, por favor no respondas a este mensaje.</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>- Este mail es generado de manera automatica, por favor no responda a este mensaje.</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- Los tildes son omitidos intencionalmente.</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:choose>
			<xsl:when test="$canal = '100'">
				<xsl:text>- Informate sobre la garantia estatal de los depositos en tu banco o en www.CMFChile.cl.</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>- Informese sobre la garantia estatal de los depositos en su banco o en www.CMFChile.cl.</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>