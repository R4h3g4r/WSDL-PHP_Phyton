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
                        ESTADO FINANCIERO - BALANCE
                    </fo:block>

                    <fo:block font-size="7pt" space-after="10mm">
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
                                            <xsl:value-of select="DatosDelCliente/rut"/> - <xsl:value-of select="DatosDelCliente/idc"/>
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
                                            <xsl:value-of select="DatosDelCliente/nombre"/>
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
                                            <xsl:value-of select="DatosDelCliente/ejecutivoEnSesion"/>
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
                                            <xsl:value-of select="DatosDelCliente/ejecutivo"/>
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
                                            <xsl:value-of select="DatosDelCliente/actividad"/>
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
                                            <xsl:value-of select="DatosDelCliente/tipoBalance"/>
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
                                            <xsl:value-of select="DatosDelCliente/cobertura"/>
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
                                            <xsl:value-of select="DatosDelCliente/estadoBalance"/>
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
                                            <xsl:value-of select="DatosDelCliente/moneda"/>
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
                    <fo:block font-size="6.5pt" space-after="10mm">
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
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="periodoBalance"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>    
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Número Estado Financiero:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="numBalance"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>    
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Número de Meses:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="numMeses"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Auditor:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="auditorBalance"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                    
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                %
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                    
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
                                
