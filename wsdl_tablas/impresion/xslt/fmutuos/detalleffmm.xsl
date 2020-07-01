<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-body margin-top="0.79in" margin-bottom="0.79in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:param name="imglogo"/>
    <xsl:param name="img1"/>
    <xsl:param name="img2"/>
    <xsl:param name="img4"/>
    <xsl:param name="img5"/>	
    <xsl:param name="img3"/>
    
    <xsl:decimal-format name="euro" decimal-separator="," grouping-separator="."/>
    <xsl:template match="DetalleFondosMutuos/EnvoltorioDetalleFFMM">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-family="Times">
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="proportional-column-width(100)" />
                            <fo:table-body>
                                <fo:table-row background-color="#e6e6e6">
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="#e6e6e6" width="100%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="16px" font-weight="bold">Detalle de Inversión en Fondo Mutuo <xsl:value-of select="fondoMutuo/nombreCuentaFondoMutuo"/></fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="#e6e6e6" height="162pt" width="100%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="421pt" />
                                                <fo:table-column column-width="85pt" />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" height="35pt" width="421pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                            <fo:block>
                                                                <fo:table width="20%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column column-width="108pt" />
                                                                    <fo:table-column column-width="proportional-column-width(100)" />
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" text-align="right" width="108pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Cliente :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" width="100%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">
                                                                                            <xsl:value-of select="nombreCliente"/>                                                                                                                                                                                                   
                                                                                     </fo:inline>                                                                                            
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row display-align="before">
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" text-align="right" width="108pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">RUT : </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" width="442pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                                <fo:block>                                                                                   
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="rutCliente"/>
                                                                                    </fo:inline>                                                                                   
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row display-align="before">
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" text-align="right" width="108pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Fecha / Hora : </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" width="442pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="fecha"/> hrs. 
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" height="35pt" text-align="left" width="85pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                            <fo:block>
                                                                <fo:external-graphic content-width="125px" space-before.optimum="4pt" space-after.optimum="4pt" src="url( {$imglogo} )"/>                                                                                                                        
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="350pt" />
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell number-columns-spanned="2" border-style="solid" border-width="1pt" border-color="white" width="350pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                            <fo:block>
                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column />
                                                                    <fo:table-column />
                                                                    <fo:table-body>
									<fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Fondo Mutuo :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                 
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="fondoMutuo/nombreCuentaFondoMutuo"/>
                                                                                    </fo:inline>                                                                      
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
									<fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Cuenta :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="fondoMutuo/cuentasFondoMutuo/cuentasFondoMutuo_objecto/nombreCuenta"/>
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Moneda :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                 
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="fondoMutuo/moneda"/>
                                                                                    </fo:inline>                                                                      
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Valor Cuota Actual :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                       $ <xsl:value-of select="fondoMutuo/valorCuotaActual"/>
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Saldo en Cuotas :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                                                                                                                
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="fondoMutuo/cuentasFondoMutuo/cuentasFondoMutuo_objecto/saldoEnCuotasCuenta"/>
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Saldo en Moneda :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                   
                                                                                    <fo:inline font-size="12px">
                                                                                        $ <xsl:value-of select="fondoMutuo/cuentasFondoMutuo/cuentasFondoMutuo_objecto/saldoEnMonedaCuenta"/>
                                                                                    </fo:inline>                                                                                   
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">&#160;</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                        &#160;
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell number-columns-spanned="2" padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="justify" display-align="before">
										<fo:block white-space-collapse="true"  text-align="justify" color="#000000" font-family="Arial" font-size="8.0pt" >
											<xsl:text>"Infórmese de las características esenciales de la inversión en este fondo mutuo, las que se encuentran contenidas en su reglamento interno y contrato de suscripción de cuotas. La rentabilidad o ganancia obtenida en el pasado por este fondo, no garantiza que ella se repita en el futuro. Los valores de las cuotas de los fondos mutuos son variables"."La diferencia en rentabilidad entre alternativas de ahorro previsional voluntario no necesariamente refleja la diferencia en el riesgo de las inversiones". No se pueden realizar aportes ni rescates por Internet en los fondos mutuos expresados en moneda dólar, tales como Bci Dólar Cash, Bci Depósito Dólar y Bci Deuda Emergente. Consulte a nuestro Centro de Contacto Bci Fondos Mutuos llamando al número 800 200 207 o al (2) 692 79 01.</xsl:text></fo:block>
									    </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>
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
