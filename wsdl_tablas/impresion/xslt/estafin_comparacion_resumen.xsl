<?xml version="1.0" encoding="iso-8859-1"?>

<!-- Copyright(c) BEE Consultorias y Sistemas - All Rights Reserved -->


<xsl:stylesheet version="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no"
indent="yes"/>

    <xsl:param name="IMG_URL"/>
    <xsl:param name="TIMESTAMP"/>
    <xsl:decimal-format name="pesos" decimal-separator="," grouping-separator="."/>

    <xsl:template match="estafin">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-height="27.9cm" page-width="21.1cm" margin-top="2cm" margin-bottom="2cm" margin-left="2cm" margin-right="2cm"><fo:region-body/>
                    <fo:region-before extent="3cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="miCarta">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block text-align="end" font-size="10pt" font-family="Times Roman" line-height="-24pt">
                <xsl:copy-of select="$TIMESTAMP"/> - Banco Crédito Inversiones - P <fo:page-number/>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block space-after="5mm">
                        <fo:external-graphic src="url({$IMG_URL}/lg_bci_azul_1.gif)"/>
                    </fo:block>
                    <fo:block font-size="10pt" font-weight="bold" space-after="10mm" text-align="center">
                        ESTADO FINANCIERO - RESUMEN
                    </fo:block>

                    <fo:block font-size="8pt" space-after="10mm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="5cm"/>
                            <fo:table-column column-width="9cm"/>
                            <fo:table-body>
                            
                            <!-- datos generales -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Rut Cliente:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato1"/> - <xsl:value-of select="dato2"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Nombre Cliente:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato3"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ejecutivo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="ejecutivoEnSesion"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ejecutivo del Cliente:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato4"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Actividad Económica:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato5"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Tipo De Balance:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato6"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cobertura:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato7"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Estado de Balance:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato8"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Moneda:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato9"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <!-- fin datos generales -->

                        </fo:table>
                    </fo:block>
                    
                    <!-- Separador -->
                    <fo:block space-after="10mm">
                        <fo:leader leader-alignment="center" leader-pattern="dots" leader-length="17cm"/>
                    </fo:block>
                    
                    <!-- Datos Estado Financiero -->
                    <fo:block font-size="7pt" space-after="10mm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="50mm"/>
                            <fo:table-column column-width="20mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="20mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="20mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="20mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-body>
                            
                                <!-- Cabecera Estado Financiero -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Fecha Estado Financiero:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato10"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato133"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato256"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato379"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Número de Balance:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato11"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato134"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato257"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato380"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Número de Meses:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato12"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato135"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato258"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato381"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Auditor:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato13"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                                <xsl:value-of select="por1"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato136"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="por2"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato259"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="por3"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato382"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="por4"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- **************** Activos ****************** titulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Activos
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell background-color="lightgrey" number-columns-spanned="8">
                                        <fo:leader leader-pattern=" " leader-length="17cm"/>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disponible + DAP:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato14"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato15"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato137"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato138"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato260"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato261"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato383"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato384"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ctas./Dctos. por Cobrar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato16"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato17"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato139"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato140"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato262"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato263"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato385"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato386"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ctas. X Cobrar Emp. Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato18"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato19"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato141"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato142"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato264"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato265"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato387"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato388"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Existencias:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato20"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato21"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato143"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato144"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato266"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato267"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato389"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato390"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato22"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato23"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato145"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato146"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato268"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato269"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato391"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato392"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Circulante:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato24"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato25"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato147"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato148"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato270"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato271"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato393"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato394"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Activo Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato26"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato27"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato149"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato150"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato272"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato273"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato395"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato396"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Inversiones Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato28"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato29"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato151"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato152"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato274"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato275"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato397"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato398"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ctas. X Cobrar Emp. Relac. L.P.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato30"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato31"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato153"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato154"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato276"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato277"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato399"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato400"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Activos En Leasing:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato32"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato33"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato155"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato156"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato278"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato279"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato401"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato402"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Activos L.P.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato34"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato35"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato157"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato158"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato280"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato281"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato403"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato404"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Otros Activos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato36"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato37"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato159"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato160"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato282"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato283"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato405"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato406"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Activos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato38"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato39"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato161"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato162"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato284"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato285"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato407"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato408"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <!-- **************** Pasivos ****************** titulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Pasivos
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell background-color="lightgrey" number-columns-spanned="8">
                                        <fo:leader leader-pattern=" " leader-length="17cm"/>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deuda Bcos. CP/Cuota Bco. L.P.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato40"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato41"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato163"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato164"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato286"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato287"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato409"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato410"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deuda Leasing C.P.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato42"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato43"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato165"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato166"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato288"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato289"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato411"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato412"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cuentas/Doctos. por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato44"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato45"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato167"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato168"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato290"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato291"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato413"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato414"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ctas. x Pagar Emp. Relac. C.P.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato46"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato47"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato169"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato170"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato292"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato293"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato415"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato416"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato48"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato49"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato171"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato172"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato294"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato295"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato417"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato418"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Pasivo Circulante:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato50"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato51"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato173"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato174"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato296"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato297"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato419"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato420"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deuda Bancos L.P.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato52"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato53"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato175"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato176"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato298"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato299"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato421"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato422"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deuda Leasing L.P.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato54"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato55"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato177"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato178"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato300"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato301"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato423"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato424"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ctas. Por Pagar Emp. Relac. L.P.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato56"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato57"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato179"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato180"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato302"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato303"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato425"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato426"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Pasivos Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato58"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato59"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato181"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato182"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato304"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato305"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato427"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato428"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Pasivo Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato60"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato61"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato183"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato184"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato306"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato307"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato429"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato430"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Pasivo Exigible:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato62"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato63"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato185"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato186"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato308"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato309"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato431"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato432"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Capital Pagado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato64"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato65"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato187"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato188"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato310"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato311"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato433"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato434"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otras Ctas. de Capital:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato66"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato67"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato189"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato190"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato312"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato313"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato435"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato436"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad Pérdida Acumulada:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato68"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato69"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato191"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato192"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato314"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato315"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato437"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato438"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad Ejercicio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato70"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato71"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato193"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato194"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato316"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato317"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato439"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato440"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Pasivo No Exigible:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato72"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato73"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato195"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato196"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato318"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato319"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato441"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato442"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Pasivos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato74"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato75"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato197"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato198"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato320"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato321"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato443"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato444"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- **************** Estado de Resultado ****************** titulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Estado de Resultado
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell background-color="lightgrey" number-columns-spanned="8">
                                        <fo:leader leader-pattern=" " leader-length="17cm"/>
                                    </fo:table-cell>
                                </fo:table-row>

                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ingresos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato76"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato77"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato199"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato200"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato322"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato323"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato445"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato446"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Costo de Ventas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato78"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato79"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato201"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato202"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato324"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato325"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato447"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato448"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Depreciación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato80"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato81"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato203"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato204"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato326"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato327"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato449"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato450"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Resultado Explotación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato82"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato83"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato205"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato206"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato328"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato329"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato451"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato452"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Gastos de Adm. y Ventas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato84"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato85"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato207"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato208"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato330"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato331"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato453"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato454"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Resultado Operacional:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato86"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato87"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato209"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato210"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato332"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato333"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato455"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato456"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Gastos Financieros:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato88"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato89"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato211"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato212"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato334"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato335"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato457"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato458"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Corrección Monetaria:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato90"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato91"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato213"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato214"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato336"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato337"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato459"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato460"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utl./Pérdida Emp. Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato92"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato93"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato215"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato216"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato338"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato339"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato461"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato462"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Ingr./Egre. Netos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato94"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato95"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato217"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato218"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato340"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato341"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato463"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato464"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Resultado No Operacional:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato96"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato97"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato219"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato220"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato342"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato343"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato465"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato466"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuesto a la Renta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato98"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato99"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato221"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato222"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato344"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato345"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato467"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato468"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Interés Minoritario:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato100"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato101"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato223"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato224"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato346"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato347"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato469"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato470"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Amort. Mayor Valor Inversión:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato102"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato103"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato225"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato226"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato348"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato349"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato471"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato472"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Resultado Final:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato104"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato105"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato227"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato228"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato350"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato351"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato473"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato474"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- **************** Indices ****************** titulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Indices
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell background-color="lightgrey" number-columns-spanned="8">
                                        <fo:leader leader-pattern=" " leader-length="17cm"/>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Generación Operativa Bruta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato106"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato229"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato352"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato475"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad Oper. Ventas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato107"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato230"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato353"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato476"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad/Ventas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato108"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato231"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato354"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato477"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad/Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato109"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato232"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato355"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato478"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Liquidez Corriente:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato110"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato233"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato356"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato479"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Liquidez Ácida:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato111"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato234"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato357"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato480"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Permanencia Inventario:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato112"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato235"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato358"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato481"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Permanencia Créditos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato113"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato236"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato359"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato482"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Permanencia Ctas. Por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato114"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato237"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato360"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato483"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Res. Operacional/Gastos Finan.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato115"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato238"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato361"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato484"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cobertura Pasivos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato116"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato239"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato362"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato485"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Leverage:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato117"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato240"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato363"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato486"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>   
                                
                                <!-- **************** variaciones reales ****************** subtitulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Variaciones Reales
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ventas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato118"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato241"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato118) != 0"><xsl:if test="string(number(dato241 - dato118)) != 'NaN'"><xsl:value-of select="format-number((dato241 - dato118) * 100 div dato118, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato364"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato241) != 0"><xsl:if test="string(number(dato364 - dato241)) != 'NaN'"><xsl:value-of select="format-number((dato364 - dato241) * 100 div dato241, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato487"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato364) != 0"><xsl:if test="string(number(dato487 - dato364)) != 'NaN'"><xsl:value-of select="format-number((dato487 - dato364) * 100 div dato364, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Pasivo Exigible:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato119"/> 
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato242"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato119) != 0"><xsl:if test="string(number(dato242 - dato119)) != 'NaN'"><xsl:value-of select="format-number((dato242 - dato119) * 100 div dato119, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato365"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato242) != 0"><xsl:if test="string(number(dato365 - dato242)) != 'NaN'"><xsl:value-of select="format-number((dato365 - dato242) * 100 div dato242, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato488"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato365) != 0"><xsl:if test="string(number(dato488 - dato365)) != 'NaN'"><xsl:value-of select="format-number((dato488 - dato365) * 100 div dato365, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato120"/> 
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato243"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato120) != 0"><xsl:if test="string(number(dato243 - dato120)) != 'NaN'"><xsl:value-of select="format-number((dato243 - dato120) * 100 div dato120, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato366"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato243) != 0"><xsl:if test="string(number(dato366 - dato243)) != 'NaN'"><xsl:value-of select="format-number((dato366 - dato243) * 100 div dato243, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato489"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato366) != 0"><xsl:if test="string(number(dato489 - dato366)) != 'NaN'"><xsl:value-of select="format-number((dato489 - dato366) * 100 div dato366, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad Neta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato121"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato244"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato121) != 0"><xsl:if test="string(number(dato244 - dato121)) != 'NaN'"><xsl:value-of select="format-number((dato244 - dato121) * 100 div dato121, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato367"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato244) != 0"><xsl:if test="string(number(dato367 - dato244)) != 'NaN'"><xsl:value-of select="format-number((dato367 - dato244) * 100 div dato244, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato490"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato367) != 0"><xsl:if test="string(number(dato490 - dato367)) != 'NaN'"><xsl:value-of select="format-number((dato490 - dato367) * 100 div dato367, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Resultado Operacional:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato122"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato245"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato122) != 0"><xsl:if test="string(number(dato245 - dato122)) != 'NaN'"><xsl:value-of select="format-number((dato245 - dato122) * 100 div dato122, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato368"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato245) != 0"><xsl:if test="string(number(dato368 - dato245)) != 'NaN'"><xsl:value-of select="format-number((dato368 - dato245) * 100 div dato245, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato491"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:if test="number(dato368) != 0"><xsl:if test="string(number(dato491 - dato368)) != 'NaN'"><xsl:value-of select="format-number((dato491 - dato368) * 100 div dato368, '##0,0', 'pesos')"/></xsl:if></xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <!-- **************** fufo ****************** titulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Fuentes y Usos de Fondos
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell background-color="lightgrey" number-columns-spanned="8">
                                        <fo:leader leader-pattern=" " leader-length="17cm"/>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Fuentes Operativas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato123"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato246"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato369"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato492"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Fuentes No Operativas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato124"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato247"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato370"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato493"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Bancos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato125"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato248"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato371"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato494"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato126"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato249"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato372"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato495"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otras Fuentes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato127"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato250"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato373"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato496"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Usos Operativos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato128"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato251"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato374"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato497"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Usos No Operativos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato129"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato252"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato375"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato498"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Activo Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato130"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato253"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato376"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato499"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Retiros:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato131"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato254"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato377"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato500"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Usos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato132"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato255"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato378"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="end">
                                            <xsl:value-of select="dato501"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                </fo:table-row>                        
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-alignment="center" leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>

                    <!-- Separador -->
                    <fo:block space-after="10mm">
                        <fo:leader leader-alignment="center" leader-pattern="dots" leader-length="17cm"/>
                    </fo:block>

                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
                                
                                
                                
                                
                                
