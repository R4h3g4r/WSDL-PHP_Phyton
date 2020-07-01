<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="comprobante">
        <xsl:variable name="txt">
            #000000
        </xsl:variable>
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="all-pages" page-width="210mm" page-height="297mm" margin-top="30mm">
                    <fo:region-body padding="0" margin="13mm" region-name="xsl-region-body" column-gap="0.25in" font-size="5pt"/>
                    <fo:region-before region-name="xsl-region-before" extent="7in"/>
                    <fo:region-after padding="0" region-name="xsl-region-after" display-align="before" extent="0.7in"/>
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="default-page">
                    <fo:repeatable-page-master-reference master-reference="all-pages"/>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block>
                        <fo:table width="21cm" space-after="4mm">
                            <fo:table-column column-width="2cm" />  <!-- margen -->
                            <fo:table-column column-width="14cm" /> <!-- BCI -->
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="rutaLogoCabecera" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                </fo:table-row>
                             </fo:table-body>
                        </fo:table>
                        <fo:table width="21cm" space-after="4mm">
                            <fo:table-column column-width="2.7cm" />  <!-- margen -->
                            <fo:table-column />                     <!-- Sello Agua -->
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="rutaLogoSelloAgua" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                </fo:table-row>
                             </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>                
                <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="12pt" >
                    <fo:block font-weight="bold" font-size="8pt" color="{$txt}" >
                        Página
                        <fo:page-number/>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="10pt"> 
                        <fo:table>
                            <fo:table-column width="10mm"/>
                            <fo:table-column/>
                            <fo:table-column/>
                            <fo:table-body>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block>
                                            Nombre Empresa
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell/>
                                </fo:table-row>
                                <fo:table-row height="10mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="nombreEmpresa" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell/>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block>
                                            Rut Empresa
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            Fecha y Hora
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="10mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="rutEmpresa" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="fechaActual" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block>
                                            Rut Usuario
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            Nombre Usuario
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="10mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="rutUsuario" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="nombreUsuario" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <xsl:for-each select="transfPorCuentas">
                            <fo:block text-align="right" font-weight="bold" space-before="10mm">
                                N° de cuenta <fo:inline><xsl:value-of select="cuenta" /></fo:inline>
                            </fo:block>
                            <xsl:if test="hayTransfRealizadas = 'true'">
                                <fo:block space-before="10mm" font-size="12pt" font-weight="bold">
                                    Transferencias Realizadas
                                </fo:block>
                                <fo:block space-before="2mm" font-weight="bold">
                                    Estimado Cliente:
                                </fo:block>
                                <fo:block space-after="2mm">
                                    Las siguientes transferencias han sido 
                                    <fo:inline font-weight="bold">
                                        firmadas y fueron enviadas a pago:
                                    </fo:inline>
                                </fo:block>
                                <fo:block text-align="center">
                                    <fo:table font-size="7pt">
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        ID Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Fecha Pago
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Nombre de Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Monto Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Cantidad de
                                                    </fo:block>
                                                    <fo:block>
                                                        Pagos
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="transferenciasRealizadas">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="numTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="fechaPago" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="nombreTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            $<xsl:value-of select="monto" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="cantPagos" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                            
                            <xsl:if test="hayTransfEnProcesoPago = 'true'">
                                <fo:block space-before="10mm" font-size="12pt" font-weight="bold">
                                    Transferencias en proceso de pago
                                </fo:block>
                                <fo:block space-before="2mm" font-weight="bold">
                                    Estimado Cliente:
                                </fo:block>
                                <fo:block space-after="2mm">
                                    Las siguientes transferencias han sido 
                                    <fo:inline font-weight="bold">
                                        firmadas y fueron enviadas a pago:
                                    </fo:inline>
                                </fo:block>
                                <fo:block text-align="center">
                                    <fo:table font-size="7pt">
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        ID Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Fecha Pago
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Nombre de Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Monto Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Cantidad de
                                                    </fo:block>
                                                    <fo:block>
                                                        Pagos
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="transferenciasEnProcesoPago">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="numTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="fechaPago" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="nombreTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            $<xsl:value-of select="monto" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="cantPagos" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                            
                            <xsl:if test="hayTransfPendientes = 'true'">
                                <fo:block space-before="10mm" font-size="12pt" font-weight="bold">
                                    Pendientes de Firma
                                </fo:block>
                                <fo:block space-before="2mm" font-weight="bold">
                                    Estimado Cliente:
                                </fo:block>
                                <fo:block space-after="2mm">
                                    Las siguientes transferencias quedaron pendientes de firma, 
                                    <fo:inline font-weight="bold">
                                        ya que faltan uno o más apoderados por firmar.
                                    </fo:inline>
                                </fo:block>
                                <fo:block text-align="center">
                                    <fo:table font-size="7pt">
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        ID Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Fecha Pago
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Nombre de Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Monto Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Cantidad de
                                                    </fo:block>
                                                    <fo:block>
                                                        Pagos
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="transferenciasPendientes">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="numTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="fechaPago" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="nombreTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            $<xsl:value-of select="monto" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="cantPagos" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                            <xsl:if test="hayTransfDiferidas = 'true'">
                                <fo:block space-before="10mm" font-size="12pt" font-weight="bold">
                                    Transferencias diferidas
                                </fo:block>
                                <fo:block space-before="2mm" font-weight="bold">
                                    Estimado Cliente:
                                </fo:block>
                                <fo:block space-after="2mm">
                                    Las siguientes transferencias están listas para pago, en  
                                    <fo:inline font-weight="bold">
                                        modalidad de cargo diferida.
                                    </fo:inline>
                                </fo:block>
                                <fo:block text-align="center">
                                    <fo:table font-size="7pt">
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        ID Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Fecha Pago
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Nombre de Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Monto Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Cantidad de
                                                    </fo:block>
                                                    <fo:block>
                                                        Pagos
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="transferenciasDiferidas">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="numTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="fechaPago" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="nombreTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            $<xsl:value-of select="monto" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="cantPagos" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                            <xsl:if test="hayTransfSinFondos = 'true'">
                                <fo:block space-before="10mm" font-size="12pt" font-weight="bold">
                                    Sin Fondos
                                </fo:block>
                                <fo:block space-before="2mm" font-weight="bold">
                                    Estimado Cliente:
                                </fo:block>
                                <fo:block space-after="2mm">
                                    Las siguientes transferencias no pudieron pagarse, debido a 
                                    <fo:inline font-weight="bold">
                                        que no dispone de saldo suficiente en su cuenta corriente,
                                    </fo:inline>
                                     por lo que se eliminarán.
                                </fo:block>
                                <fo:block text-align="center">
                                    <fo:table font-size="7pt">
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        ID Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Fecha Pago
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Nombre de Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Monto Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Cantidad de
                                                    </fo:block>
                                                    <fo:block>
                                                        Pagos
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="transferenciasSinFondos">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="numTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="fechaPago" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="nombreTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            $<xsl:value-of select="monto" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="cantPagos" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                            <xsl:if test="hayTransfConError = 'true'">
                                <fo:block space-before="10mm" font-size="12pt" font-weight="bold">
                                    Firmas con error
                                </fo:block>
                                <fo:block space-before="2mm" font-weight="bold">
                                    Estimado Cliente:
                                </fo:block>
                                <fo:block space-after="2mm">
                                    Las siguientes transferencias no pudieron ser firmadas, debido a que tienen un error en sus datos. 
                                </fo:block>
                                <fo:block text-align="center">
                                    <fo:table font-size="7pt">
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        ID Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Observaciones
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="transferenciasConError">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="numTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="descripcionError" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                            
                            <xsl:if test="hayTransfRechazadas = 'true'">
                                <fo:block space-before="10mm" font-size="12pt" font-weight="bold">
                                    Firmas Rechazadas.
                                </fo:block>
                                <fo:block space-before="2mm" font-weight="bold">
                                    Estimado Cliente:
                                </fo:block>
                                <fo:block space-after="2mm">
                                    Las siguientes transferencias no pudieron realizarse.
                                </fo:block>
                                <fo:block text-align="center">
                                    <fo:table font-size="7pt">
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        ID Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Observaciones
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="transferenciasRechazadas">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="numTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="descripcionError" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                            
                            <xsl:if test="hayTransfCaducadas = 'true'">
                                <fo:block space-before="10mm" font-size="12pt" font-weight="bold">
                                    Firmas Caducadas.
                                </fo:block>
                                <fo:block space-before="2mm" font-weight="bold">
                                    Estimado Cliente:
                                </fo:block>
                                <fo:block space-after="2mm">
                                    Las siguientes transferencias no pudieron ser firmadas, debido a que ha caducado la fecha de ingreso de firma.
                                </fo:block>
                                <fo:block text-align="center">
                                    <fo:table font-size="7pt">
                                        <fo:table-column/>
                                        <fo:table-column/>
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        ID Transferencia
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Observaciones
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="transferenciasCaducadas">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="numTrf" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:value-of select="descripcionError" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                        </xsl:for-each>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
