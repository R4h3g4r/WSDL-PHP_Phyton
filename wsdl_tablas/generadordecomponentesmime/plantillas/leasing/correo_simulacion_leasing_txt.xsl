<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="canal" />
    <xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain" omit-xml-declaration="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="comprobante">
        <xsl:text>Solicitud de Leasing</xsl:text>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:value-of select="datosCorreo/nombreEjecutivo"/>
		<xsl:text>&#x0A;</xsl:text>
        <xsl:text>Con Fecha </xsl:text> <xsl:value-of select="datosCorreo/fechaPresentacion"/> <xsl:text> la empresa </xsl:text><xsl:value-of select="datosCorreo/razonSocial"/> <xsl:text> ha realizado una solicitud de
leasing a través de la web empresarios. Favor contactar al cliente para gestionar su solicitud. </xsl:text>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>ANTECEDENTES DEL SOLICITANTE</xsl:text>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Nombre o Razón Social: </xsl:text>
		<xsl:value-of select="datosCorreo/razonSocial"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Rut: </xsl:text>
		<xsl:value-of select="datosCorreo/rut"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Fecha de Presentación: </xsl:text>
		<xsl:value-of select="datosCorreo/fechaPresentacion"/>
		<xsl:text>&#x0A;</xsl:text>		
		<xsl:text>Hora: </xsl:text>
		<xsl:value-of select="datosCorreo/hora"/>		
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Email: </xsl:text>
		<xsl:value-of select="datosCorreo/email"/>	
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Número de Solicitud: </xsl:text>
		<xsl:value-of select="datosCorreo/numeroSolicitud"/>
		<xsl:text>Teléfono: </xsl:text>
		<xsl:value-of select="datosCorreo/telefono"/>	
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>ANTECEDENTES DEL VEHÍCULO</xsl:text>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Marca de Vehículo: </xsl:text>
		<xsl:value-of select="datosCorreo/marcaVehiculo"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Modelo de Vehículo: </xsl:text>
		<xsl:value-of select="datosCorreo/modeloVehiculo"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Valor de Vehículo: </xsl:text>
		<xsl:value-of select="datosCorreo/valorVehiculo"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>Valor de Pie: </xsl:text>
		<xsl:value-of select="datosCorreo/valorPie"/>
		<xsl:text>&#x0A;</xsl:text>	
		<xsl:text>Monto Financiado: </xsl:text>
		<xsl:value-of select="datosCorreo/montoFinanciado"/>
		<xsl:text>&#x0A;</xsl:text>			
		<xsl:text>N° de Renta: </xsl:text>
		<xsl:value-of select="datosCorreo/numeroRenta"/>
		<xsl:text>&#x0A;</xsl:text>			
		<xsl:text>Tipo Moneda: </xsl:text>
		<xsl:value-of select="datosCorreo/tipoMoneda"/>
		<xsl:text>&#x0A;</xsl:text>			
		<xsl:text>Renta Mensual: </xsl:text>
		<xsl:value-of select="datosCorreo/rentaMensual"/>
		<xsl:text>&#x0A;</xsl:text>			
		<xsl:text>Opcion de Compra: </xsl:text>
		<xsl:value-of select="datosCorreo/opcionCompra"/>
		<xsl:text>&#x0A;</xsl:text>
		<xsl:text>
		Recuerda apoyar al cliente en la actualización de la información financiera de su empresa.
		</xsl:text>
		<xsl:text>
		Carpeta Tributaria Electrónica
		</xsl:text>
		<xsl:text>
		Información de la Sociedad
		</xsl:text>
		<xsl:text>
		Documentos de Habilitación
		</xsl:text>		
    </xsl:template>
</xsl:stylesheet>

