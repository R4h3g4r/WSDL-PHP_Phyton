<?xml version="1.0" encoding="iso-8859-1"?>

<!-- Copyright(c) BEE Consultorias y Sistemas - All Rights Reserved -->


<xsl:stylesheet version="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no"
indent="yes"/>

    <xsl:param name="IMG_URL"/>
    <xsl:param name="TIMESTAMP"/>

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
                    <fo:block font-size="16pt" font-weight="bold" space-after="10mm" text-align="center">
                        ESTADO FINANCIERO - INGRESO ESTADO FINANCIERO
                    </fo:block>

                    <fo:block font-size="10pt" space-after="10mm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="9cm" text-align="left"/>
                            <fo:table-column column-width="9cm" text-align="right"/>
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
                                            <xsl:value-of select="dato4"/>
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
                                            <xsl:value-of select="dato5"/>
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
                                            <xsl:value-of select="dato6"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Fecha de Balance:
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
                                            Número de Meses:
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
                                            Número de Balance:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato9"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Tipo de Balance:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato10"/>
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
                                            <xsl:value-of select="dato11"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Estado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato12"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cifras en:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato13"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Auditor:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato14"/>
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

                    <fo:block font-size="8pt" space-after="10mm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="9cm" text-align="left"/>
                            <fo:table-column column-width="9cm" text-align="right"/>
                            <fo:table-body>
                                
                                <!-- **************** activos ****************** -->
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            - Activos
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disponible:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato15"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deposito a Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato16"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Valores Negociables:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato17"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deudores por Venta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato18"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Documentos por Cobrar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato19"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deudores Varios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato20"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Doctos.y Cuentas por Cobrar Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato21"/>
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
                                        <fo:block>
                                            <xsl:value-of select="dato22"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuestos por Recuperar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato23"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Gastos Pagados por Anticipado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato24"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuestos Diferidos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato25"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Activos Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato26"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato27"/>:    
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato28"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato29"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato30"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato31"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato32"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt"> 
                                            =Total Activos Circulantes                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            <xsl:value-of select="dato33"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Terrenos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato34"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Construcciones y Obras:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato35"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Maquinaria y Equipos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato36"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Bienes Agricolas Animales:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato37"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Bienes Agricolas Plantaciones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato38"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Activos Fijos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato39"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Mayor Valor Retasación Técnica Activo Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato40"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Depreciación Acumulada:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato41"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            =Total Activos Fijos                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            <xsl:value-of select="dato42"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Inversión Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato43"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Inversión en Otras Sociedades:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato44"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Menor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato45"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Mayor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato46"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deudores a Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato47"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Doctos.y Cuentas Cobrar Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato48"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Intangibles:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato49"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Amortización:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato50"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Activos Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato51"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Activos en Leasing:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato52"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato53"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato54"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato55"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato56"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato57"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato58"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            =Total Otros Activos                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            <xsl:value-of select="dato59"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="10pt">
                                            =Total Activos                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="10pt">
                                            <xsl:value-of select="dato60"/>
                                        </fo:block>
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
                                
                                <!-- **************** pasivos ****************** -->
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            - Pasivos
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Oblig. c/Bcos. e Inst. Fin. Corto Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato61"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Oblig. c/Bcos. e Inst. Fin. Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato62"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obligaciones c/Público (Efectos de Comercio):
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato63"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obligaciones c/Público (Bonos):
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato64"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obligaciones largo Plazo c/Vencimiento de un Año:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato65"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dividendos por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato66"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cuentas por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato67"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Documentos por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato68"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Acreedores Varios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato69"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Doctos.y Cuentas Pagar Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato70"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Provisiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato71"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Retenciones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato72"/>
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
                                        <fo:block>
                                            <xsl:value-of select="dato73"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ingresos percibidos por Adelantado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato74"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuestos Diferidos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato75"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Pasivos Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato76"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obligaciones Leasing Corto Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato77"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato78"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato79"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato80"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato81"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato82"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato83"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            =Total Pasivos Circulantes                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            <xsl:value-of select="dato84"/>
                                        </fo:block>
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
                                
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obligaciones con Bcos. e Inst. Fin.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato85"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obligaciones c/Público (bonos):
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato86"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Documentos por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato87"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Acreedores Varios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato88"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Doctos.y Cuentas Pagar Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato89"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Provisiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato90"/>
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
                                        <fo:block>
                                            <xsl:value-of select="dato91"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obligaciones Leasing Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato92"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato93"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato94"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato95"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato96"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            =Total Pasivo Largo Plazo                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            <xsl:value-of select="dato97"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            =Interés Minoritario                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            <xsl:value-of select="dato98"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Capital Pagado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato99"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Reserva Revalorización Capital:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato100"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Sobreprecio Vta. Acciones Propias:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato101"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Reserva Mayor Valor en Retasación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato102"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otras Reservas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato103"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deficit Acum. Período Desarrollo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato104"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidades Retenidas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato105"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Reserva Futuros Dividendos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato106"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidades Acumuladas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato107"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Pérdidas Acumuladas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato108"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad (Pérdida) del Ejercicio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato109"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dividendos Provisorios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato110"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato111"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato112"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato113"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato114"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            =Total Patrimonio                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            <xsl:value-of select="dato115"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="10pt">
                                            =Total Pasivos                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="10pt">
                                            <xsl:value-of select="dato116"/>
                                        </fo:block>
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
                                
                                <!-- **************** Estado de Resultados ****************** -->
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            - Estado de Resultados
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ingreso Explotación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato117"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Costo Explotación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato118"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Depreciación del Ejercicio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato119"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Margen Explotación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato120"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Gastos Administración y Ventas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato121"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            =Resultado Operacional                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            <xsl:value-of select="dato122"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ingresos Financieros:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato123"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad Inversión Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato124"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Ingresos Fuera Explotación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato125"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Pérdida Inversión Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato126"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Amortización Menor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato127"/>
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
                                        <fo:block>
                                            <xsl:value-of select="dato128"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Egresos Fuera Explotación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato129"/>
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
                                        <fo:block>
                                            <xsl:value-of select="dato130"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato131"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato132"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="dato133"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato134"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            =Resultado No Operacional                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="9pt">
                                            <xsl:value-of select="dato135"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Resultado Antes Impuesto a la Renta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato136"/>
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
                                        <fo:block>
                                            <xsl:value-of select="dato137"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad (Pérdida) Consolidada:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato138"/>
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
                                        <fo:block>
                                            <xsl:value-of select="dato139"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad (Pérdida) Líquida:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato140"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Amortización Mayor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dato141"/>
                                        </fo:block>
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="10pt">
                                            =Utilidad (Pérdida) Ejercicio                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="10pt">
                                            <xsl:value-of select="dato142"/>
                                        </fo:block>
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
                                <!-- Nuevos Datos Corrección Monetaria Abono-->
                                                
                                        <fo:table-row>
                                           <fo:table-cell>
                                               <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                   Corrección Monetaria Abono
                                               </fo:block>
                                           </fo:table-cell>
                                                </fo:table-row>
                                                <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                     C. M. Disponible:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data143"/>
                                                </fo:block>
                                            </fo:table-cell>
                                       </fo:table-row>     
                                
                                                <fo:table-row>
                                       <fo:table-cell>
                                        <fo:block font-weight="bold">
                                             C. M. Deposito a Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data144"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                     <fo:table-cell>
                                         <fo:block font-weight="bold">
                                              C. M. Valores Negociables (neto):
                                         </fo:block>
                                     </fo:table-cell>
                                     <fo:table-cell>
                                         <fo:block >
                                             <xsl:value-of select="data145"/>
                                         </fo:block>
                                     </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block font-weight="bold">
                                               C. M. Deudores por Venta (neto):
                                           </fo:block>
                                       </fo:table-cell>
                                       <fo:table-cell>
                                           <fo:block >
                                               <xsl:value-of select="data146"/>
                                           </fo:block>
                                       </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block font-weight="bold">
                                               C. M. Documentos por Cobrar (neto):
                                           </fo:block>
                                       </fo:table-cell>
                                       <fo:table-cell>
                                           <fo:block >
                                               <xsl:value-of select="data147"/>
                                           </fo:block>
                                       </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                        <fo:table-cell>
                                            <fo:block font-weight="bold">
                                                 C. M. Deudores Varios (neto):
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block >
                                                <xsl:value-of select="data148"/>
                                            </fo:block>
                                        </fo:table-cell>
                                </fo:table-row> 
                                
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            C. M. Documentos y Cuentas por Cobrar Empresas Relacionadas C/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data149"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            C. M. Existencias (neto):
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data150"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                             C. M. Impuestos por Recuperar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data151"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                </fo:table-row> 
                                
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                           C. M. Gastos Pagados por Anticipado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data153"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                             C. M. Impuestos Diferidos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data152"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            C. M. Otros Activos Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data154"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                
                                
                                
                                
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                             C. M. Total Activo Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data155"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            C. M. Inversiones Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data156"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                             C. M. Inversiones en Otras Sociedades:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data157"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            C. M. Menor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data158"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                           C. M. Mayor Valor Inversiones (menos):
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data159"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            C. M. Activos Leasing:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data160"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            C. M. Documentos y Cuentas por Cobrar Empresas Relacionadas L/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data161"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            C. M. Intangibles:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data162"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> 
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                           C. M. Otros Activos Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data163"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                           Total Abonos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:value-of select="data164"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                
                                <!-- Correccion monetaria Debito -->
                                
                                             <fo:table-row>
                                                   <fo:table-cell>
                                                       <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                           Corrección Monetaria Debito
                                                       </fo:block>
                                                   </fo:table-cell>
                                               </fo:table-row>
                                               <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                           C. M. Revalorización Capital Propio:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell>
                                                        <fo:block >
                                                            <xsl:value-of select="data165"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                        </fo:table-row>                        
                                               <fo:table-row>
                                               <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                     C. M. Obligaciones c/Bcos. e Inst. Fin. Corto Plazo:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data166"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                             <fo:table-cell>
                                                 <fo:block font-weight="bold">
                                                      C. M. Obligaciones c/Público (Efectos de Comercio):
                                                 </fo:block>
                                             </fo:table-cell>
                                             <fo:table-cell>
                                                 <fo:block >
                                                     <xsl:value-of select="data167"/>
                                                 </fo:block>
                                             </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                               <fo:table-cell>
                                                   <fo:block font-weight="bold">
                                                      C. M. Obligaciones Leasing Corto Plazo:
                                                   </fo:block>
                                               </fo:table-cell>
                                               <fo:table-cell>
                                                   <fo:block >
                                                       <xsl:value-of select="data168"/>
                                                   </fo:block>
                                               </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                               <fo:table-cell>
                                                   <fo:block font-weight="bold">
                                                      C. M. Dividendos por Pagar:
                                                   </fo:block>
                                               </fo:table-cell>
                                               <fo:table-cell>
                                                   <fo:block >
                                                       <xsl:value-of select="data169"/>
                                                   </fo:block>
                                               </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                                <fo:table-cell>
                                                    <fo:block font-weight="bold">
                                                         C. M. Cuentas por Pagar:
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block >
                                                        <xsl:value-of select="data170"/>
                                                    </fo:block>
                                                </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                    C. M. Documentos por Pagar Corto Plazo:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data171"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                    C. M. Acreedores Varios Corto Plazo:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data172"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                     C. M. Documentos y Cuentas por Pagar Empresas Relacionadas C/P:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data173"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                  C. M. Provisiones:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data174"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                    C. M. Retenciones:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data175"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                    C. M. Impuesto a la Renta:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data177"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                     C. M. Ingresos Percibidos por Adelantado:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data178"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                   C. M. Impuestos Diferidos:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data176"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                     C. M. Otros Pasivos Circulantes:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data179"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                    C. M. Obligaciones c/Bancos e Instituciones Financieras (Largo Plazo):
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data180"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                 C. M. Obligaciones c/Público (bonos) (Largo Plazo):
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data181"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                   C. M. Documentos por Pagar (Largo Plazo):
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data182"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                   C. M. Acreedores Varios (Largo Plazo):
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data183"/>
                                                </fo:block>
                                            </fo:table-cell>
                                    </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                   C. M. Documentos y Cuentas por Pagar Empresas Relacionadas L/P:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data184"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                  C. M. Provisión Indemnización Años Servicios:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data185"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                  C. M. Provisiones Largo Plazo:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data186"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                  C. M. Obligaciones Leasing Largo Plazo:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data187"/>
                                                </fo:block>
                                            </fo:table-cell>
                                    </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                  C. M. Otros Pasivos Largo Plazo:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data192"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold">
                                                 C. M. Interes Minoritario:
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data188"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                   Total Debitos
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data189"/>
                                                </fo:block>
                                            </fo:table-cell>
                                             </fo:table-row>
                                             <fo:table-row>
                                                <fo:table-cell>
                                                    <fo:block font-weight="bold">
                                                     Ajuste Estado Resultados:
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block >
                                                        <xsl:value-of select="data190"/>
                                                    </fo:block>
                                                </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                 Utilidad o Perdida Correccion Monetaria
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block >
                                                    <xsl:value-of select="data191"/>
                                                </fo:block>
                                            </fo:table-cell>
                                             </fo:table-row>
                                
                                                <!-- FIN Correccion monetaria Debito -->  
                
                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            C. M. Activos Leasing:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell>
                                                        <fo:block >
                                                            <xsl:value-of select="data160"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row> 
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            C. M. Documentos y Cuentas por Cobrar Empresas Relacionadas L/P:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell>
                                                        <fo:block >
                                                            <xsl:value-of select="data161"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row> 
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            C. M. Intangibles:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell>
                                                        <fo:block >
                                                            <xsl:value-of select="data162"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row> 
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                           C. M. Otros Activos Largo Plazo:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell>
                                                        <fo:block >
                                                            <xsl:value-of select="data163"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                           Total Abonos:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell>
                                                        <fo:block >
                                                            <xsl:value-of select="data164"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                                
                                                
                                                <!-- Correccion monetaria Debito -->
                                                
                                                             <fo:table-row>
                                                                   <fo:table-cell>
                                                                       <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                                           Corrección Monetaria Debito
                                                                       </fo:block>
                                                                   </fo:table-cell>
                                                               </fo:table-row>
                                                               <fo:table-row>
                                                                    <fo:table-cell>
                                                                        <fo:block font-weight="bold">
                                                                           C. M. Revalorización Capital Propio:
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>
                                                                        <fo:block >
                                                                            <xsl:value-of select="data165"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                        </fo:table-row>                        
                                                               <fo:table-row>
                                                               <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                     C. M. Obligaciones c/Bcos. e Inst. Fin. Corto Plazo:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data166"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                             <fo:table-cell>
                                                                 <fo:block font-weight="bold">
                                                                      C. M. Obligaciones c/Público (Efectos de Comercio):
                                                                 </fo:block>
                                                             </fo:table-cell>
                                                             <fo:table-cell>
                                                                 <fo:block >
                                                                     <xsl:value-of select="data167"/>
                                                                 </fo:block>
                                                             </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                               <fo:table-cell>
                                                                   <fo:block font-weight="bold">
                                                                      C. M. Obligaciones Leasing Corto Plazo:
                                                                   </fo:block>
                                                               </fo:table-cell>
                                                               <fo:table-cell>
                                                                   <fo:block >
                                                                       <xsl:value-of select="data168"/>
                                                                   </fo:block>
                                                               </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                               <fo:table-cell>
                                                                   <fo:block font-weight="bold">
                                                                      C. M. Dividendos por Pagar:
                                                                   </fo:block>
                                                               </fo:table-cell>
                                                               <fo:table-cell>
                                                                   <fo:block >
                                                                       <xsl:value-of select="data168"/>
                                                                   </fo:block>
                                                               </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                                <fo:table-cell>
                                                                    <fo:block font-weight="bold">
                                                                         C. M. Cuentas por Pagar:
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell>
                                                                    <fo:block >
                                                                        <xsl:value-of select="data170"/>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                    C. M. Documentos por Pagar Corto Plazo:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data171"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                    C. M. Acreedores Varios Corto Plazo:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data172"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                     C. M. Documentos y Cuentas por Pagar Empresas Relacionadas C/P:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data173"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                  C. M. Provisiones:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data174"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                    C. M. Retenciones:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data175"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                    C. M. Impuesto a la Renta:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data176"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                     C. M. Ingresos Percibidos por Adelantado:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data177"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                   C. M. Impuestos Diferidos:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data178"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                     C. M. Otros Pasivos Circulantes:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data179"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                    C. M. Obligaciones c/Bancos e Instituciones Financieras (Largo Plazo):
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data180"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                 C. M. Obligaciones c/Público (bonos) (Largo Plazo):
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data181"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                   C. M. Documentos por Pagar (Largo Plazo):
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data182"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                   C. M. Acreedores Varios (Largo Plazo):
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data183"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                    </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                   C. M. Documentos y Cuentas por Pagar Empresas Relacionadas L/P:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data184"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row> 
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                  C. M. Provisión Indemnización Años Servicios:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data185"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                  C. M. Provisiones Largo Plazo:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data186"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                  C. M. Obligaciones Leasing Largo Plazo:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data187"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                    </fo:table-row>
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                  C. M. Otros Pasivos Largo Plazo:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data192"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                 C. M. Interes Minoritario:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data188"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                                   Total Debitos
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data189"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                             </fo:table-row>
                                                             <fo:table-row>
                                                                <fo:table-cell>
                                                                    <fo:block font-weight="bold">
                                                                     Ajuste Estado Resultados:
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell>
                                                                    <fo:block >
                                                                        <xsl:value-of select="data190"/>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                                 Utilidad o Perdida Correccion Monetaria
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data191"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                             </fo:table-row>
                                                
                                                                <!-- FIN Correccion monetaria Debito -->  
                                                                <!-- INI Datos Adicionales -->  
                                                                
                                                     <fo:table-row>
                                                               <fo:table-cell>
                                                                   <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                                       Adicionales
                                                                   </fo:block>
                                                               </fo:table-cell>
                                                       </fo:table-row>
                                                       <fo:table-row>
                                                                <fo:table-cell>
                                                                    <fo:block font-weight="bold">
                                                                       Emision de Acciones:
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell>
                                                                    <fo:block >
                                                                        <xsl:value-of select="data193"/>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                    </fo:table-row>                        
                                                       <fo:table-row>
                                                           <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                                Otros Aumentos de Patrimonio:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data194"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                         <fo:table-cell>
                                                             <fo:block font-weight="bold">
                                                                  Dividendos Pagados:
                                                             </fo:block>
                                                         </fo:table-cell>
                                                         <fo:table-cell>
                                                             <fo:block >
                                                                 <xsl:value-of select="data195"/>
                                                             </fo:block>
                                                         </fo:table-cell>
                                                    </fo:table-row> 
                                                    
                                                    <fo:table-row>
                                                           <fo:table-cell>
                                                               <fo:block font-weight="bold">
                                                                 Dividendos Percibidos:
                                                               </fo:block>
                                                           </fo:table-cell>
                                                           <fo:table-cell>
                                                               <fo:block >
                                                                   <xsl:value-of select="data196"/>
                                                               </fo:block>
                                                           </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                           <fo:table-cell>
                                                               <fo:block font-weight="bold">
                                                                  Otras Disminuciones de Patrimonio:
                                                               </fo:block>
                                                           </fo:table-cell>
                                                           <fo:table-cell>
                                                               <fo:block >
                                                                   <xsl:value-of select="data197"/>
                                                               </fo:block>
                                                           </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                     Venta de Activo Fijo:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data198"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                                Utilidad Venta Activo Fijo:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data199"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                                Castigo Deposito a Plazo:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data200"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                                 Castigo Valores Negociables (neto):
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data201"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                             Castigo Deudores por Venta (neto):
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data202"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                                Castigo Documentos por Cobrar (neto):
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data203"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                               Castigo Deudores Varios (neto):
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data204"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                                 Castigo Cuentas por Cobrar Empresas Relacionadas:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data205"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                               Castigo Existencias (neto):
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data206"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                                Castigo Impuestos por Recuperar:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data207"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                                Castigo Gastos Pagados Anticipados:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data208"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                             Castigo Otros Activos Circulantes:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data209"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                              Castigo Total Activos Fijos:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data210"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                               Castigo Inversiones Empresas Relacionadas:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data211"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                               Castigo Inversiones en Otras Sociedades:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data212"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                 </fo:table-row> 
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                              Castigo Menor Valor Inversiones:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data213"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                  </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                             Castigo Mayor Valor Inversiones (menos):
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data214"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                        <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                              Castigo Activos en Leasing:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data215"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                   </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                              Castigo Cuentas por Cobrar Empresas Relacionadas:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data216"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                             Castigo Activos Intangibles
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data217"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                   </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                                    Castigo Otros Activos Largo Plazo:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data218"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                 Castigo Obligaciones c/Bcos. e Inst. Fin. Corto Plazo:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data219"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                    </fo:table-row>
                                                       <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                           Castigo Obligaciones c/Público Corto Plazo:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data220"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                       </fo:table-row>
                                                                
                                                                <fo:table-row>
                                                                    <fo:table-cell>
                                                                        <fo:block font-weight="bold">
                                                                       Castigo Cuentas por Pagar Empresas Relacionadas Corto Plazo:
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>
                                                                        <fo:block >
                                                                            <xsl:value-of select="data221"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                 </fo:table-row>
                                                                
                                                                <fo:table-row>
                                                                    <fo:table-cell>
                                                                        <fo:block font-weight="bold">
                                                                       Castigo Provisiones:
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>
                                                                        <fo:block >
                                                                            <xsl:value-of select="data222"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                 </fo:table-row>
                                                                
                                                                <fo:table-row>
                                                                    <fo:table-cell>
                                                                        <fo:block font-weight="bold">
                                                                           Castigo Obligaciones c/Bancos e Instituciones Financieras Largo Plazo:
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>
                                                                        <fo:block >
                                                                            <xsl:value-of select="data223"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                               </fo:table-row>
                                                                
                                                                 <fo:table-row>   
                                                                    <fo:table-cell>
                                                                        <fo:block font-weight="bold">
                                                                         Castigo Obligaciones c/Público Largo Plazo:
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>
                                                                        <fo:block >
                                                                            <xsl:value-of select="data224"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>    
                                                                 </fo:table-row>
                                                                   <fo:table-row>   
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold">
                                                             Castigo Cuentas por Pagar Empresas Relacionadas Largo Plazo:
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block >
                                                                <xsl:value-of select="data225"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                                  </fo:table-row>
                                                                   <fo:table-row>   
                                                       <fo:table-cell>
                                                           <fo:block font-weight="bold">
                                                            Castigo Otros Pasivos Circulantes:
                                                           </fo:block>
                                                       </fo:table-cell>
                                                       <fo:table-cell>
                                                           <fo:block >
                                                               <xsl:value-of select="data226"/>
                                                           </fo:block>
                                                       </fo:table-cell>
                                                                  </fo:table-row>
                                                                   <fo:table-row>   
                                                           <fo:table-cell>
                                                           <fo:block font-weight="bold">
                                                           Castigo Provisiones Largo Plazo:
                                                           </fo:block>
                                                           </fo:table-cell>
                                                           <fo:table-cell>
                                                           <fo:block >
                                                               <xsl:value-of select="data227"/>
                                                           </fo:block>
                                                           </fo:table-cell>
                                                                  </fo:table-row>
                                                                   <fo:table-row>   
                                                          <fo:table-cell>
                                                          <fo:block font-weight="bold">
                                                           Castigo Patrimonio:
                                                          </fo:block>
                                                          </fo:table-cell>
                                                          <fo:table-cell>
                                                          <fo:block >
                                                              <xsl:value-of select="data228"/>
                                                          </fo:block>
                                                          </fo:table-cell>
                                                                  </fo:table-row>
                                                                   <fo:table-row>   
                                                          <fo:table-cell>
                                                          <fo:block font-weight="bold">
                                                            Provisión Indemnización Años Servicio:
                                                          </fo:block>
                                                          </fo:table-cell>
                                                          <fo:table-cell>
                                                          <fo:block >
                                                              <xsl:value-of select="data229"/>
                                                          </fo:block>
                                                          </fo:table-cell>
                                                                  </fo:table-row>
                                                                   <fo:table-row>   
                                                        <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                         Revalorizacion Activo Fijo:
                                                        </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                        <fo:block >
                                                            <xsl:value-of select="data230"/>
                                                        </fo:block>
                                                        </fo:table-cell>
                                                                  </fo:table-row>
                                                                  
                                                                   <fo:table-row>   
                                                           <fo:table-cell>
                                                               <fo:block font-weight="bold">
                                                                Revalorización Inversión Empresas Relacionadas:
                                                               </fo:block>
                                                           </fo:table-cell>
                                                           <fo:table-cell>
                                                               <fo:block >
                                                                   <xsl:value-of select="data231"/>
                                                               </fo:block>
                                                           </fo:table-cell>
                                                                  </fo:table-row>
                                                                  <fo:table-row>   
                                                           <fo:table-cell>
                                                               <fo:block font-weight="bold">
                                                                 Revalorización Patrimonio:
                                                               </fo:block>
                                                           </fo:table-cell>
                                                           <fo:table-cell>
                                                               <fo:block >
                                                                   <xsl:value-of select="data232"/>
                                                               </fo:block>
                                                           </fo:table-cell>
                                                                  </fo:table-row>
                                                                   <fo:table-row>   
                                                           <fo:table-cell>
                                                               <fo:block font-weight="bold">
                                                                 Revalorización Existencias:
                                                               </fo:block>
                                                           </fo:table-cell>
                                                           <fo:table-cell>
                                                               <fo:block >
                                                                   <xsl:value-of select="data233"/>
                                                               </fo:block>
                                                           </fo:table-cell>
                                                                  </fo:table-row>
                                                                   <fo:table-row>   
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold">
                                                                  Reconocimiento Deuda Bancaria:
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell>
                                                                <fo:block >
                                                                    <xsl:value-of select="data234"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                                  </fo:table-row>
                                                                   <fo:table-row>   
                                                             <fo:table-cell>
                                                                 <fo:block font-weight="bold">
                                                                   Utilidad Venta Inversión Empresas Relacionadas:
                                                                 </fo:block>
                                                             </fo:table-cell>
                                                             <fo:table-cell>
                                                                 <fo:block >
                                                                     <xsl:value-of select="data235"/>
                                                                 </fo:block>
                                                             </fo:table-cell>
                                                                  </fo:table-row>
                                                                   <fo:table-row>   
                                                             <fo:table-cell>
                                                                 <fo:block font-weight="bold">
                                                                   Dividendos Percibidos Empresas Relacionadas:
                                                                 </fo:block>
                                                             </fo:table-cell>
                                                             <fo:table-cell>
                                                                 <fo:block >
                                                                     <xsl:value-of select="data236"/>
                                                                 </fo:block>
                                                             </fo:table-cell>
                                                                  </fo:table-row>
                                                                   <fo:table-row>   
                                                             <fo:table-cell>
                                                                 <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                                                   Generación Operativa Bruta
                                                                 </fo:block>
                                                             </fo:table-cell>
                                                             <fo:table-cell>
                                                                 <fo:block >
                                                                     <xsl:value-of select="data237"/>
                                                                 </fo:block>
                                                             </fo:table-cell>
                                                                  </fo:table-row>
                                                                   
                                                                <!-- Fin nuevos Datos -->
                                
                                
                                
                                
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

