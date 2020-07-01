<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="comprobante">
        <xsl:variable name="txt">
            #000000
        </xsl:variable>
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="all-pages" page-width="210mm" page-height="280mm" margin-top="20mm">
                    <fo:region-body padding="0" margin="13mm" margin-top="60mm" margin-bottom="20mm" region-name="xsl-region-body" column-gap="0.25in" font-size="5pt" />
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

				<fo:block-container position="absolute" 
                        top="-150pt" left="0pt" height="160pt" width="50pt" >
					        <fo:table width="180mm" margin-left="10mm">
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
		    </fo:block-container>
                    <fo:block font-size="10pt" > 
                            <xsl:if test="hayTransfRealizadas = 'true'">
                                <fo:block space-before="10mm" font-size="12pt" font-weight="bold">
                                    Transferencias Realizadas
                                </fo:block>
                                <fo:block space-before="2mm" font-weight="bold">
                                    Estimado Cliente:
                                </fo:block>
                                <fo:block space-after="2mm">
                                    Las siguientes operaciones han sido 
                                    <fo:inline font-weight="bold">
                                        firmadas y ejecutadas:
                                    </fo:inline>
                                </fo:block>
                                <fo:block text-align="center">
                                    <fo:table font-size="8pt">
                                        <fo:table-column column-number="1" column-width="10%"/>
                                        <fo:table-column column-number="2" column-width="10%"/>
                                        <fo:table-column column-number="3" column-width="10%"/>
                                        <fo:table-column column-number="4" column-width="10%"/>
                                        <fo:table-column column-number="5" column-width="15%"/>
                                        <fo:table-column column-number="6" column-width="10%"/>                                      
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        N° Solicitud
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Tasa de Cambio
                                                    </fo:block>                                                    
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Monto
                                                    </fo:block>                                                    
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Destinatario
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Cuenta Destino
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Estado
                                                    </fo:block>                                                   
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="transferenciasRealizadas">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="identificador/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="tasaCambio/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="montoSolicitud/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="nombreDestinatario/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center" padding="4pt">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="cuentaDestino/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="estadoNomina/text()" />
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
                                    Transferencias NO Realizadas
                                </fo:block>
                                <fo:block space-before="2mm" font-weight="bold">
                                    Estimado Cliente:
                                </fo:block>
                                <fo:block space-after="2mm">
                                    Las siguientes operaciones no pudieron ser firmadas. 
                                </fo:block>
                                 <fo:block text-align="center">
                                    <fo:table font-size="8pt">
                                        <fo:table-column column-number="1" column-width="10%"/>
                                        <fo:table-column column-number="2" column-width="10%"/>
                                        <fo:table-column column-number="3" column-width="10%"/>
                                        <fo:table-column column-number="4" column-width="10%"/>
                                        <fo:table-column column-number="5" column-width="15%"/>
                                        <fo:table-column column-number="6" column-width="10%"/>                                      
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        N° Solicitud
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Tasa de Cambio
                                                    </fo:block>                                                    
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Monto
                                                    </fo:block>                                                    
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Destinatario
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Cuenta Destino
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                    <fo:block>
                                                        Estado
                                                    </fo:block>                                                   
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="transferenciasConError">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="identificador/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="tasaCambio/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="montoSolicitud/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="nombreDestinatario/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center" padding="4pt">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="cuentaDestino/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid" border-width="1pt" display-align="center">
                                                        <fo:block hyphenate="true">
                                                            <xsl:value-of select="estadoNomina/text()" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
