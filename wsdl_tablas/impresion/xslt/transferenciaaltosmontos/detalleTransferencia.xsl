<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="DetalleNomina/detalle">
        <xsl:variable name="titulos">
            #FFFFFF
        </xsl:variable>
        <xsl:variable name="lineas">
            #EBEBEB
        </xsl:variable>
        <xsl:variable name="txt">
            #000000
        </xsl:variable>
        <xsl:variable name="sombreadoTablas">
            #CFCFCF
        </xsl:variable>
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="all-pages"
                    page-width="8.5in" page-height="11in" margin-top="1cm">
                    <fo:region-body padding="0" margin="0.7in"
                        region-name="xsl-region-body" column-gap="0.25in" />
                    <fo:region-before padding="0" region-name="xsl-region-before"
                        display-align="after" extent="0.7in" />
                    <fo:region-after padding="0" region-name="xsl-region-after"
                        display-align="before" extent="0.7in" />
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="default-page">
                    <fo:repeatable-page-master-reference
                        master-reference="all-pages" />
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page"
                initial-page-number="1" format="1">
                <fo:static-content flow-name="xsl-region-before"
                    margin-left="16cm" font-size="12pt" font-family="Arial">
                    <fo:block>
                        <fo:external-graphic width="100pt">
                            <xsl:attribute name="src">
                               url('<xsl:value-of select="rutaLogoCabecera" />')
                               </xsl:attribute>
                        </fo:external-graphic>
                    </fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after"
                    margin-left="18.7cm" font-size="12pt" font-family="Arial">
                    <fo:block font-weight="bold" font-size="8pt" color="{$txt}"
                        font-family="Arial Narrow">
                        Página
                        <fo:page-number />
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block space-after="1cm"
                        space-before="1cm">
                        <fo:table width="20cm">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="14pt" color="#000000"
                                            font-family="Arial" text-align="center">Detalle Registro de Pago
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table width="19cm" space-before="1cm">
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell background-color="#C8C8C8" color="#FFFFFF">
                                        <fo:block font-weight="bold" font-size="12pt" font-family="Arial">Datos del Destinatario</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell background-color="#C8C8C8" color="#FFFFFF">
                                        <fo:block font-weight="bold" font-size="12pt" font-family="Arial">Datos del Pagador</fo:block>
                                    </fo:table-cell>
                                                                           
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block font-size="5pt" space-after="0.5cm"
                            space-before="0.5cm" >
                            <fo:block border-color="#FFFFFF">
                                <fo:table width="19cm" >
                                    <fo:table-column column-width="1cm" />
                                    <fo:table-column column-width="1cm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="2"
                                                background-color="#C8C8C8" color="#FFFFFF">
                                                <fo:block font-weight="bold" font-size="12pt"
                                                    font-family="Arial">
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell >
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Rut Destinatario:
                                                    <xsl:value-of select="rutBeneficiario" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Nombre Destinatario:
                                                    <xsl:value-of select="nombre" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    E-Mail:
                                                    <xsl:value-of select="email" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Direccion:
                                                    <xsl:value-of select="direccion" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Rut Pagador:
                                                    <xsl:value-of select="rutPagador" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Razón Social:
                                                    <xsl:value-of select="razonSocial" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Código ID:
                                                    <xsl:value-of select="codigoID" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Modalidad de Cargo:
                                                    <xsl:value-of select="modalidadCargo" />
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                    </fo:block>
                    <fo:block>
                        <fo:table width="19cm">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell background-color="#C8C8C8" color="#FFFFFF">
                                        <fo:block font-weight="bold" font-size="12pt" font-family="Arial">Datos del Pago</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block font-size="5pt" space-after="0.5cm"
                            space-before="0.5cm" background-color="#FCFCFC">

                            <fo:block>
                                <fo:table width="19cm">
                                    <fo:table-column column-width="1cm" />
                                    <fo:table-column column-width="1cm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="2"
                                                background-color="#C8C8C8" color="#FFFFFF">
                                                <fo:block font-weight="bold" font-size="12pt"
                                                    font-family="Arial">
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Identificador Pago:
                                                    <xsl:value-of select="identificadorDelPago" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Tipo Pago:
                                                    <xsl:value-of select="tipoDePago" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Estado:
                                                    <xsl:choose>
                                                    <xsl:when  test="(codigoEstado != 'REC')">
                                                    <xsl:value-of select="estado"/>
                                                    </xsl:when >
                                                    <xsl:otherwise>
                                                    <xsl:value-of select="estado"/> - <xsl:value-of select="glosaCodigoRechazo"/>
                                                    </xsl:otherwise>
                                                    </xsl:choose>
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Fecha de Pago:
                                                    <xsl:value-of select="fechaPago"/>
                                                </fo:block>
                                                <xsl:if test="(tipoPago = 'NOR' or tipoPago = 'OTR')">
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Nº Factura/Boleta :
                                                    <xsl:value-of select="numeroFactura" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Orden de Compra:
                                                    <xsl:value-of select="ordenDeCompra" />
                                                </fo:block>
                                                </xsl:if>
                                                <xsl:if test="(tipoPago = 'DVP')">
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                   Código DCV Cliente :
                                                    <xsl:value-of select="codigoDVCCliente" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Código DCV Destinatario :
                                                    <xsl:value-of select="codigoDVCBenef" />
                                                </fo:block>
                                                </xsl:if>
                                                
                                                <xsl:if test="(tipoPago = 'CLV')">
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Código Agente :
                                                    <xsl:value-of select="codigoAgente" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Tipo Saldo :
                                                    <xsl:value-of select="tipoSaldo" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Cámara :
                                                    <xsl:value-of select="camara" />
                                                </fo:block>
                                                </xsl:if>
                                                
                                            </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block font-size="10pt" font-family="Arial"
                                                        space-after="3mm">
                                                        N° Cuenta:
                                                        <xsl:value-of select="numeroCuenta" />
                                                    </fo:block>
                                                    <fo:block font-size="10pt" font-family="Arial"
                                                        space-after="3mm">
                                                        Banco Destino:
                                                        <xsl:value-of select="bancoDestino" />
                                                    </fo:block>
                                                    <fo:block font-size="10pt" font-family="Arial"
                                                        space-after="3mm">
                                                        Monto a Pagar ($):
                                                        <xsl:value-of select="montoAPagar" />
                                                    </fo:block>
                                                </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        <fo:block>
                        </fo:block>
                        <fo:block>
                        </fo:block>
                    </fo:block>
                    <xsl:if test="(tipoPago = 'DVP')">
                     <fo:block>
                        <fo:table width="19cm">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell background-color="#C8C8C8" color="#FFFFFF">
                                        <fo:block font-weight="bold" font-size="12pt" font-family="Arial">Claves DVP</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        
                        <fo:block font-size="5pt" space-after="0.5cm"
                        space-before="0.5cm" background-color="#FCFCFC">

                            <fo:block>
                                <fo:table width="19cm">
                                    <fo:table-column column-width="1cm" />
                                    <fo:table-column column-width="1cm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="2"
                                                background-color="#C8C8C8" color="#FFFFFF">
                                                <fo:block font-weight="bold" font-size="12pt"
                                                    font-family="Arial">
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Clave 1:
                                                    <xsl:value-of select="clave1" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Clave 2:
                                                    <xsl:value-of select="clave2" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Clave 3:
                                                    <xsl:value-of select="clave3" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Clave 4:
                                                    <xsl:value-of select="clave4" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Clave 5:
                                                    <xsl:value-of select="clave5" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Clave 6:
                                                    <xsl:value-of select="clave6" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Clave 7:
                                                    <xsl:value-of select="clave7" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Clave 8:
                                                    <xsl:value-of select="clave8" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Clave 9:
                                                    <xsl:value-of select="clave9" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Clave 10:
                                                    <xsl:value-of select="clave10" />
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        <fo:block>
                        </fo:block>
                        <fo:block>
                        </fo:block>
                        
                    </fo:block>
                    </xsl:if>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
