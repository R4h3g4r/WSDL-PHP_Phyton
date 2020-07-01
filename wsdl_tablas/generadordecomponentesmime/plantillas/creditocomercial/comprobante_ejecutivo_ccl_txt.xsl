<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="canal" />
    <xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
                omit-xml-declaration="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="comprobante">
        <xsl:text>Antecendetes del crédito </xsl:text><xsl:if test="(datosCorreo/tipoCredito = 'COM159' or datosCorreo/tipoCredito = 'COM791')"><xsl:text>con garantías estatales FOGAPE</xsl:text></xsl:if>
        <xsl:text>&#x0A;</xsl:text>

        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>ANTECEDENTES DEL CREDITO</xsl:text>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Fecha y Hora de la Solicitud   : </xsl:text><xsl:value-of select="datosCorreo/fechaHora"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Monto del Credito              : </xsl:text><xsl:value-of select="datosCorreo/montoCredito"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Cuotas                         : </xsl:text><xsl:value-of select="datosCorreo/totalVencimientos"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Fecha 1° vencimiento           : </xsl:text><xsl:value-of select="datosCorreo/fechaPrimerVcto"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Número de operacion            : </xsl:text><xsl:value-of select="datosCorreo/numeroOperacion"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Destino del credito            : </xsl:text><xsl:value-of select="datosCorreo/destinoCredito"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Tasa de Interes                : </xsl:text><xsl:value-of select="datosCorreo/tasaInteres"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Estado de la operación         : </xsl:text><xsl:value-of select="datosCorreo/estado"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Registro de Firma              : </xsl:text><xsl:value-of select="datosCorreo/mensajeRegistroFirma"/>
        <xsl:text>&#x0A;</xsl:text><xsl:if test="(datosCorreo/tipoCredito = 'COM159' or datosCorreo/tipoCredito = 'COM791')">
        <xsl:text>Comisión FOGAPE                : </xsl:text><xsl:value-of select="datosCorreo/comisionFogape"/>%
    </xsl:if>

        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>ANTECEDENTES DEL CLIENTE</xsl:text>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Nombre                         : </xsl:text><xsl:value-of select="datosCorreo/nombreEmpresa"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Rut                            : </xsl:text><xsl:value-of select="datosCorreo/rutEmpresa"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Banca                          : </xsl:text><xsl:value-of select="datosCorreo/codBanca"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Ejecutivo                      : </xsl:text><xsl:value-of select="datosCorreo/codigoEjecutivo"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Oficina                        : </xsl:text><xsl:value-of select="datosCorreo/glosaOficina"/>
        <xsl:text>&#x0A;</xsl:text>

        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>ANTECEDENTES DEL OPERADOR  (CURSE NOOK)</xsl:text>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Rut                            : </xsl:text><xsl:value-of select="datosCorreo/rutOperador"/><xsl:text>&#x0A;</xsl:text>
        <xsl:text>Teléfono                       : </xsl:text><xsl:value-of select="datosCorreo/telefonoOperador"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Email                          : </xsl:text><xsl:value-of select="datosCorreo/emailOperador"/>
        <xsl:text>&#x0A;</xsl:text>

    </xsl:template>
</xsl:stylesheet>

