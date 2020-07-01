<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="comprobante">
		<xsl:value-of select="cabecera1" /><xsl:text> </xsl:text><xsl:value-of select="nombre-destinatario"/><xsl:text>:&#xA;&#xA;</xsl:text>
		<xsl:value-of select="cabecera2" /><xsl:text> </xsl:text>
		<xsl:value-of select="nombre-cliente" /><xsl:text>, </xsl:text>
		<xsl:value-of select="cabecera3" /><xsl:text> </xsl:text>
		<xsl:value-of select="fecha-transferencia" /><xsl:text> </xsl:text>
		<xsl:choose>
			<xsl:when test="otro-banco and otro-banco = 'S'">
				<xsl:value-of select="cabecera4" /><xsl:text> </xsl:text><xsl:value-of select="banco-destino" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="cabecera5" /><xsl:value-of select="cuenta-destino" />
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>.&#xA;&#xA;</xsl:text>
		<xsl:value-of select="cabecera6" /><xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Monto pagado                   : $</xsl:text><xsl:value-of select="monto"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Titular de la cuenta de origen  : </xsl:text><xsl:value-of select="nombre-cliente"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Banco de origen                 : </xsl:text><xsl:value-of select="banco-origen"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Comentario                      : Pago Automotora</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Numero de operacion             : </xsl:text><xsl:value-of select="numero-operacion"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Fecha de abono                  : </xsl:text><xsl:value-of select="fecha-abono"/>
		<xsl:text>&#xA;&#xA;</xsl:text>
		
		<xsl:value-of select="firma" />
		<xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="firmaSlogan" />
		<xsl:text>&#xA;&#xA;</xsl:text>
		
		<xsl:value-of select="nota" />
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- </xsl:text><xsl:value-of select="punto1" />
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- </xsl:text><xsl:value-of select="punto2" /><xsl:text> </xsl:text><xsl:value-of select="pieFono" />
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- </xsl:text><xsl:value-of select="punto3" />
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- </xsl:text><xsl:value-of select="punto4" />
	</xsl:template>
</xsl:stylesheet>