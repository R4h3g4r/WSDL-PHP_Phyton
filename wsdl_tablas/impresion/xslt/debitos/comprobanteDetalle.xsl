<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="Comprobante">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="all-pages" page-width="210mm" page-height="297mm" margin-top="30mm">
                    <fo:region-body padding="0" margin="0.7in" margin-top="4cm" region-name="xsl-region-body" column-gap="0.25in" />
                    <fo:region-before region-name="xsl-region-before" extent="7in" />
                    <fo:region-after padding="0" region-name="xsl-region-after" display-align="before" extent="0.7in" />
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="default-page">
                    <fo:repeatable-page-master-reference master-reference="all-pages" />
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block>
                        <fo:table width="21cm" space-after="4mm">
                            <fo:table-column column-width="1cm" />  <!-- margen -->
                            <fo:table-column />                     <!-- Sello Agua -->
                            <fo:table-column column-width="5cm" /> <!-- BCI -->
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell />
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="rutaLogo" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="rutaTimbre" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="12pt">
                    <fo:block font-weight="bold" font-size="8pt">
                        P�gina
                        <fo:page-number />
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block margin-left="117mm" margin-top="15cm">
                        <fo:block margin-left="1mm">
                            <fo:table width="20cm">
                                <fo:table-column />
                                <fo:table-column />
								<fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="2">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                <xsl:value-of select="detalleNomina" />
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="2">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                &#160; </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="1">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                Fecha de Env�o y Hora
                                            </fo:block>
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                                <xsl:value-of select="fechaEnvioHora" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-columns-spanned="1">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                Fecha Cargo
                                            </fo:block>
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                                <xsl:value-of select="fechaCargo" />  
                                            </fo:block>
                                        </fo:table-cell>
										<fo:table-cell number-columns-spanned="1">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                Nombre de N�mina
                                            </fo:block>
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                                <xsl:value-of select="nombreNomina" />  
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="2">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                &#160; </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="1">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                Estado
                                            </fo:block>
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                            	<xsl:value-of select="estado" />     
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="2">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                &#160; </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                            <xsl:choose>
                                <xsl:when test="hayDetalleTotales='true'">
                                    <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                        Totales Cargo
                                    </fo:block>
                                    <fo:table width="17cm">
                                        <fo:table-column width="1mm" />
                                        <fo:table-column width="5cm" />
                                        <fo:table-column width="5cm" />
                                        <fo:table-column width="5cm" />
										<fo:table-column width="5cm" />
                                        <fo:table-column width="5cm" />
										<fo:table-column width="5cm" />
                                        <fo:table-header>
                                            <fo:table-row>
                                                <fo:table-cell border="solid 0.1mm black">
                                                    <fo:block text-align="center" font-size="10pt" space-after="1mm" font-weight="bold">
                                                        Tipo Cargo
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid 0.1mm black">
                                                    <fo:block text-align="center" font-size="10pt" space-after="1mm" font-weight="bold">
                                                        Total de Cargos
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid 0.1mm black">
                                                    <fo:block text-align="center" font-size="10pt" space-after="1mm" font-weight="bold">
                                                        Monto Total
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border="solid 0.1mm black">
                                                    <fo:block text-align="center" font-size="10pt" space-after="1mm" font-weight="bold">
                                                        Cargos Rechazados
                                                    </fo:block>
                                                </fo:table-cell>
												<fo:table-cell border="solid 0.1mm black">
                                                    <fo:block text-align="center" font-size="10pt" space-after="1mm" font-weight="bold">
                                                        Monto Rechazado
                                                    </fo:block>
                                                </fo:table-cell>
												<fo:table-cell border="solid 0.1mm black">
                                                    <fo:block text-align="center" font-size="10pt" space-after="1mm" font-weight="bold">
                                                        Cargos Aceptados
                                                    </fo:block>
                                                </fo:table-cell>
												<fo:table-cell border="solid 0.1mm black">
                                                    <fo:block text-align="center" font-size="10pt" space-after="1mm" font-weight="bold">
                                                        Monto Aceptado
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-header>
                                        <fo:table-body>
                                            <xsl:for-each select="detalleTotales">
                                                <fo:table-row>
                                                    <fo:table-cell border="solid 0.1mm black">
                                                        <fo:block text-align="right" font-size="10pt" space-after="1mm">
                                                            <xsl:value-of select="tipoCargo" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid 0.1mm black">
                                                        <fo:block text-align="right" font-size="10pt" space-after="1mm">
                                                            <xsl:value-of select="totalCargos" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                       <fo:table-cell border="solid 0.1mm black">
                                                        <fo:block text-align="left" font-size="10pt" space-after="1mm">
                                                            <xsl:value-of select="montoTotal" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid 0.1mm black">
                                                        <fo:block text-align="right" font-size="10pt" space-after="1mm">
                                                            <xsl:value-of select="cargosRechazados" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid 0.1mm black">
                                                        <fo:block text-align="right" font-size="10pt" space-after="1mm">
                                                            <xsl:value-of select="montoRechazado" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border="solid 0.1mm black">
                                                        <fo:block text-align="right" font-size="10pt" space-after="1mm">
                                                            <xsl:value-of select="cargosAceptados" />
                                                        </fo:block>
                                                    </fo:table-cell> 
                                                    <fo:table-cell border="solid 0.1mm black">
                                                        <fo:block text-align="right" font-size="10pt" space-after="1mm">
                                                            <xsl:value-of select="montoAceptado" />
                                                        </fo:block>
                                                    </fo:table-cell> 													
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                    <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                        &#160;
                                    </fo:block>
                                </xsl:when>
                            </xsl:choose>                         
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>