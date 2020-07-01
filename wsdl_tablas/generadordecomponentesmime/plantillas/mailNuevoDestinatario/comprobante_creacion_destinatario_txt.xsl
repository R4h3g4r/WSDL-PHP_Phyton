<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="comprobante">
	
		<!--Principio-->
		
		<xsl:text>Estimado(a): </xsl:text><xsl:value-of select="nombre-cliente"/>
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Por el medio del presente le hacemos entrega del numero de verificacion N°</xsl:text><xsl:value-of select="numero-verificacion"/>
		<xsl:text> para autorizar a su destinatario "</xsl:text><xsl:value-of select="alias-destinatario"/><xsl:text>", </xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>cuyos datos registrados en nuestro banco son: </xsl:text>
		

		<!--General-->
		<xsl:text>&#xA;&#xA;</xsl:text>
		<xsl:text>Numero de Verificacion : </xsl:text><xsl:value-of select="numero-verificacion"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Nombre Destinatario    : </xsl:text><xsl:value-of select="nombre-destinatario"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Rut Destino            : </xsl:text><xsl:value-of select="rut-destinatario"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Cuenta Destino         : </xsl:text><xsl:value-of select="cuenta-destino"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Banco Destino          : </xsl:text><xsl:value-of select="banco-destino"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Correo Destinatario    : </xsl:text><xsl:value-of select="correo-destinatario"/>
		<xsl:text>&#xA;&#xA;</xsl:text>

	
		<!--Pie abajo-->
		<xsl:text>Por favor revise esta informacion y si es correcta ingrese nuevamente a nuestro sitio y usando el menu "Mis Destinatarios", </xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>autorice a su destinatario con el numero de verificacion aqui enviado. Una vez realizado este paso podra comenzar a enviarle </xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>tranferencias de fondos. </xsl:text>
		<xsl:text>&#xA;&#xA;</xsl:text>
		
		
		<xsl:choose>
			<xsl:when test="$canal = '100' or $canal = '905'">
				<xsl:text>Atentamente,</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>TBanc - El Banco a distancia</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
			</xsl:when>
			<xsl:when test="$canal = '110' or $canal = '901'">
				<xsl:text>Atentamente,</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>BCI - Somos Diferentes.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>			
			</xsl:when>
			<xsl:when test="$canal = '800'">
				<xsl:text>Atentamente,</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>BCI Nova</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>			
			</xsl:when>
		</xsl:choose>	
				
		<xsl:text>Importante:</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Este mail es generado de manera automatica, por favor no responda a este mensaje. </xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>P.D.: Los tildes han sido omitidos en forma intencional. </xsl:text>
		
	</xsl:template>
</xsl:stylesheet>