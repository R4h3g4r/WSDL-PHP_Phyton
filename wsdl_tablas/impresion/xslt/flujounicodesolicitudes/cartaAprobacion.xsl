<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="1.0in" margin-right="1.0in">
                <fo:region-before extent="0.7in" />
                <fo:region-body margin-top="0.7in" margin-bottom="0.70in" />
                <fo:region-after extent="0.70in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:template match="/">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">

                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <xsl:for-each select="cartaAprobacionTO">
						
						<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:table-column column-width="proportional-column-width(100)" />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" width="100%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                <fo:block>
                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                        <fo:table-column column-width="proportional-column-width(100)" />
                                                      
                                                        <fo:table-body>
                                                            <fo:table-row>
                                                               
                                                                <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" width="100%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                    <fo:block>
                                                                        
                                                                   
                                                                        <fo:table font-size="11px" font-weight="bold" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                            <fo:table-column />
                                                                            <fo:table-body>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="right">
                                                                                        <fo:block>
                                                                                            <fo:inline font-size="12pt" font-weight="bold">Carta de Aprobación</fo:inline>
                                                                                        </fo:block>
																						<fo:block padding="20pt">
                                                                                            
                                                                                        </fo:block>
																						<fo:block>
                                                                                            <fo:inline font-size="12pt" >Fecha	<xsl:value-of select="fechaEvaluacion"/> </fo:inline>
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
                                            </fo:table-cell>
                                            
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                            <fo:table-column column-width="proportional-column-width(100)" />
                                           
                                            <fo:table-body>
                                                <fo:table-row>
                                                    
													
													
													
													<fo:table-cell line-height="100%" border-style="solid" border-width="1pt" border-color="white" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block padding="3pt">
												<fo:inline font-size="12pt" >
                                                    Estimado <fo:inline font-weight="bold"> <xsl:value-of select="nombreSolicitante"/> </fo:inline>
													</fo:inline>
                                                </fo:block>
												
												<fo:block padding="4pt" text-align="justify">
												</fo:block>
												
												 <fo:block padding="4pt" text-align="justify">
												<fo:inline font-size="12pt">
												Hemos evaluado su solicitud y tiene una aprobación en Banco de Crédito e             Inversiones para acceder a un crédito hipotecario vivienda por un máximo de  <fo:inline font-weight="bold"> <xsl:value-of select="montoAprobadoMargen"/> UF</fo:inline> , para financiar la adquisición de una          vivienda de <fo:inline font-weight="bold"><xsl:value-of select="montoTasacion"/> UF </fo:inline>, a un plazo de <fo:inline font-weight="bold"><xsl:value-of select="plazo"/></fo:inline> años,            con un porcentaje de financiamiento hasta <fo:inline font-weight="bold"><xsl:value-of select="porcentajeFinanciamiento"/></fo:inline>% respecto del valor de            la propiedad  
												</fo:inline>
                                                </fo:block>
												
												<fo:block padding="4pt" text-align="justify">
												<fo:inline font-size="12pt" >
												La presente aprobación tendrá una vigencia de 180 ​días corridos a contar de esta              fecha y se otorga en mérito de los antecedentes personales y comerciales que             declaró al Banco, y que consideramos como esencial y determinante para esta            comunicación, por lo que si ocurre un cambio en los antecedentes declarados,            debe informar de su nueva situación a su ejecutivo de cuenta a la brevedad,              acreditando la documentación respectiva.
												</fo:inline>
                                                </fo:block>
												
												<fo:block padding="4pt" text-align="justify">
												<fo:inline font-size="12pt" >
												El otorgamiento definitivo del crédito queda sujeto al informe favorable de la            tasación, la aprobación de los antecedentes legales de la propiedad, la           contratación y aprobación de los seguros asociados al crédito hipotecario, la           veracidad y confirmación de los antecedentes entregados como asimismo, se          condiciona a la mantención de los antecedentes financieros de deuda y           comportamiento e indicadores del análisis crediticio que se consideraron para a           aprobación final, de acuerdo a la política de crédito vigente del Banco.
												</fo:inline>
                                                </fo:block>
												
												<fo:block padding="4pt" text-align="justify">
												<fo:inline font-size="12pt" >
												La tasa definitiva del crédito será aquella vigente al mes de suscripción de la              respectiva escritura pública de mutuo hipotecario. Podrá consultar con su ejecutivo           cuál es la tasa vigente del mes, sin perjuicio que le informaremos oportunamente.  
												</fo:inline>
                                                </fo:block>
												
												<fo:block padding="4pt" text-align="justify">
												<fo:inline font-size="12pt" >
												En caso que Ud. pueda acceder a los beneficios que confiere el artículo 55° bis               de la Ley de la Renta, debe tener en consideración que los créditos hipotecarios              que tienen como finalidad una vivienda más una cantidad adicional de libre            disponibilidad, sólo tendrán derecho al beneficio tributario, por los intereses          pagados del crédito destinado a la adquisición o construcción de la vivienda para             fines habitacionales, y no por la parte del crédito destinada a la ampliación o              remodelación de la  vivienda, ni libre disponibilidad. 
												</fo:inline>
                                                </fo:block>
												
												<fo:block padding="4pt" text-align="justify" >
												<fo:inline font-size="12pt" >
												Monto destinado vivienda: <fo:inline font-weight="bold"><xsl:value-of select="montoAprobadoVivienda"/> UF.</fo:inline> 
												</fo:inline>
                                                </fo:block>
																								
												<fo:block padding="4pt" text-align="justify" >
												<fo:inline font-size="12pt" >
												Monto destinado a ampliación / remodelación o libre disponibilidad: <fo:inline font-weight="bold"><xsl:value-of select="montoAmpliacionLibreDisp"/>  UF. </fo:inline> 
												</fo:inline>
                                                </fo:block>
												
												<fo:block padding="4pt" text-align="justify" >
												<fo:inline font-size="12pt" >
												Monto destinado a Compra de Cartera: <fo:inline font-weight="bold"><xsl:value-of select="montoCompraCartera"/> UF.</fo:inline>  
												</fo:inline>
                                                </fo:block>
																							
                                            </fo:table-cell>
													
													
											
                                                </fo:table-row>
                                            </fo:table-body>
                                        </fo:table>

                                <fo:block>
                                    <fo:leader leader-pattern="space" />
                                </fo:block>
                                <fo:block>
                                    <xsl:text>&#xA;</xsl:text>
                                </fo:block>
                                
                                
                        </xsl:for-each>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