<!--***************************************************************************************************-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disponible:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actDisponible),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actDisponible * 100 div actTotalActivos,'##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deposito a Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actDepositoPlazo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actDepositoPlazo * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Valores Negociables:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actValoresNegociables),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actValoresNegociables * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deudores por Venta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actDeudoresVenta),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actDeudoresVenta * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Documentos por Cobrar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actDocPorCobrar),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actDocPorCobrar * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deudores Varios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actVariosDeudores),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actVariosDeudores * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Doctos. Ctas Emp. Rel.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actDocyCxCEmpRelUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actDocyCxCEmpRelUno * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Existencias:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actExistencias),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actExistencias * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuestos por Recuperar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actImpPorRecuperar),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actImpPorRecuperar * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Gastos Pagados por Anticipado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actGastosPagPorAntic),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actGastosPagPorAntic * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuestos Diferidos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actImpDiferidos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actImpDiferidos * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Activos Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actOtrosActCirculante),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actOtrosActCirculante * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConActivosBalSel/ccaDesActCirUno"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValActCirUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValActCirUno * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConActivosBalSel/ccaDesActCirDos"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValActCirDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValActCirDos * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConActivosBalSel/ccaDesActCirTres"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValActCirTres),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValActCirTres * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Activos Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actTotActCirculantes),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actTotActCirculantes * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                            Terrenos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actTerrenos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actTerrenos * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Construcciones y Obras:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actConstruccionyObras),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actConstruccionyObras * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Maquinarias y Obras:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actMaquinariayEquipos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actMaquinariayEquipos * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Bienes Agricolas Animales:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actAnimales),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actAnimales * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Bienes Agricolas Plantaciones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actPlantaciones),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actPlantaciones * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Activos Fijos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actOtrosActivosFijos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actOtrosActivosFijos * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Mayor Valor Ret.Técnica Act.Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actMayorValRetTecActF),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actMayorValRetTecActF * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Depreciación Acumulada:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actDepreciacionAcum),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actDepreciacionAcum * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Activos Fijos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actTotalActivoFijo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actTotalActivoFijo * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                            Inv. Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actInvEmpRelacionada),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actInvEmpRelacionada * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Inv. En Otras Sociedades:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actInvOtrasSociedades),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actInvOtrasSociedades * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Menor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actMenValorInv),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actMenValorInv * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Mayor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actMayValorInv),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actMayValorInv * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deudores a Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actDeudoresLargoPlazo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actDeudoresLargoPlazo * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Doctos.Ctas Cob.Emp. Rel.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actDocyCxCEmpRelDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actDocyCxCEmpRelDos * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Intangibles:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actIntangibles),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actIntangibles * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Amortización:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actAmortizacion),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actAmortizacion * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Act. Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actOtrosActLargoPlazo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actOtrosActLargoPlazo * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Activos En Leasing:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actActivosLeasing),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actActivosLeasing * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConActivosBalSel/ccaDesActCirLPUno"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValActCirLPUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValActCirLPUno * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConActivosBalSel/ccaDesActCirLPDos"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValActCirLPDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValActCirLPDos * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConActivosBalSel/ccaDesActCirLPTres"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValActCirLPTres),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValActCirLPTres * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Otros Activos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actTotalOtrosActivos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actTotalOtrosActivos * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Activos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConActivosBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(actTotalActivos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(actTotalActivos * 100 div actTotalActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>

                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
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
                         <fo:block space-after="2mm">
                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                        </fo:block>
                         </fo:table-cell>
                    </fo:table-row>

                                   <!-- Cabecera Estado Financiero -->
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            Fecha Estado Financiero:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <xsl:for-each select="EstConActivosBalSel">
                                                        <fo:table-cell>
                                                            <fo:block text-align="end">
                                                                <xsl:value-of select="periodoBalance"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                        </fo:table-cell>
                                                    </xsl:for-each>    
                                                </fo:table-row>
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            Número Estado Financiero:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <xsl:for-each select="EstConActivosBalSel">
                                                        <fo:table-cell>
                                                            <fo:block text-align="end">
                                                                <xsl:value-of select="numBalance"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                        </fo:table-cell>
                                                    </xsl:for-each>    
                                                </fo:table-row>
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            Número de Meses:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <xsl:for-each select="EstConActivosBalSel">
                                                        <fo:table-cell>
                                                            <fo:block text-align="end">
                                                                <xsl:value-of select="numMeses"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                        </fo:table-cell>
                                                    </xsl:for-each>
                                                </fo:table-row>
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            Auditor:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <xsl:for-each select="EstConActivosBalSel">
                                                        <fo:table-cell>
                                                            <fo:block text-align="end">
                                                                <xsl:value-of select="auditorBalance"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                        </fo:table-cell>
                                                    </xsl:for-each>                                    
                                                </fo:table-row>
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                    </fo:table-cell>
                                                    <xsl:for-each select="EstConActivosBalSel">
                                                        <fo:table-cell>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block text-align="end">
                                                                %
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </xsl:for-each>                                    
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
                                            Oblig. c/Bcos. e Inst. Fin. c/Pzo.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasOblBcoseInstFinCP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasOblBcoseInstFinCP * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Oblig. c/Bcos. e Inst. Fin. l/Pzo.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasOblBcoseInstFinLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasOblBcoseInstFinLP * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Oblig. c/Público (Efectos de Comercio):
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasOblPubilcEfecComer),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasOblPubilcEfecComer * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Oblig. c/Público (Bonos):
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasOblConPublBonoUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasOblConPublBonoUno * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Oblig. Largo Plazo c/Vencto. de un Año:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasOblLPConVctoUnAno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasOblLPConVctoUnAno * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dividendos por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasDividendosPorPagar),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasDividendosPorPagar * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cuentas por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasCuentasPorPagar),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasCuentasPorPagar * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Documentos por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasDocPorPagarUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasDocPorPagarUno * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Acreedores Varios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasVariosAcreedUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasVariosAcreedUno * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Doctos.Ctas Pag.Emp. Rel.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasDocyCxPEmpRelacUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasDocyCxPEmpRelacUno * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Provisiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasProvisionesUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasProvisionesUno * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Retenciones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasRetenciones),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasRetenciones * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuesto a la Renta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasImpRenta),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasImpRenta * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ingresos Percibidos por Adelantado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasIngrePercPorAdelan),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasIngrePercPorAdelan * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuestos Diferidos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasImpDiferidos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasImpDiferidos * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Pasivos Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasOtrosPasCirculante),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasOtrosPasCirculante * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obligaciones Leasing Corto Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(lsgDeudaLeasingCP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(lsgDeudaLeasingCP * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConPasivosBalSel/ccaDesPasCirUno"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValPasCirUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValPasCirUno * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConPasivosBalSel/ccaDesPasCirDos"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValPasCirDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValPasCirDos * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConPasivosBalSel/ccaDesPasCirTres"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValPasCirTres),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValPasCirTres * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Pasivos Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasTotalPasCirculante),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasTotalPasCirculante * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                            Oblig. c/Bcos. e Inst. Fin.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasOblConBcoeInstFin),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasOblConBcoeInstFin * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obligaciones c/Público:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasOblConPublBonoDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasOblConPublBonoDos * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Documentos por Pagar (Largo Plazo):
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasDocPorPagarDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasDocPorPagarDos * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Acreedores Varios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasVariosAcreedDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasVariosAcreedDos * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Docs. y Ctas. por Pagar Emp. Relación.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasDocyCxPEmpRelacDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasDocyCxPEmpRelacDos * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Provisiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasProvisionesDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasProvisionesDos * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Pasivos Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasOtrosPasivoLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasOtrosPasivoLP * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obligaciones Leasing Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(lsgDeudaLeasingLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(lsgDeudaLeasingLP * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConPasivosBalSel/ccaDesPasCirLPUno"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValPasCirLPUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValPasCirLPUno * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConPasivosBalSel/ccaDesPasCirLPDos"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValPasCirLPDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValPasCirLPDos * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Pasivo Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasTotalPasivoLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasTotalPasivoLP * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                            Interés Minoritario:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasIntMinoriotario),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasIntMinoriotario * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Pasivo Exigible:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasPasivoExigible),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasPasivoExigible * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                            Capital Pagado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasCapitalPagado),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasCapitalPagado * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Reserva Revalorización Capital:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasResvRevalorCapital),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasResvRevalorCapital * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Sobreprecio Vta. Acciones Propias:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasSobPrecVtaAccProp),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasSobPrecVtaAccProp * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Reserva May. Val. Retas. Téc. Act. Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasReservPorMayValo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasReservPorMayValo * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otras Reservas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasOtrasReservas),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasOtrasReservas * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deficit Acum. Período Desarrollo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasDeficitAcumPerDesa),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasDeficitAcumPerDesa * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidades Retenidas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasUtilRetenidas),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasUtilRetenidas * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Reserva Futuros Dividendos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasReservFutDividendo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasReservFutDividendo * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidades Acumuladas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasUtilidadesAcum),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasUtilidadesAcum * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Pérdidas Acumuladas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasPerdidasAcum),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasPerdidasAcum * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad (Pérdida) del Ejercicio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasUtilPerdEjercicio),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasUtilPerdEjercicio * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dividendos Provisorios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasDividenProvis),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasDividenProvis * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                                                <!-- Aca esta el pasivo UNO -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConPasivosBalSel/ccaDesPatrimonioUno"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValPatrimonioUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValPatrimonioUno * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                                                <!-- Aca esta el pasivo UNO -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConPasivosBalSel/ccaDesPatrimonioDos"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValPatrimonioDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(ccaValPatrimonioDos * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasTotalPatrimonio),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasTotalPatrimonio * 100 div pasTotalPasivo, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Pasivos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConPasivosBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(pasTotalPasivo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(pasTotalPasivo * 100 div pasTotalPasivo,'##0.00')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                             
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                   <!-- Cabecera Estado Financiero -->
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            Fecha Estado Financiero:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <xsl:for-each select="EstConActivosBalSel">
                                                        <fo:table-cell>
                                                            <fo:block text-align="end">
                                                                <xsl:value-of select="periodoBalance"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                        </fo:table-cell>
                                                    </xsl:for-each>    
                                                </fo:table-row>
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            Número Estado Financiero:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <xsl:for-each select="EstConActivosBalSel">
                                                        <fo:table-cell>
                                                            <fo:block text-align="end">
                                                                <xsl:value-of select="numBalance"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                        </fo:table-cell>
                                                    </xsl:for-each>    
                                                </fo:table-row>
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            Número de Meses:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <xsl:for-each select="EstConActivosBalSel">
                                                        <fo:table-cell>
                                                            <fo:block text-align="end">
                                                                <xsl:value-of select="numMeses"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                        </fo:table-cell>
                                                    </xsl:for-each>
                                                </fo:table-row>
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block font-weight="bold">
                                                            Auditor:
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <xsl:for-each select="EstConActivosBalSel">
                                                        <fo:table-cell>
                                                            <fo:block text-align="end">
                                                                <xsl:value-of select="auditorBalance"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                        </fo:table-cell>
                                                    </xsl:for-each>                                    
                                                </fo:table-row>
                                                
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                    </fo:table-cell>
                                                    <xsl:for-each select="EstConActivosBalSel">
                                                        <fo:table-cell>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                            <fo:block text-align="end">
                                                                %
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </xsl:for-each>                                    
                                                </fo:table-row>
                                                
                                                <!-- espaciado -->
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                
                                <!-- **************** edr ****************** titulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Estado De Resultado
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
                                            Ingreso Explotación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrIngreExplotacion),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrIngreExplotacion * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Costo Explotación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrCostoExplotacion),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrCostoExplotacion * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Depreciación del Ejercicio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(dadDepreciacion),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(dadDepreciacion * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Margen Explotación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrMargenExplotacion),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrMargenExplotacion * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Gastos Adm. Ventas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrGastosAdminVtas),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrGastosAdminVtas * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Resultado Operacional:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrResultadoOperac),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrResultadoOperac * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                            Ingresos Financieros:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrIngreFinanciero),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrIngreFinanciero * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ut. Inv. Emp. Relac.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrUtilInvEmpRelac),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrUtilInvEmpRelac * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Ing. fuera Expl.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrOtrosIngreFueraExp),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrOtrosIngreFueraExp * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Perd. Inv. Emp. Relac.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrPerdInvEmpRelac),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrPerdInvEmpRelac * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Amort. Men. Val. Inv.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrAmortMenValorInv),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrAmortMenValorInv * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Gastos Financieros:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrGastosFinancieros),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrGastosFinancieros * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Egr. fuera Expl.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrOtrosEgreFuerExplo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrOtrosEgreFuerExplo * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Corrección Monetaria:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrCorrecMonetaria),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrCorrecMonetaria * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConResultadoBalSel/ccaDesCtaResultadoUno"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValCtaResultadoUno),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(ccaValCtaResultadoUno * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConResultadoBalSel/ccaDesCtaResultadoDos"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(ccaValCtaResultadoDos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(ccaValCtaResultadoDos * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Resultado No Operacional:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrResultNoOpera),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrResultNoOpera * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                            Res. Antes Impuesto:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrResulAntImpRenta),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrResulAntImpRenta * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuesto a la Renta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrImpRenta),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrImpRenta * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ut.(Per) Consolidada:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrUtilPerdConso),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrUtilPerdConso * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Interés Minoritario:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrIntMinoritario),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrIntMinoritario * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad (Pérdida) Liquida:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrUtilPerdLiquida),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrUtilPerdLiquida * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Amort. May. Val. Inv.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrAmortMayValorInv),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrAmortMayValorInv * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Utilidad (Pérdida) Ejercicio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConResultadoBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(edrUtilPerdEjercicio),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:if test="number(edrIngreExplotacion) != 0"><xsl:if test="number(edrIngreExplotacion) > 0"><xsl:value-of select="format-number(edrUtilPerdEjercicio * 100 div edrIngreExplotacion, '#.##0,00', 'pesos')"/></xsl:if></xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                             
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                   <!-- Cabecera Estado Financiero -->
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Fecha Estado Financiero:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="periodoBalance"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>    
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Número Estado Financiero:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="numBalance"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>    
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Número de Meses:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="numMeses"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Auditor:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="auditorBalance"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>                                    
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
                                
                                <!-- ***** balance ***** subtitulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Balance
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Patrimonio Neto:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(indPatrimonioNeto),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Pasivo Exigible:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(indPasExigible),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Capital de Trabajo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(indCapitalDeTrabajo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Vtas. Equilibrio Operacional:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(indVtasDeEquiOper),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>

                                <!-- espaciado -->
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block space-after="2mm">
                                               <fo:leader leader-pattern=" " leader-length="17cm"/>
                                           </fo:block>
                                       </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- ****** subtitulo *****-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Indicadores Liquidez
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Liquidez Corriente (Veces):
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indLiquidezCorriente, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Liquidez Acida (Veces):
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indLiquidezAcida, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Perm. de Inventario:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPermanenciadeInv, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Perm. de Crédito:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPermanenciaDeCred, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Perm. de Ctas. x Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPermDeCtasPorPagar, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block space-after="2mm">
                                               <fo:leader leader-pattern=" " leader-length="17cm"/>
                                           </fo:block>
                                       </fo:table-cell>
                                </fo:table-row>

                                <!-- ****** subtitulo *****-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Estructura Financiera
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Part. Deuda Corto Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPartDeudaCP, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Part. Deuda Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPartDeudaLP, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Part. Patrimonial:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPartPatrimonial, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Leverage:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indLeverage, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>

                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deuda Financiera/EBITDA:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indDdaFin, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deuda Financiera Neta/EBITDA:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indDdaFinN, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block space-after="2mm">
                                               <fo:leader leader-pattern=" " leader-length="17cm"/>
                                           </fo:block>
                                       </fo:table-cell>
                                </fo:table-row>

                                <!-- ****** subtitulo *****-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Estructura Activos
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Part. Activos Liquidos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPartActivoLiquido, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Part. Otros Act. Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPartOtrActCir, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Part. Activos Fijos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPartActivosFijos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Part. Otros Activos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPartOtrosActivos, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block space-after="2mm">
                                               <fo:leader leader-pattern=" " leader-length="17cm"/>
                                           </fo:block>
                                       </fo:table-cell>
                                </fo:table-row>

                                <!-- ****** subtitulo *****-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Cobertura Pasivos
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Pas. Exigible/G.O.B.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPasivoexigible_GOB, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Pas. Exigible-Act. Liquido/G.O.B.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPasExigActLiqGOB, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Pas. Exigible Total/EBITDA (Veces):
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indPasExig_EBITDA, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <!-- espaciado -->
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block space-after="2mm">
                                               <fo:leader leader-pattern=" " leader-length="17cm"/>
                                           </fo:block>
                                       </fo:table-cell>
                                </fo:table-row>

                                <!-- ****** subtitulo *****-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Cobert. Carga Financiera
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Util. Operacional/Gto. Financiero:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indUtilOper_GtoFinan, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            G.O.B.+Gto. Financ./Gto. Financ.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indGOBGtoFinaGtoFina, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            EBITDA/Gtos. Financieros:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indGFin, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cobertura del Serv. de la Deuda:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indCobServDda, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                                                
                                <!-- espaciado -->
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block space-after="2mm">
                                               <fo:leader leader-pattern=" " leader-length="17cm"/>
                                           </fo:block>
                                       </fo:table-cell>
                                </fo:table-row>

                                <!-- ****** subtitulo *****-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Rentablilidad y Generación
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad Operacional/Venta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indUtilOperac_Vta, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad/Venta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indUtilidad_venta, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad/Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indUtil_patrimonio, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad antes C.M./Venta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indUtilAntesCM_Vtas, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad antes C.M./Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indUtilAntesCM_Patrim, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            G.O.B./Venta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indGOB_Venta, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            G.O.B./Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indGOB_Patrimonio, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            EBITDA:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indEbitda, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Flujo Disp. para Serv. de Deuda:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConIndicesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(indFjoDisp, '#.##0,00', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
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
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                    <fo:block space-after="2mm">
                                        <fo:leader leader-pattern=" " leader-length="17cm"/>
                                    </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                                            
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                   <!-- Cabecera Estado Financiero -->
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Fecha Estado Financiero:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="periodoBalance"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>    
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Número Estado Financiero:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="numBalance"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>    
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Número de Meses:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="numMeses"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Auditor:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="auditorBalance"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>                                    
                </fo:table-row>

                <!-- espaciado -->
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block space-after="2mm">
                        <fo:leader leader-pattern=" " leader-length="17cm"/>
                    </fo:block>
                    </fo:table-cell>
                </fo:table-row>                                
                              
                                <!-- **************** Fuentes y Uso de Fondos ****************** titulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Fuentes y Uso de Fondos
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
                                            Utilidad (Pérdida) Neta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(gobUtilPerdNet),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Depreciación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(gobDepreciacion),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Corrección Monetaria:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(gobCorrecMon),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Amortización y Castigos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(gobAmorCast),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad/Pérdida Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(gobUtilPerdEmpRel),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Ingresos Sin Movitos. de Fondos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(gobOtrIngMovFond),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Utilidad/Pérdida Venta de Activo Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(gobUtilPerdVtaAF),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Generación Operativa Bruta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(gobGenOpeBruta),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block space-after="2mm">
                                               <fo:leader leader-pattern=" " leader-length="17cm"/>
                                           </fo:block>
                                       </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- ****** subtitulo *****-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Menos Necesidades Operativas
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deposito a Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDeposiPlazo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Valores Negociables:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoValNegociab),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deudores por Venta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDeudoresVta),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Documentos por Cobrar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDocporCobra),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Deudores Varios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDeudorVario),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Existencias:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoExistencias),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuestos por Recuperar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoImpRecupera),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Gastos Pagados por Anticipado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoGtosPagAnti),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuestos Diferidos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoImpDiferido1),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDesActCirc1"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoValActCirc1),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDesActCirc2"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoValActCirc2),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDesActCirc3"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoValActCirc3),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Activos Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoOtroActCirc),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Necesidades Operativas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoNeseciOpera),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>

                                <!-- espaciado -->
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block space-after="2mm">
                                               <fo:leader leader-pattern=" " leader-length="17cm"/>
                                           </fo:block>
                                       </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- ****** subtitulo *****-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Más Fuentes Operativas
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Oblig. con Público Efec. De Comercio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoObPuEfeCome),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Obl. L.P. Vcto. dentro de un año:
                                        </fo:block> 
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoObLPVto1Ano),'#.##0', 'pesos')" /> 
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Oblig. con Público (Bonos):
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoOblPubBonos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dividendos por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDividenPaga),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cuentas por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoCuentasPaga),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Documentos por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDocumenPaga),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Acreedores Varios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAcreeVarios),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Provisiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoProvisiones),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Retenciones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoRetenciones),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuesto a la Renta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoImpuesRenta),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Ingresos Percibidos por Adelantado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoIngPercAdel),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Impuestos Diferidos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoImpDiferido),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDesPasCirc1"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoValPasCirc1),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDesPasCirc2"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoValPasCirc2),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDesPasCirc3"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoValPasCirc3),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Pasivos Circulantes:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoOtrPasCircu),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Fuentes Operativas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoFuentesOper),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Generación Neta Operativa de Caja:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoGenNetOpCja),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <!-- ****** subtitulo *****-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Menos Neces. No Operativas
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Dctos. x Cobrar Emp. Relac. C/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumDxCEReCP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Activo Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumActvFijo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Inver. Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumInvEmRel),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Inver. Otras Sociedades:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumInvOtSoc),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Menor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumMenVlInv),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Mayor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumMayVlInv),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Deudores a Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumDeudorLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Dctos. x Cobrar Emp. Relac. L/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumDxCEReLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Intangibles:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumIntangib),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Amortización:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumAmortiza),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoAumDesAcLP1"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumValAcLP1),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoAumDesAcLP2"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumValAcLP2),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoAumDesAcLP3"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumValAcLP3),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Otros Activos Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumOtrActLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Activos Leasing:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumActLeasi),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dism. Oblig. Bancos Inst. Financ. C/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisObBcIFCP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dism. Oblig. Bancos Inst. Financ. Porción L/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisObBcIFLP1),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dism. Dctos. x Pagar Emp. Relacionadas C/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisDxPERlCP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dism. Oblig. Leasing C/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisOblLsgCP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dism. Oblig. Bancos Inst. Financieras L/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisObBcIFLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dism. Oblig. Con el Público:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisOblPubli),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Doctos. Por Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisDocxPaga),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Acreedores Varios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisAcrVario),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dism. Doctos. Por Pagar Emp. Relac. L/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisDxPERlLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Provisiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisProvisio),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDisDsPasLP1"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisVlPasLP1),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDisDsPasLP2"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisVlPasLP2),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Otros Pasivos Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisOtrPasLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Obl. Leasing Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisOblLsgLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisPatrimon),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Interés Minoritario:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisIntMinor),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otras Disminuciones de Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoOtrDisPatri),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dividendos Pagados:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDiviPagados),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Necesidades No Operativas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoTotNesNoOpe),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                       <fo:table-cell>
                                           <fo:block space-after="2mm">
                                               <fo:leader leader-pattern=" " leader-length="17cm"/>
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
                                
                                <!-- ****** subtitulo *****-->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Más Fuentes No Operativas
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Dctos. x Cobrar Emp. Relac. C/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisDxCERlCP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Activo Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisActvFijo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dism. Inversiones Empresas Relacionadas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisEmpRelac),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Inversiones Otras Sociedades:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisInOtrSoc),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Menor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisMenVlInv),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Mayor Valor Inversiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisMayVlInv),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Deudores a Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisDeudorLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dism. Dctos. x Cobrar Emp. Relac. L/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisDxCERlLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Intangibles:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisIntangib),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Amortización:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisAmortiza),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDisDsActLP1"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisVlActLP1),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDisDsActLP2"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisVlActLP2),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoDisDsActLP3"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisVlActLP3),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Otros Activos de Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisOtrActLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disminución Activos Leasing:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDisActivLsg),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento obl. c/Bancos e Ins. Financ. C/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumObBcIFCP1),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento obl. c/Bancos e Ins. Financ. Porción L/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumObBIFPLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Documentos X Pagar Empresas Relac. C/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumDxCERlCP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Obligaciones Leasing C/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumOblLsgLP1),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Obligaciones Bancos Inst. Finan L/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumObBcIFCP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Obligaciones con el Público:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumOblPubli),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Documentos X Pagar:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumDocxPaga),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Acreedores Varios:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumAcreVari),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Documentos X Pagar Empresas Relac. L/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumDxCERlLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Provisiones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumProvisio),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoAumDsPasLP1"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumVlPasLP1),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="EstConUsosyFuentesBalSel/usoAumDsPasLP2"/>:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumVlPasLP2),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Otros Pasivos Largo Plazo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumOtrPasLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Obligaciones Leasing L/P:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumOblLsgLP),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumPatrimon),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aumento Interés Minoritario:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumIntMinor),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros Aumentos de Patrimonio:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoOtrAumPatri),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Dividendos Percibidos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoDivPercibid),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Emisión de Acciones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoEmisionAcci),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Venta de Activo Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoVtaActvFijo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Fuentes No Operativas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoTotFtsNoOpe),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
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
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Aumento/Disminución Neta en Caja:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConUsosyFuentesBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(usoAumDisNtCaj),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
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
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                         </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                    <fo:block space-after="2mm">
                                        <fo:leader leader-pattern=" " leader-length="17cm"/>
                                    </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block space-after="2mm">
                                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                                        </fo:block>
                                                    </fo:table-cell>
                                </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                    <fo:block space-after="2mm">
                                        <fo:leader leader-pattern=" " leader-length="17cm"/>
                                    </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                                            
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                   <!-- Cabecera Estado Financiero -->
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Fecha Estado Financiero:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="periodoBalance"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>    
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Número Estado Financiero:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="numBalance"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>    
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Número de Meses:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="numMeses"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                    <fo:block font-weight="bold">
                        Auditor:
                    </fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="EstConActivosBalSel">
                    <fo:table-cell>
                        <fo:block text-align="end">
                        <xsl:value-of select="auditorBalance"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                    </fo:table-cell>
                    </xsl:for-each>                                    
                </fo:table-row>

                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <!-- **************** Reconciliación ****************** titulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Reconciliación
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
                                
                                <!-- ***** balance ***** subtitulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Reconciliación Activo Inmovilizado
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

                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Sdo. Inicial Act. Inmovilizado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMasRevalPeriodo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Más Revalorización Período:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMenVentaActivos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Menos Venta Activos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMenDepreciacion),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Menos Depreciación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMenCastActFijo),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Menos Castigo Activo Fijo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recSalIniFinActInmov),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Subtotal Ajuste:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recPatrimonioTotal),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Saldo Final Act. Inmovilizado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMasUtilPerdNeta),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Gastos de Capital:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMasEmisionAcc),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <!-- ***** balance ***** subtitulo -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="8pt" background-color="lightgrey">
                                            Reconciliación Pasivo No Exigible
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
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Saldo Inicial:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMasOtrEspecif),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Más Utilidad (Pérdida) Neta:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMasRevaloriza),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Más Emisión de Acciones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMenDividendos),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Más Otros Específicos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMenOtrDismin),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Más Revalorización:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recAumDisCapReserv),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Aumentos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recAumeDis),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Menos Dividendos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMenosDiv),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Menos otras Disminuciones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell>
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recMenosOtros),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Total Disminuciones:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recSaldoFin),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Aum./Dis. Capital y Reservas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recTotAumento),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        <fo:block font-weight="bold">
                                            Sdo. Final Capital y Reservas:
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="EstConReconciliacionBalSel">
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                            <fo:block text-align="end">
                                                <xsl:value-of select="format-number(round(recTotalDism),'#.##0', 'pesos')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1pt" border="0.5pt solid black">
                                        </fo:table-cell>
                                    </xsl:for-each>                                        
                                </fo:table-row>
                                
                                
<!-- ***************************************************************************************************-->
                                <!-- espaciado -->
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="2mm">
                                            <fo:leader leader-pattern=" " leader-length="17cm"/>
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
                                
                                
                                
                                
                                
