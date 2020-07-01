<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="comprobante">
		<xsl:text>Estimado(a) </xsl:text><xsl:value-of select="nombre-beneficiario"/><xsl:text>:&#xA;&#xA;</xsl:text>
		<xsl:choose>
			<xsl:when test="$canal = '100'">
				<xsl:text>Con fecha </xsl:text>
				<xsl:value-of select="fecha-transaccion" />
				<xsl:text> se ha realizado una recarga a tu tarjeta bip! El detalle de esta operacion es el siguiente:</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>Con fecha </xsl:text>
				<xsl:value-of select="fecha-transaccion" />
				<xsl:text> se ha realizado una recarga a su tarjeta bip! El detalle de esta operacion es el siguiente:</xsl:text>
			</xsl:otherwise>
		</xsl:choose>

		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Tarjeta Bip!          : </xsl:text><xsl:value-of select="num-tarjeta-bip"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Monto de Recarga      : $</xsl:text><xsl:value-of select="monto"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Numero de Comprobante : </xsl:text><xsl:value-of select="num-comprobante"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Comentario            : </xsl:text><xsl:value-of select="comentario"/>
		<xsl:text>&#xA;&#xA;</xsl:text>

		<xsl:choose>
			<xsl:when test="$canal = '100'">
				<xsl:text>Recuerda que debes activar el monto transferido a tu Tarjeta en los equipos de carga bip! ubicado en sucursales &#xA;</xsl:text>
				<xsl:text>del banco o en los lugares senalizados y habilitados para dicho efecto. &#xA;</xsl:text>
				<xsl:text>Si no efectuas dicha activacion, el monto transferido no se activara en tu tarjeta.</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>Recuerde que debe activar el monto transferido a su Tarjeta en los equipos de carga bip! ubicado en sucursales &#xA;</xsl:text>
				<xsl:text>del banco o en los lugares senalizados y habilitados para dicho efecto. &#xA;</xsl:text>
				<xsl:text>Si no efectua dicha activacion, el monto transferido no se activara en su tarjeta.</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:choose>
			<xsl:when test="$canal = '100' or $canal = '905'">
				<xsl:text>Para cualquier duda al respecto de este email, escribanos en el formulario de contacto en tbanc.cl o llamenos al fono 600 524 24 24.</xsl:text>
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
