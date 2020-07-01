<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="comprobante">
	    <xsl:variable name="montoMuestra"><xsl:value-of select="monto"/></xsl:variable>
		<xsl:value-of select="cabecera1" /><xsl:text> </xsl:text><xsl:value-of select="nombre-cliente"/><xsl:text>:&#xA;&#xA;</xsl:text>
		<xsl:value-of select="cabecera2" /><xsl:text> </xsl:text>
		<xsl:value-of select="fecha-transferencia" /><xsl:text> </xsl:text>
		<xsl:value-of select="cabecera3" />
		<xsl:value-of select="cuenta-origen" />
		<xsl:text>.&#xA;&#xA;</xsl:text><xsl:value-of select="cabecera4" />
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Monto transferido           : $</xsl:text><xsl:value-of select="translate($montoMuestra,',','.')"  />
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Nombre del destinatario     : </xsl:text><xsl:value-of select="nombre-destinatario"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>E-mail del destinatario     : </xsl:text><xsl:value-of select="correo-destinatario"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Banco de destino            : </xsl:text><xsl:value-of select="banco-destino"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Cuenta de destino           : </xsl:text><xsl:value-of select="cuenta-destino"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Fecha de abono              : </xsl:text><xsl:value-of select="fecha-abono"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Comentario de transferencia : </xsl:text><xsl:value-of select="comentario"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Numero de operacion         : </xsl:text><xsl:value-of select="numero-operacion"/>
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