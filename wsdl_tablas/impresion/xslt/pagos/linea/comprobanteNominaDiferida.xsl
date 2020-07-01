<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
        <xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>
    <xsl:template match="/">
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
                <fo:simple-page-master master-name="all-pages" page-width="210mm" page-height="297mm" margin-top="30mm">
                    <fo:region-body padding="0" margin="0.7in" region-name="xsl-region-body" column-gap="0.25in" />
                    <fo:region-before region-name="xsl-region-before" extent="7in"/>
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
                            <fo:table-column column-width="2cm" />  <!-- margen -->
                            <fo:table-column column-width="14cm" /> <!-- BCI -->
                            <fo:table-column />                     <!-- Sello Agua -->
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="ComprobanteNominasDiferidas/rutaLogoCabecera" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="ComprobanteNominasDiferidas/rutaLogoSelloAgua" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                </fo:table-row>
                             </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="12pt">
                    <fo:block font-weight="bold" font-size="8pt" color="{$txt}" >
                        Página
                        <fo:page-number />
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block background-position="center" margin-left="117mm">
                        <fo:block margin-left="5mm" width="200pt" height="200pt" space-before="12mm">
                            <fo:block>
                                <fo:table width="50cm" space-after="4mm">
                                    <fo:table-column column-width="25cm" />
                                    <fo:table-column column-width="25cm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block text-align="left" font-size="10pt" color="{$txt}" space-after="1mm">
                                                    <fo:inline font-weight="normal">
                                                        Rut Empresa:&#160;
                                                    </fo:inline>
                                                    <fo:inline font-weight="bold">
                                                        <xsl:value-of select="ComprobanteNominasDiferidas/nominas/rutEmpresa"/>-<xsl:value-of select="ComprobanteNominasDiferidas/nominas/dv" />
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}" space-after="7mm">
                                                    <fo:inline font-weight="normal">
                                                        Nombre Empresa:&#160;
                                                    </fo:inline>
                                                    <fo:inline font-weight="bold">
                                                        <xsl:value-of
                                                select="ComprobanteNominasDiferidas/nominas/nombreEmpresa" />
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}" space-after="1mm">
                                                    Rut Usuario:&#160;
                                                    <xsl:value-of select="ComprobanteNominasDiferidas/nominas/rutUsuario"/>-<xsl:value-of select="ComprobanteNominasDiferidas/nominas/digitoVerificadorUsuario"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}">
                                                    Nombre Usuario:&#160;
                                                    <xsl:value-of
                                                select="ComprobanteNominasDiferidas/nominas/nombreUsuario" />
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                            <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}">
                                    Estimado Cliente
                            </fo:block>
							<fo:block font-weight="normal" text-align="left" font-size="10pt"
								color="{$txt}">
								Con fecha
								<fo:inline font-weight="bold">
									<xsl:value-of select="ComprobanteNominasDiferidas/nominas/fechaHoraFirma" />
								</fo:inline>
								la nómina
								<fo:inline font-weight="bold">
									<xsl:value-of select="ComprobanteNominasDiferidas/nominas/numTransferencia" />
								</fo:inline>
								ha sido pagada exitosamente y cargada a la cuenta
								<fo:inline font-weight="bold">
									<xsl:value-of select="ComprobanteNominasDiferidas/nominas/ctaOrigen" />
								</fo:inline>.
							</fo:block>
                            <fo:block font-size="5pt" space-before="5mm" space-after="0.5cm">
                                <fo:table  width="17cm">
                                    <fo:table-column column-width="0.5cm" />
                                    <fo:table-column column-width="3cm" />
                                    <fo:table-column column-width="5cm" />
                                    <fo:table-column column-width="4cm" />
                                    <fo:table-column column-width="3cm" />
                                    <fo:table-column column-width="2cm" />
                                    <fo:table-body >
                                        <fo:table-row >
                                            <fo:table-cell>
                                            </fo:table-cell>
                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                <fo:block font-weight="bold" font-size="10pt" text-align="left" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                    Código Identificación
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                <fo:block font-weight="bold" font-size="10pt" text-align="left" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                    Nombre de Nómina
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                <fo:block font-weight="bold" font-size="10pt" text-align="left" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                    Fecha Carga
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                <fo:block font-weight="bold" font-size="10pt" text-align="left" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                    Fecha Pago
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                <fo:block font-weight="bold" font-size="10pt" text-align="left" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                    Monto nómina
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <xsl:for-each select="ComprobanteNominasDiferidas/nominas/listaNominas/datosListaNominas">
                                            <fo:table-row>
                                                <fo:table-cell>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-size="11pt" text-align="right" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        <xsl:value-of select="numTransferencia" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-size="11pt" text-align="left" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        <xsl:value-of select="etiqueta" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-size="11pt" text-align="center" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        <xsl:value-of select="fechaEnvio" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-size="11pt" text-align="center" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        <xsl:value-of select="fechaPago" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-size="11pt" text-align="right" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                    <xsl:value-of select="montoTotalNominas" />
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </xsl:for-each>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        <xsl:if test="position() = last()">
                            <fo:table space-after="7cm">
                                <fo:table-column column-width="0.5cm" />
                                <fo:table-column column-width="2cm" />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell margin-left="16.7cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell margin-left="17.2cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </xsl:if>
                        <xsl:if test="position() != last()">
                            <fo:table space-after="7cm">
                                <fo:table-column column-width="0.5cm" />
                                <fo:table-column column-width="2cm" />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell margin-left="16.7cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell margin-left="17.2cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </xsl:if>
                        <fo:block space-before="1cm" font-size="9pt" margin-left="0mm">
                            Estimado Cliente,
                        </fo:block>
                        <fo:block space-before="0cm" font-size="9pt" margin-left="0mm">
                            Recuerde imprimir o guardar este comprobante como respaldo. Ante cualquier consulta comunicarse con la Mesa de Ayuda al fono 600 224 4000 
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
    <xsl:template name="montoFormateado">
        <xsl:param name="montoaFormatear"/>
        <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
            &#0160;<xsl:value-of select="format-number($montoaFormatear, '###.###', 'peso')"/>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>