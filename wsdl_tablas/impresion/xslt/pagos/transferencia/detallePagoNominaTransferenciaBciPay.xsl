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
                    page-width="8.5in" page-height="11in">
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
                    margin-left="2.7cm" font-size="12pt" font-family="Arial">
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
                        <fo:table width="19cm">
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell background-color="#C8C8C8" color="#FFFFFF">
                                        <fo:block font-weight="bold" font-size="12pt" font-family="Arial">Datos del Beneficiario</fo:block>
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
                                                    Rut Beneficiario:
                                                    <xsl:value-of select="rutBeneficiario" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Nombre:
                                                    <xsl:value-of select="nombre" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Email:
                                                    <xsl:value-of select="email" />
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
                                        <fo:block font-weight="bold" font-size="12pt" font-family="Arial">Datos Pago</fo:block>
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
                                                    Identificador del Pago:
                                                    <xsl:value-of select="identificadorDelPago" />
                                                </fo:block>
                                                <fo:block font-size="10pt" font-family="Arial"
                                                    space-after="3mm">
                                                    Tipo de Pago:
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
                                                <xsl:if test="(tipoPago = 'PRV')">
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
                                                    <xsl:if test="(codBancoDestino != '016')">
                                                    <fo:block font-size="10pt" font-family="Arial"
                                                        space-after="3mm">
                                                        Tracenumber:
                                                        <xsl:choose>
                                                    <xsl:when  test="(codigoEstado != 'ELI')">
                                                        <xsl:value-of select="traceNumber" />
                                                        </xsl:when>
                                                        <xsl:otherwise >
                                                        -
                                                        </xsl:otherwise>
                                                        </xsl:choose>
                                                    </fo:block>
                                                    </xsl:if>
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
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
