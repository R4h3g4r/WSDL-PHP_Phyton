<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg" version="1.0">
    <xsl:decimal-format name="numeracionCL" decimal-separator="," grouping-separator="."/>
    <xsl:variable name="smallcaseDV" select="'k'" />
    <xsl:variable name="uppercaseDV" select="'K'" />

    <xsl:template match="firmaMandatoTO">
        <fo:root>
            <fo:layout-master-set>
                <!-- layout for the first page -->
                <fo:simple-page-master master-name="first" page-height="29.7cm" page-width="19cm" border="thick solid red">
                    <fo:region-body margin-top="2cm" margin-left="1cm" margin-right="1cm" />
                    <fo:region-before extent="12cm" />
                    <fo:region-after extent="1cm" />
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="basicPSM">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference master-reference="first" page-position="first" />
                  </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="basicPSM">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block text-align="center" color="#000000" font-size="15pt" font-weight="100" padding-bottom="1cm">
                        MANDATO PAGO AUTOMÁTICO
                    </fo:block>
                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black">
                        <fo:table-column column-width="proportional-column-width(1)" />
                        <fo:table-column column-width="proportional-column-width(1)" />
                        <fo:table-column column-width="proportional-column-width(1)" />
                        <fo:table-column column-width="proportional-column-width(1.6)" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE" border="solid 0.1mm #BEBEBE" padding="1.5mm">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">
                                        MANDATO PAC Y DE CARGO DE GASTOS OPERACIONALES
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <xsl:if test="(antiguedad='T1') or (antiguedad='T2' and pilotoUsada='false')">
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="4" border="none" padding="2.5mm" padding-top="5mm">
                                        <fo:block text-align="justify" line-height="150%" color="#000000" font-size="12pt" font-weight="100">
                                            Don(ña) <xsl:value-of select="nombreCliente" />, RUT: <xsl:value-of select="format-number(rut,'#.###', 'numeracionCL')" />-<xsl:value-of select="translate(dv, $smallcaseDV, $uppercaseDV)" />, autorizo al Banco de Crédito e Inversiones, para cargar
                                            los días <fo:inline font-weight="bold"><xsl:value-of select="diaCargo" /></fo:inline> de cada mes, en mi Cuenta Corriente BCI Nº <fo:inline font-weight="bold"><xsl:value-of select="cuentaCorriente" /></fo:inline> los dividendos hipotecarios,
                                            como asimismo por única vez para cargar en la misma cuenta corriente los gastos de tasación,
                                            borrador de escritura, estudio de título y conservador de bienes raíces asociados a la operación
                                            de crédito que por este acto solicito.
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:if>

                            <xsl:if test="antiguedad='T2' and pilotoUsada='true'">
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="4" border="none" padding="2.5mm" padding-top="5mm">
                                        <fo:block text-align="justify" line-height="150%" color="#000000" font-size="12pt" font-weight="100">
                                            Don(ña) <xsl:value-of select="nombreCliente" />, RUT: <xsl:value-of select="format-number(rut,'#.###', 'numeracionCL')" />-<xsl:value-of select="translate(dv, $smallcaseDV, $uppercaseDV)" />, autorizo al Banco de Crédito e Inversiones, para
                                            <fo:inline font-weight="bold">cargar los días <xsl:value-of select="diaCargo" /></fo:inline> de cada mes, en mi <fo:inline font-weight="bold">Cuenta Corriente BCI Nº <xsl:value-of select="cuentaCorriente" /></fo:inline> los dividendos hipotecarios,
                                            como asimismo por única vez para cargar en la misma cuenta corriente los gastos de tasación, borrador de escritura, estudio de título y conservador de bienes raíces asociados a la operación de crédito que por este acto solicito.
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="4" border="none" padding="2.5mm" padding-top="5mm">
                                        <fo:block text-align="justify" line-height="150%" color="#000000" font-size="12pt" font-weight="100">
                                            En el caso que además solicite la gestoría de documentos* para el estudio legal de la propiedad, también autorizo al Banco de Crédito e Inversiones para cargar a mi cuenta corriente
                                            los gastos realizados en la solicitud de antecedentes ante los organismos que correspondan, ya sea de forma directa o a través de un tercero.
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="4" border="none" padding="2.5mm" padding-top="5mm">
                                        <fo:block text-align="justify" line-height="150%" color="#000000" font-size="10pt" font-weight="100">
                                            *Los cobros realizados por la gestoría de recolección de antecedentes efectivamente prestada, deberán ser cancelados aunque desistas del proceso o si los títulos de la propiedad presentan reparos que hagan imposible proseguir con la operación.
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:if>


                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="3" border="none" padding="2.5mm" padding-top="5mm">
                                    <fo:block>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="none">
                                    <fo:block text-align="left" margin-right="2.5mm">
                                        <fo:external-graphic>
                                            <xsl:attribute name="src">
                                                tablas/impresion/imagenes/hipotecario/certificado_digital.jpg
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="3" border="none" padding="2.5mm" padding-top="5mm">
                                    <fo:block>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="none">
                                    <fo:block text-align="center" margin-right="2.5mm" font-size="10pt">
                                        Firma Mandante y/o Cliente
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
