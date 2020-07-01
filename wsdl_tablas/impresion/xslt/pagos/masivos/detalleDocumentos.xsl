<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:template match="documentosNomina">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <!-- layout for the first page -->
                <fo:simple-page-master master-name="first"
                    page-width="21.5cm" page-height="27.9cm" margin-bottom="5mm" margin-top="5mm"
                    margin-left="15mm" margin-right="2.5cm" border="thick solid red">
                    <fo:region-body margin-top="10mm" margin-bottom="32mm"/>
                    <fo:region-before extent="12cm" />
                    <fo:region-after extent="32mm" />
                </fo:simple-page-master>
                <!-- layout for the other pages -->
                <fo:page-sequence-master master-name="basicPSM">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference
                            master-reference="first" page-position="first" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <!-- end: defines page layout -->
            <!-- actual layout -->
            <fo:page-sequence master-reference="first">
                <fo:static-content flow-name="xsl-region-after">
	                <fo:block text-align="right">
	                </fo:block>
                    <fo:block text-align="center" font-size="9pt">
                        <fo:page-number/>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table>
                            <fo:table-column/>
                            <fo:table-header>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-header>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <fo:inline font-weight="bold" font-size="19pt" color="#888888">
                                                <xsl:value-of select="glosaTipoPago"/>
                                            </fo:inline>
                                            <fo:inline font-weight="bold" font-size="15pt">
                                                <xsl:text> - Detalle Documentos</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table font-size="9pt" border="solid">
                            <fo:table-column column-width="1mm"/> <!-- Margen -->
                            <fo:table-column column-width="25mm"/><!-- Título -->
                            <fo:table-column column-width="67mm"/><!-- Valor -->
                            <fo:table-column column-width="35mm"/><!-- Título -->
                            <fo:table-column column-width="63mm"/><!-- Valor -->
                            <fo:table-body>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell number-columns-spanned="4">
                                        <fo:block font-weight="bold" color="#AAAAAA">
                                            Resumen
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell font-weight="bold" border-bottom="solid" padding-left="3mm" vertical-align="center">
                                        <fo:block>
                                            Estado
                                        </fo:block>     
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block>
                                            <xsl:value-of select="glosaEstado"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell font-weight="bold" border-bottom="solid" padding-left="3mm" vertical-align="center">
                                        <fo:block>
                                            Rut Cliente
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block>
                                            <xsl:value-of select="rutCliente"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell font-weight="bold" border-bottom="solid" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Fecha Pago
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="fechaPago"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell font-weight="bold" border-bottom="solid" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Nombre Cliente
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="nombreCliente"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell font-weight="bold" border-bottom="solid" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Folio
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="folio"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell font-weight="bold" border-bottom="solid" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            N° Convenio
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="numeroConvenio"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell font-weight="bold" border-bottom="solid" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Archivo
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="nombreArchivo"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell font-weight="bold" border-bottom="solid" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Cuenta Transfer
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="cuentaTransfer"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell font-weight="bold" border-bottom="solid" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Fecha envío
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="fechaEnvio"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell font-weight="bold" border-bottom="solid" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Nombre Nómina
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="nombreNomina"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <xsl:if test="documentos">
                            <fo:table font-size="9pt">
                                <fo:table-column column-width="1mm"/>
                                <fo:table-column column-width="60mm"/>
                                <fo:table-body>
                                    <fo:table-row height="5mm">
                                        <fo:table-cell/>
                                        <fo:table-cell>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block font-weight="bold" color="#AAAAAA">
                                                Detalle de Documentos
                                            </fo:block>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                            <fo:table font-size="9pt" border="solid">
                                <fo:table-column column-width="20mm"/><!-- N Documento -->
                                <fo:table-column column-width="35mm"/><!-- Razon Social -->
                                <fo:table-column column-width="20mm"/><!-- Rut Proveedor -->
                                <fo:table-column column-width="25mm"/><!-- Tipo Documento -->
                                <fo:table-column column-width="20mm"/><!-- Fecha Pago -->
                                <fo:table-column column-width="20mm"/><!-- Fecha Vencimiento -->
                                <fo:table-column column-width="25mm"/><!-- Monto -->
                                <fo:table-column column-width="26mm"/><!-- Estado Pago -->
                                <fo:table-header>
                                    <fo:table-row height="5mm" text-align="center" border="solid">
                                        <fo:table-cell>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block font-weight="bold">
                                                N Documento
                                            </fo:block>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block font-weight="bold">
                                                Nombre Razón Social
                                            </fo:block>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block font-weight="bold">
                                                Rut Proveedor
                                            </fo:block>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block font-weight="bold">
                                                Tipo de Documento
                                            </fo:block>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block font-weight="bold">
                                                Fecha de pago
                                            </fo:block>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block font-weight="bold">
                                                Fecha Vencimiento
                                            </fo:block>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block font-weight="bold">
                                                Monto
                                            </fo:block>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block font-weight="bold">
                                                Estado grupo
                                            </fo:block>
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-header>
                                <fo:table-body>
                                    <xsl:for-each select="documentos/detalleDocumento">
                                        <fo:table-row font-size="8pt" text-align="center">
                                            <fo:table-cell border="solid" border-width="0.5pt">
                                                <fo:block font-size="5pt">&#160;</fo:block>
                                                <fo:block>
                                                    <xsl:value-of select="numeroDocumento"/>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="solid" border-width="0.5pt">
                                                <fo:block font-size="5pt">&#160;</fo:block>
                                                <fo:block>
                                                    <xsl:value-of select="razonSocial"/>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="solid" border-width="0.5pt">
                                                <fo:block font-size="5pt">&#160;</fo:block>
                                                <fo:block>
                                                    <xsl:value-of select="rutProveedor"/>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="solid" border-width="0.5pt">
                                                <fo:block font-size="5pt">&#160;</fo:block>
                                                <fo:block>
                                                    <xsl:value-of select="tipoDocumento"/>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="solid" border-width="0.5pt">
                                                <fo:block font-size="5pt">&#160;</fo:block>
                                                <fo:block>
                                                    <xsl:value-of select="fechaPago"/>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="solid" border-width="0.5pt">
                                                <fo:block font-size="5pt">&#160;</fo:block>
                                                <fo:block>
                                                    <xsl:value-of select="fechaVencimiento"/>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="solid" border-width="0.5pt">
                                                <fo:block font-size="5pt">&#160;</fo:block>
                                                <fo:block text-align="right">
                                                    $ <xsl:value-of select="monto"/>&#160;&#160;
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="solid" border-width="0.5pt">
                                                <fo:block font-size="5pt">&#160;</fo:block>
                                                <fo:block>
                                                    <xsl:value-of select="estadoGrupo"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </xsl:for-each>
                                </fo:table-body>
                            </fo:table>
                        </xsl:if>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
