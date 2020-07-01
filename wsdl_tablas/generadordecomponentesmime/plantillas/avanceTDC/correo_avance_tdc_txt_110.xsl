<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="comprobante">
		<xsl:text>Estimado(A) : </xsl:text><xsl:value-of select="avance/nombre-completo" /><xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Informamos que con fecha</xsl:text><xsl:text:value-of select="avance/fecha-avance"></xsl:text><xsl:text>se ha realizado un Avance desde su Tarjeta de crédito</xsl:text><xsl:text>&#xA;</xsl:text> 
		<xsl:value-of select="avance/numero-tarjeta" />.
		<xsl:text>&#xA;&#xA;</xsl:text>

		<xsl:text>El detalle de esta operacion es el siguiente:</xsl:text>
        <xsl:text>&#xA;&#xA;</xsl:text>

			<xsl:text>Tarjeta de Crédito       : </xsl:text><xsl:value-of select="avance/nombre-tarjeta"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Cuenta de destino        : </xsl:text><xsl:value-of select="avance/cuenta-destino"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Monto del Avance         : </xsl:text><xsl:value-of select="avance/monto-avance"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Comisión                 : </xsl:text><xsl:value-of select="avance/comision-avance"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Tasa de Interés Mensual  : </xsl:text><xsl:value-of select="avance/tasa-interes-mensual"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Cuota Mensual            : </xsl:text><xsl:value-of select="avance/cuota-mensual"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Carga Anual Equivalente (CAE): </xsl:text><xsl:value-of select="avance/carga-anual-equivalente"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Costo Total del Crédito (CTC): </xsl:text><xsl:value-of select="avance/costo-total-credito"/>
			<xsl:text>&#xA;&#xA;</xsl:text>

		</xsl:for-each>

		<xsl:text>- Has recibido este correo electrónico porque realizaste alguna transacción en BCI.cl que requiere de tu atención.</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- Por favor no respondas a este correo electrónico. Para consultas o sugerencias visítanos en BCI.cl, envíanos un correo electrónico a BCI@bci.cl o llama al 600 524 2424.</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>- Los tíldes en el asunto de este mail han sido omitidos intencionalmente.</xsl:text>
		
	</xsl:template>
</xsl:stylesheet>