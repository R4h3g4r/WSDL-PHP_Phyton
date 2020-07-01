<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="canal" />
    <xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain" omit-xml-declaration="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="comprobante">

        <xsl:text>Cliente sin margen para la línea COVID-19</xsl:text>
        <xsl:if test="(datosCorreo/tipoError = '1' )">
            <xsl:text>Cliente sin margen para la línea COVID-19</xsl:text>
        </xsl:if>
        <!--<xsl:if test="(datosCorreo/tipoError = '3' )">
            <xsl:text>Cliente no cuenta con IVAS necesarios para la Elegibilidad(FOGAPE) del producto COVID-19</xsl:text>
        </xsl:if>
        <xsl:if test="(datosCorreo/tipoError = '4' )">
            <xsl:text>Cliente no registra disponible en FOGAPE para el curse de crédito COVID-19</xsl:text>
        </xsl:if>-->
        <xsl:if test="(datosCorreo/tipoError = '5' )">
            <xsl:text>Cliente no tiene mandato firmado para cursar en línea crédito COVID-19</xsl:text>
        </xsl:if>
        <!--<xsl:if test="(datosCorreo/tipoError = '6' )">
            <xsl:text>CURSE SIN ABONAR - COVID-19</xsl:text>
        </xsl:if>
        <xsl:if test="(datosCorreo/tipoError = '7' )">
            <xsl:text>CURSE SIN ABONAR - REPROGRAMACIÓN (COVID-19)</xsl:text>
        </xsl:if>
        <xsl:if test="(datosCorreo/tipoError = '8' )">
            <xsl:text>Formalización y Abono no pudo ser realizado en línea</xsl:text>
        </xsl:if>-->
        <xsl:if test="(datosCorreo/tipoError = '9' )">
            <xsl:text>Cliente ya cuenta con una formalización COVID-19 para hoy</xsl:text>
        </xsl:if>


        <xsl:text>&#x0A;</xsl:text>

        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>ANTECEDENTES DEL CREDITO</xsl:text>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Fecha y Hora de la Solicitud   : </xsl:text>
        <xsl:value-of select="datosCorreo/fechaHora"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Monto del Credito              : </xsl:text>
        <xsl:value-of select="datosCorreo/montoCredito"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Cuotas                         : </xsl:text>
        <xsl:value-of select="datosCorreo/totalVencimientos"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Fecha 1° vencimiento           : </xsl:text>
        <xsl:value-of select="datosCorreo/fechaPrimerVcto"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Número de operacion            : </xsl:text>
        <xsl:value-of select="datosCorreo/numeroOperacion"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Destino del credito            : </xsl:text>
        <xsl:value-of select="datosCorreo/destinoCredito"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Tasa de Interes                : </xsl:text>
        <xsl:value-of select="datosCorreo/tasaInteres"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Estado de la operación         : </xsl:text>
        <xsl:value-of select="datosCorreo/estado"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Registro de Firma              : </xsl:text>
        <xsl:value-of select="datosCorreo/mensajeRegistroFirma"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:if test="(datosCorreo/tipoCredito = 'COM159' or datosCorreo/tipoCredito = 'COM791')">
            <xsl:text>Comisión FOGAPE                : </xsl:text>
            <xsl:value-of select="datosCorreo/comisionFogape"/>
%
        </xsl:if>

        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>ANTECEDENTES DEL CLIENTE</xsl:text>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Nombre                         : </xsl:text>
        <xsl:value-of select="datosCorreo/nombreEmpresa"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Rut                            : </xsl:text>
        <xsl:value-of select="datosCorreo/rutEmpresa"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Banca                          : </xsl:text>
        <xsl:value-of select="datosCorreo/codBanca"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Ejecutivo                      : </xsl:text>
        <xsl:value-of select="datosCorreo/codigoEjecutivo"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Oficina                        : </xsl:text>
        <xsl:value-of select="datosCorreo/glosaOficina"/>
        <xsl:text>&#x0A;</xsl:text>

        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>ANTECEDENTES DEL OPERADOR  (CURSE NOOK)</xsl:text>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Rut                            : </xsl:text>
        <xsl:value-of select="datosCorreo/rutOperador"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Teléfono                       : </xsl:text>
        <xsl:value-of select="datosCorreo/telefonoOperador"/>
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>Email                          : </xsl:text>
        <xsl:value-of select="datosCorreo/emailOperador"/>
        <xsl:text>&#x0A;</xsl:text>

    </xsl:template>
</xsl:stylesheet>

