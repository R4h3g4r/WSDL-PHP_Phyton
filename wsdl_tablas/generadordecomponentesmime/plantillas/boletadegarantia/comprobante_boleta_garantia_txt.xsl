<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="canal" />
    <xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
        omit-xml-declaration="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="comprobante">
       <xsl:text>&#x0A;</xsl:text>
        <xsl:text>ANTECEDENTES DE LA BOLETA</xsl:text>
		<xsl:text>&#x0A;</xsl:text>
        <xsl:text>Fecha de la Solicitud          : </xsl:text><xsl:value-of select="datosCorreo/fechaHoy"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Rut (Beneficiario)             : </xsl:text><xsl:value-of select="datosCorreo/rutBeneficiario"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Fecha de Vencimiento           : </xsl:text><xsl:value-of select="datosCorreo/fechaVencimientoSeleccionada"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Modalidad de Pago              : </xsl:text><xsl:value-of select="datosCorreo/modalidadSeleccionada"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Obligación de la Boleta        : </xsl:text><xsl:value-of select="datosCorreo/objetivoSeleccionado"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Sector Beneficiario       : </xsl:text><xsl:value-of select="datosCorreo/sectorSeleccionado"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Monto Requerido                : </xsl:text><xsl:value-of select="datosCorreo/montoRequerido"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Concepto Jurídico              : </xsl:text><xsl:value-of select="datosCorreo/conceptoJuridico"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Glosa o Texto incluido en la Boleta  : </xsl:text><xsl:value-of select="datosCorreo/glosa"/>
		<xsl:text>&#x0A;</xsl:text>
        <xsl:text>ANTECEDENTES DEL CLIENTE</xsl:text>
        <xsl:text>&#x0A;</xsl:text>
		<xsl:text>Nombre Completo (Tomador)             : </xsl:text><xsl:value-of select="datosCorreo/razonSocialEmpresa"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Correo Electrónico de Contacto     : </xsl:text><xsl:value-of select="datosCorreo/correoDeContacto"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Teléfono de Contacto           : </xsl:text><xsl:value-of select="datosCorreo/telefonoContacto"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Oficina                        : </xsl:text><xsl:value-of select="datosCorreo/glosaOficina"/>
        <xsl:text>&#x0A;</xsl:text>
		<xsl:text>Ejecutivo                      : </xsl:text><xsl:value-of select="datosCorreo/codigoEjecutivo"/>
        <xsl:text>&#x0A;</xsl:text>
		<xsl:text>Rut (Tomador)                      : </xsl:text><xsl:value-of select="datosCorreo/rutEmpresa"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Banca                          : </xsl:text><xsl:value-of select="datosCorreo/codBanca"/>
		<xsl:text>&#x0A;</xsl:text>
        <xsl:text>MANDATOS</xsl:text>
        <xsl:text>&#x0A;</xsl:text>
		<xsl:if test="datosCorreo/mandatosFirmados = '1'">
			<xsl:text>Vigente</xsl:text>
		</xsl:if> 
		<xsl:if test="datosCorreo/mandatosFirmados = '0'">
			<xsl:text>No vigente</xsl:text>
		</xsl:if> 
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>CARPETA TRIBUTARIA ELECTRÓNICA</xsl:text>
        <xsl:text>&#x0A;</xsl:text>
		<xsl:if test="datosCorreo/carpetaTributariaVigente = '1'">		
			<xsl:text>Vigente</xsl:text>		
		</xsl:if> 
		<xsl:if test="datosCorreo/carpetaTributariaVigente = '0'">		
			<xsl:text>No vigente</xsl:text>		
		</xsl:if>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>ARTÍCULO 85</xsl:text>
        <xsl:text>&#x0A;</xsl:text>
		<xsl:if test="datosCorreo/articulo85Vigente = '1'">		
			<xsl:text>Vigente</xsl:text>		
		</xsl:if> 
		<xsl:if test="datosCorreo/articulo85Vigente = '0'">		
			<xsl:text>No vigente</xsl:text>		
		</xsl:if> 
		
<xsl:text>&#x0A;</xsl:text>


</xsl:template>
</xsl:stylesheet>

