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
                        Página
                        <fo:page-number />
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block margin-left="117mm" margin-top="15cm">
                        <fo:block margin-left="1mm">
                            <fo:table width="20cm">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="2">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                Estimado Cliente
                                            </fo:block>
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                                <xsl:value-of select="mensajeEstimadoCliente" />
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
                                                Nombre del Archivo
                                            </fo:block>
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                                <xsl:value-of select="nombreArchivo" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-columns-spanned="1">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                Nombre Cliente
                                            </fo:block>
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                                <xsl:value-of select="nombreCliente" />
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
                                                Número de Convenio
                                            </fo:block>
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                                   <xsl:value-of select="numeroConvenio" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-columns-spanned="1">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                Folio
                                            </fo:block>
                                            <xsl:for-each select="folios">
                                                <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                                    <xsl:value-of select="numeroFolio" />
                                                </fo:block>
                                            </xsl:for-each>
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
                                                Nombre Usuario
                                            </fo:block>
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                                <xsl:value-of select="nombreUsuario" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-columns-spanned="1">
                                            <xsl:choose>
                                                <xsl:when test="sinFecha='true'">
                                                    <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                        &#160; 
                                                    </fo:block>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                        Fecha de Cargo
                                                    </fo:block>
                                                    <xsl:for-each select="fechas">
                                                        <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal">
                                                            <xsl:value-of select="fecha" />
                                                        </fo:block>
                                                    </xsl:for-each>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="2">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                &#160; </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="2">
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="bold">
                                                Estimado Cliente
                                            </fo:block>
                                            <fo:block text-align="left" font-size="10pt" space-after="1mm" font-weight="normal" margin-right="5cm">
                                                Recuerde imprimir o guardar este comprobante como
                                                respaldo. Ante cualquier consulta comunicarse con la Mesa de Ayuda al fono 800 692 8555.
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>