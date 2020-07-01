<?xml version="1.0" encoding="iso-8859-1"?>

<!-- Copyright(c) BEE Consultorias y Sistemas - All Rights Reserved -->


<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    
    <xsl:param name="IMG_URL"/>
    <xsl:param name="TIMESTAMP"/>
    
    <xsl:template match="cancelacion">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-height="27.9cm" page-width="21.1cm" margin-top="2cm" margin-bottom="2cm" margin-left="2cm" margin-right="2cm">
                    <fo:region-body/>
                    <fo:region-before extent="3cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="miCarta">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block text-align="end" font-size="10pt" font-family="Times Roman" line-height="14pt">
                <xsl:copy-of select="$TIMESTAMP"/> -  Banco de Crédito e Inversiones - P. <fo:page-number/> 
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block space-after="5mm">
                        <fo:external-graphic src="url({$IMG_URL}/lg_bci_azul_1.gif)"/>
                    </fo:block>
                    <fo:block font-size="16pt" font-weight="bold" space-after="10mm" text-align="center">
                        C A N C E L A C I O N E S
                    </fo:block>
                    
                    <fo:block font-size="10pt" space-after="10mm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="4.25cm"/>
                            <fo:table-column column-width="4.25cm" text-align="left"/>
                            <fo:table-column column-width="4.25cm" text-align="end"/>
                            <fo:table-column column-width="4.25cm"/>
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Rut Cliente:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="rut-numero"/> - <xsl:value-of select="rut-digito"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                        
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                        
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            
                            
                            </fo:table-body>
                        </fo:table>
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="4.25cm"/>
                            <fo:table-column column-width="12.75cm" text-align="left"/>
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Nombre:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block white-space-collapse="true">
                                            <xsl:value-of select="nombre"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            
                            
                            </fo:table-body>
                        </fo:table>
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="4.25cm"/>
                            <fo:table-column column-width="4.25cm" text-align="left"/>
                            <fo:table-column column-width="8.5cm" text-align="left"/>
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Número Crédito:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="cred-nro"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="cred-tipo"/>
                                        </fo:block>
                                    </fo:table-cell>
                                
                                </fo:table-row>
                            
                            
                            </fo:table-body>
                        </fo:table>
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="4.25cm"/>
                            <fo:table-column column-width="4.25cm" text-align="left"/>
                            <fo:table-column column-width="4.25cm" text-align="end"/>
                            <fo:table-column column-width="4.25cm"/>
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Tipo Cancelación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="cancelacion-tipo"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Condición:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="condicion"/>
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
                    
                    <fo:block font-size="10pt" space-after="10mm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="4.25cm"/>
                            <fo:table-column column-width="4.25cm" text-align="left"/>
                            <fo:table-column column-width="4.25cm" text-align="end"/>
                            <fo:table-column column-width="4.25cm"/>
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Monto del Crédito:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="monto-credito"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Fecha Canc. Real:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="cancelacion-fecha-real"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Saldo Insoluto:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="saldo-insoluto/@simbolo"/>
                                            <xsl:value-of select="saldo-insoluto"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Tasa de Interés:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="tasa-de-interes"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Capital Cuota:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="capital-cuota"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Valor Total Pagado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="valor-total-pagado"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Monto Cuota:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="monto-cuota"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Valor Total Renovación:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="valor-total-renovado"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Fecha de Vencimiento:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="fecha-vencimiento"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Diferencia:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="diferencia"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Tasa de Interés:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="tasa-interes"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Código de Cargo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="codigo-cargo"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Valor U.F.:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="valor-uf"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cuenta de Cargo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="cuenta-cargo"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Tipo de Impuesto:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="tipo-impuesto"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Fecha Nuevo Vcto:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="fecha-nuevo-vencimiento"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Tasa de Impuesto:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="tasa-impuesto"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Capital Pagado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="capital-pagado"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Valor Impuesto:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="valor-impuesto"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Interés Pagado:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="interes-pagado"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Tasa Comisión:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="tasa-comision"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Valor Comisión:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="valor-comision"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                        
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                        
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Valor Gastos:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="valor-gastos"/>
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

                    <fo:block font-size="10pt" space-after="10mm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="17.00cm" text-align="left"/>
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            El monto no pagado generará intereses por el período transcurrido desde esta fecha hasta el pago efectivo de esta cuota.
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            
                            </fo:table-body>
                        </fo:table>

                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="17.00cm" text-align="left"/>
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Acepto pagar $ <xsl:value-of select="valor-total-pagado"/> de la cuota Nº <xsl:value-of select="cuota-a-pagar"/> con vencimiento el <xsl:value-of select="fecha-vencimiento"/> estando de acuerdo en traspasar al final del crédito el monto no pagado de dicha cuota.
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block white-space-collapse="true">
                                            <xsl:value-of select="nombre"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            
                            </fo:table-body>
                        </fo:table>

                    </fo:block>

                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
