<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:template match="DetalleNomina">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="first" page-height="28cm" page-width="23cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
                    <fo:region-body margin-top="1cm" margin-bottom="4.5cm" background-color="#ffffff"/>
                    <fo:region-after extent="4cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <!-- end: defines page layout -->
            <!-- actual layout -->
            <fo:page-sequence master-reference="first" initial-page-number="1" language="en" country="us">
                <fo:flow flow-name="xsl-region-body">
                <fo:block space-after="1mm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="15cm"/>
                            <fo:table-column column-width="6cm"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                           <xsl:attribute name="src">
                                           url('<xsl:value-of select="Nomina/rutaLogoCabecera" />')
                                           </xsl:attribute>
                                         </fo:external-graphic>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
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
                                        <fo:block space-before="5mm" space-after="5mm" >
                                            <fo:inline font-weight="bold" font-size="15pt">
                                                <xsl:text>&#160;Detalle de Nómina</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table font-size="9pt" border="solid">
                            <fo:table-column column-width="1mm"/> <!-- Margen -->
                            <fo:table-column column-width="30mm"/><!-- Título -->
                            <fo:table-column column-width="32mm"/><!-- Valor -->
                            <fo:table-column column-width="30mm"/><!-- Título -->
                            <fo:table-column column-width="32mm"/><!-- Valor -->
                            <fo:table-column column-width="30mm"/><!-- Título -->
                            <fo:table-column column-width="32mm"/><!-- Valor -->
                            <fo:table-body>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell number-columns-spanned="6">
                                        <fo:block space-before="3mm" space-after="3mm"  font-weight="bold" color="#AAAAAA">
                                            Detalle de Nómina
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell space-before="3mm" />
                                    <fo:table-cell font-weight="bold" padding-left="3mm" vertical-align="center">
                                        <fo:block>
                                            Código Identificación
                                        </fo:block>     
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block>
                                            <xsl:value-of select="Nomina/numTransferencia"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell font-weight="bold" padding-left="3mm" vertical-align="center">
                                        <fo:block>
                                            Nombre de Nómina
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block>
                                            <xsl:value-of select="Nomina/nombreNomina"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell font-weight="bold" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Estado
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="Nomina/estadoNomina"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell font-weight="bold" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Fecha de Carga
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="Nomina/fechaCarga"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell font-weight="bold" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Cuenta Cargo
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="Nomina/ctaCargo"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell font-weight="bold" padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Modalidad de Pago
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="Nomina/modCargo"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell font-weight="bold"  padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            Fecha de Pago
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                            <xsl:value-of select="Nomina/fechaPago"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                     <fo:table-cell font-weight="bold"  padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell padding-left="3mm" vertical-align="center">
                                        <fo:block font-size="2pt">&#160;</fo:block>
                                        <fo:block>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table space-before="3mm" font-size="9pt" border="solid">
                            <fo:table-column column-width="1mm"/> <!-- Margen -->
                            <fo:table-column column-width="31mm"/><!-- Forma Pago -->
                            <fo:table-column column-width="20mm"/><!-- Totales -->
                            <fo:table-column column-width="28mm"/><!-- Monto Total -->
                            <fo:table-column column-width="21mm"/><!-- Aceptados -->
                            <fo:table-column column-width="31mm"/><!-- Monto Aceptados -->
                            <fo:table-column column-width="22mm"/><!-- Rechazados -->
                            <fo:table-column column-width="32mm"/><!-- Monto Rechazados -->
                            <fo:table-column column-width="1mm"/> <!-- Margen -->
                            <fo:table-body>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell number-columns-spanned="7">
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                        <fo:block space-before="3mm" space-after="3mm" font-weight="bold" color="#AAAAAA">
                                            Totales a Pago
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm" font-weight="bold">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            Forma de Pago
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            Totales
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            Monto Total
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            Registros Rechazados
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            Monto Rechazado
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            Registros Aceptados
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            Monto Aceptado
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell/>
                                </fo:table-row>
                                <xsl:for-each select="totales/totalFormaPago">
                                    <fo:table-row height="2mm" font-weight="bold">
                                        <fo:table-cell number-columns-spanned="9"/>
                                    </fo:table-row>
                                    <fo:table-row height="5mm">
                                        <fo:table-cell/>
                                        <fo:table-cell>
                                            <fo:block>
                                                <xsl:value-of select="glosaFormaPago"/>
                                            </fo:block>                                   
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="right">
                                                <xsl:value-of select="cantidadPagos"/>
                                            </fo:block>                                   
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="right">
                                                <xsl:value-of select="montoPagos"/>
                                            </fo:block>                                   
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="right">
                                                <xsl:value-of select="cantidadRechazados"/>
                                            </fo:block>                                   
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="right">
                                                <xsl:value-of select="montoRechazados"/>
                                            </fo:block>                                   
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="right">
                                                <xsl:value-of select="cantidadAceptados"/>
                                            </fo:block>                                   
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="right">
                                                <xsl:value-of select="montoPagosAceptados"/>
                                            </fo:block>                                   
                                        </fo:table-cell>
                                        <fo:table-cell/>
                                    </fo:table-row>
                                </xsl:for-each>
                                <fo:table-row height="5mm" font-weight="bold">
                                    <fo:table-cell number-columns-spanned="9"/>
                                </fo:table-row>
                                <fo:table-row height="5mm" font-weight="bold">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block>
                                            Totales
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            <xsl:value-of select="Nomina/cantidadPagos"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            <xsl:value-of select="Nomina/montoPagos"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            <xsl:value-of select="Nomina/cantidadRechazados"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            <xsl:value-of select="Nomina/montoRechazados"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            <xsl:value-of select="Nomina/cantidadAceptados"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            <xsl:value-of select="Nomina/montoPagosAceptados"/>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                    <fo:table-cell/>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        
                        <fo:table font-size="9pt">
                            <fo:table-column column-width="1mm"/>
                            <fo:table-column column-width="60mm"/>
                            <fo:table-body>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                        <fo:block space-before="3mm" space-after="3mm" font-weight="bold" color="#AAAAAA">
                                            Detalle de Registros
                                        </fo:block>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table font-size="9pt" border="solid">
                            <fo:table-column column-width="25mm"/><!-- RUT -->
                            <fo:table-column column-width="35mm"/><!-- Nombre -->
                            <fo:table-column column-width="34mm"/><!-- Monto Total -->
                            <fo:table-column column-width="35mm"/><!-- Forma Pago -->
                            <fo:table-column column-width="33mm"/><!-- Número Cuenta -->
                            <fo:table-column column-width="25mm"/><!-- Banco -->
                            <fo:table-header>
                                <fo:table-row height="5mm" text-align="center" border="solid">
                                    <fo:table-cell>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                        <fo:block font-weight="bold">
                                            Rut Destinatario
                                        </fo:block>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                        <fo:block font-weight="bold">
                                            Nombre Destinatario
                                        </fo:block>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                        <fo:block font-weight="bold">
                                            Banco Destino
                                        </fo:block>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                        <fo:block font-weight="bold">
                                            Cuenta Destino
                                        </fo:block>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                        <fo:block font-weight="bold">
                                            Monto Pago
                                        </fo:block>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                        <fo:block font-weight="bold">
                                            Estado
                                        </fo:block>
                                        <fo:block font-size="5pt">&#160;</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-header>
                            <fo:table-body>
                                <xsl:for-each select="pagosNomina/pago">
                                    <fo:table-row font-size="8pt" text-align="center">
                                        <fo:table-cell border="solid" border-width="0.5pt">
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block>
                                                <xsl:value-of select="rutBeneficiario"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid" border-width="0.5pt">
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block>
                                                <xsl:value-of select="nombreBeneficiario"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid" border-width="0.5pt">
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block text-align="right">
                                                <xsl:value-of select="banco"/>&#160;&#160;
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid" border-width="0.5pt">
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block>
                                                <xsl:value-of select="numeroCuenta"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid" border-width="0.5pt">
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block>
                                                <xsl:value-of select="montoPago"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid" border-width="0.5pt">
                                            <fo:block font-size="5pt">&#160;</fo:block>
                                            <fo:block>
                                                <xsl:value-of select="estado"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </xsl:for-each>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
