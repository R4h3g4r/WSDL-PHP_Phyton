<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-body margin-top="0in" margin-bottom="0in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:template match="anexo_num2_fogain_proyecto_inversion">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                         <fo:block text-align="left" space-before="5mm">
                                             <fo:external-graphic width="1.330in" height="0.577in" vertical-align="left">
                                                 <xsl:attribute name="src">
                                                     <xsl:value-of select="rutaImagen"/>
                                                 </xsl:attribute>
                                             </fo:external-graphic>
                                         </fo:block>
                                     </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-top="50pt" border-style="solid" border-width="1pt" 
                                            border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" 
                                            padding-before="3pt" padding-after="3pt" text-align="start">
                                        <fo:block text-align="center"><fo:inline font-size="10pt" font-weight="bold" border-bottom-style="solid" border-bottom-width="1px">Anexo Nº2: Cumplimiento de Condiciones establecidas en Normativa de Cobertura</fo:inline></fo:block>
                                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                        <fo:block text-align="center"><fo:inline font-size="12pt" font-weight="bold" border-bottom-style="solid" border-bottom-width="1px">DECLARACIÓN JURADA SIMPLE</fo:inline></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                        <fo:block font-family="Helvetica" line-height="5.8mm" font-size="10pt" text-align="justify">Los abajo firmantes, actuando en la representación que invisten, y para los efectos de lo dispuesto en el artículo 160 del D.F.L. N° 3, de 1997, si corresponde, declaramos bajo juramento (marcar con cruz según corresponda) que:</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        
                        <!-- TABLA -->
			            <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
			            <fo:table-column column-width="100%"/>
			            <fo:table-body>
			              <fo:table-row>
			                <fo:table-cell padding="1mm">
			                  <fo:block font-size="10pt" space-after="10mm" padding-before="11pt">
			                    <fo:table table-layout="fixed">
			                      <fo:table-column column-width="155.2mm"/>
			                      <fo:table-column column-width="15.2mm"/>
			                      <fo:table-column column-width="15.2mm"/>
			                      <fo:table-body>
			                        
			                        <fo:table-row>
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block font-weight="bold" text-align="center">
			                                ASPECTO
			                            </fo:block>
			                            <fo:block font-weight="bold" text-align="left">
			                              <fo:inline>
			                                
			                              </fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block font-weight="bold" text-align="center">
			                                SI
			                            </fo:block>
			                            <fo:block font-weight="bold" text-align="left">
			                              <fo:inline>
			                              </fo:inline> 
			                            </fo:block>
			                            <fo:block font-weight="bold" text-align="left">
			                              <fo:inline>
			                              </fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block font-weight="bold" text-align="center">
			                                NO
			                            </fo:block>
			                            <fo:block font-weight="bold" text-align="left">
			                              <fo:inline>
			                                <xsl:value-of select="valorCuota"/>
			                              </fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                        </fo:table-row>
			                        
			                        <fo:table-row>
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left">
			                                El intermediario y la empresa declaran conocer las disposiciones establecidas por CORFO en su "Reglamento de Cobertura FOGAIN, aprobado mediante Resolución Afecta del Vicepresidente Ejecutivo de la Corporación N°289, de 2010 o en el instrumento que lo modifique o reemplace, en adelante también "el Reglamento".
			                            </fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline>
			                              </fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/>
			                            </fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline>
			                              <fo:leader leader-pattern="space" leader-length="1mm"/>
			                              </fo:inline> 
			                            </fo:block>
			                            <fo:block text-align="center">
			                              <fo:inline>
			                              X
			                              </fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left">
			                            
			                            </fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline></fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                        </fo:table-row>
			                        
			                        <fo:table-row>
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left">
			                                El intermediario declara que tanto la empresa beneficiaria como la operación cumplen con las condiciones establecidas en la Normativa de la Cobertura, no constituyéndose a su respecto ninguna de las exclusiones señaladas en el Reglamento.
			                            </fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline></fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline></fo:inline> 
			                            </fo:block>
			                            <fo:block text-align="center">
			                              <fo:inline>
			                              X
			                              </fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left">
			                                
			                            </fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline></fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                        </fo:table-row>
			                        
			                        <fo:table-row>
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left">
			                                El intermediario y la empresa declaran que el financiamiento concedido con la Cobertura FOGAIN CORFO, fue otorgado sin acogerse a otras  coberturas o subsidios contingentes de CORFO ni tampoco ha sido garantizado por el Fondo de Garantía para Pequeños Empresarios (FOGAPE).
			                            </fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline></fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline></fo:inline> 
			                            </fo:block>
			                            <fo:block text-align="center">
			                              <fo:inline>
			                              X
			                              </fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left"></fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline></fo:inline> 
				                            </fo:block>
				                          </fo:table-cell>
				                        </fo:table-row>

                              <fo:table-row>
                                 <fo:table-cell border="solid 1pt gray" >
                                    <fo:block text-align="left">
                                      Si corresponde, la empresa declara que el financiamiento ha sido utilizado para invertir con fines productivos y/o de servicios en tierras administradas a cualquier título por las personas naturales indígenas o de las comunidades indígenas, o de propiedad de aquéllas a que se refiere la Ley N°19.253.
                                    </fo:block>
                                    <fo:block text-align="left">
	                                     <fo:inline></fo:inline> 
	                                  </fo:block>
	                               </fo:table-cell>
	                          
			                           <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left"></fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline></fo:inline> 
			                            </fo:block>
			                            <fo:block text-align="left">
			                              <fo:inline>
			                              </fo:inline> 
			                            </fo:block>
			                           </fo:table-cell>
			                          
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			                            <fo:block text-align="center">
			                              <fo:inline>X</fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
	                            </fo:table-row>
	
	                        <fo:table-row>
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left">
	                                La empresa declara que las facturas que respaldan la operación, documentan gastos de inversión que se financiaron originalmente con recursos de la empresa o de terceros distintos al intermediario, los que se refinanciarán con los recursos relacionados al crédito del Intermediario Financiero.
	                            </fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left"></fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                            <fo:block text-align="center">
	                              <fo:inline>X</fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                        </fo:table-row>
	
	                        <fo:table-row>
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left">
	                                La empresa declara que una parte o la totalidad del financiamiento otorgado por el Intermediario Financiero, que cuenta con la Cobertura FOGAIN aprobada por CORFO, ha sido utilizado para la adquisición de activos o para otras inversiones, o para financiar necesidades de capital de trabajo de mi(nuestra) empresa.
	                            </fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                            <fo:block text-align="center">
	                              <fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline> 
	                            </fo:block>
	                            <fo:block text-align="center">
	                              <fo:inline>
	                              X
	                              </fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left"></fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                        </fo:table-row>
	
	                        <fo:table-row>
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left">
	                                El intermediario y la empresa declaran que, si se trata de refinanciamientos, reprogramaciones y/o consolidaciones de créditos de enlace, estos fueron otorgados por el mismo intermediario, y no presentaban mora o retardo en el pago al momento de su refinanciamiento, reprogramación o consolidación.
	                            </fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left"></fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                            <fo:block text-align="center">
	                              <fo:inline>X</fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                        </fo:table-row>
	
	                        <fo:table-row>
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left">
	                                El intermediario y la empresa declaran que ésta última renuncia al plazo de gracia mínimo de 24 meses establecido para las <fo:inline font-weight="bold"> operaciones de reconversión </fo:inline> de plazo mayor a 60 meses, en el caso de pequeñas y medianas empresas y mayor a 36 meses  en el caso de operaciones de microempresas.
	                            </fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline> 
	                            </fo:block>
	                            <fo:block text-align="center">
	                              <fo:inline>
	                              N/A
	                              </fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                            <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                            <fo:block text-align="center">
	                              <fo:inline>N/A</fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                        </fo:table-row>
	
	                        <fo:table-row>
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left">
	                                El intermediario declara que la amortización de capital de la operación es creciente o al menos equivalente en el tiempo, en el caso de las <fo:inline font-weight="bold"> operaciones de reconversión </fo:inline> de plazo mayor a 60 meses, en el caso de pequeñas y medianas empresas y mayor a 36 meses en el caso de operaciones de microempresas. 
	                            </fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline> 
	                            </fo:block>
	                            <fo:block text-align="center">
	                              <fo:inline>
	                              N/A
	                              </fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
                                <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                            <fo:block text-align="center">
	                              <fo:inline>N/A</fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                        </fo:table-row>
	
	                        <fo:table-row>
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left">
	                                El intermediario declara reconocer y aceptar que, si la operación acogida al instrumento de cobertura adolecía de mora o simple retardo en el pago de capital o intereses al momento de presentar dicha solicitud de cobertura a CORFO, y que CORFO se encuentra expresamente autorizada para rechazar el pago, si por causa de tal puntual mora o retardo se siniestró la operación, y se solicitó el pago de la cobertura.
	                            </fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline></fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline> 
	                            </fo:block>
	                            <fo:block text-align="center">
	                              <fo:inline>
	                              X
	                              </fo:inline> 
	                            </fo:block>
	                          </fo:table-cell>
	                          
	                          <fo:table-cell border="solid 1pt gray" >
	                            <fo:block text-align="left"></fo:block>
	                            <fo:block text-align="left">
	                              <fo:inline>
	                                <xsl:value-of select="valorCuota"/>
	                              </fo:inline> 
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

                <fo:leader leader-pattern="space" leader-length="17cm"/>
                <fo:leader leader-pattern="space" leader-length="17cm"/>
                <fo:leader leader-pattern="space" leader-length="17cm"/>
                <fo:table border-collapse="collapse">
                  <fo:table-column />
                    <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell >
                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" >Página 1 de 2</fo:block>
                                <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" color="gray">Crédito Fogain Proyecto de Inversión</fo:block>                                
                        </fo:table-cell>
                      </fo:table-row>
                    </fo:table-body>
                </fo:table>
                
                <fo:leader leader-pattern="space" leader-length="17cm"/>
                <fo:leader leader-pattern="space" leader-length="17cm"/>
                <fo:leader leader-pattern="space" leader-length="17cm"/>
                <fo:leader leader-pattern="space" leader-length="17cm"/>
                <fo:leader leader-pattern="space" leader-length="17cm"/>                
                    
			    <fo:table width="100%" padding-top="15pt">
                       <fo:table-column/>
                       <fo:table-body>
                           <fo:table-row>
                               <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                   <fo:block text-align="justify">
                                       <fo:inline font-size="10pt" font-weight="bold">
                                           El financiamiento señalado corresponde a la operación Crédito Inversión identificada por el Intermediario Financiero como<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold"><xsl:value-of select="numOperacion"/></fo:inline>, aprobada el<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold"><xsl:value-of select="fechaCurse"/></fo:inline>
                                       </fo:inline>
                                   </fo:block>
                                   <fo:leader leader-pattern="space" leader-length="17cm"/> 
                                   <fo:block text-align="justify">
                                       <fo:inline font-size="10pt">
                                           Autorizamos a CORFO o a quienes ésta designe, para realizar las revisiones y auditorías que correspondan, según lo estipulado en el Reglamento de la Cobertura respectivo. Nos comprometemos a proporcionar a CORFO los antecedentes que se requieran de la operación de crédito ya identificada. 
                                       </fo:inline>
                                   </fo:block>
                               </fo:table-cell>
                           </fo:table-row>
                       </fo:table-body>
                    </fo:table>
			              
			          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
			            <fo:table-column column-width="100%"/>
			            <fo:table-body>
			              <fo:table-row>
			                <fo:table-cell padding="1mm">
			                  <fo:block font-size="10pt" space-after="10mm" padding-before="11pt">
			                    <fo:table table-layout="fixed">
			                      <fo:table-column column-width="47mm"/>
			                      <fo:table-column column-width="47mm"/>
			                      <fo:table-column column-width="47mm"/>
			                      <fo:table-column column-width="47mm"/>
			                      <fo:table-body>
			                        <fo:table-row>
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block font-weight="bold" text-align="left">
			                                Inversión-Activo Fijo: ($)
			                            </fo:block>
			                            <fo:block font-weight="bold" text-align="left">
			                              <fo:inline>
			                              <fo:leader leader-pattern="space" leader-length="1mm"/>  
			                              </fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block font-weight="bold" text-align="left">
			                                Capital de trabajo: ($)
			                            </fo:block>
			                            <fo:block font-weight="bold" text-align="left">
			                              <fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline> 
			                            </fo:block>
			                            <fo:block font-weight="bold" text-align="left">
			                              <fo:inline>
			                              </fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          
			                          <fo:table-cell border="solid 1pt gray" >
			                            <fo:block font-weight="bold" text-align="left">
			                                Refinanciamiento: ($)
			                            </fo:block>
			                            <fo:block font-weight="bold" text-align="left">
			                              <fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline> 
			                            </fo:block>
			                          </fo:table-cell>
			                          
                                      <fo:table-cell border="solid 1pt gray" >
                                        <fo:block font-weight="bold" text-align="left">
                                            El monto de las las líneas de factoring otorgado para facturaje de facturas es: ($)
                                        </fo:block>
                                        <fo:block font-weight="bold" text-align="left">
                                          <fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline> 
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
                    
			          <fo:table width="100%" padding-top="10pt">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                        <fo:block text-align="justify">
                                            <fo:inline font-size="10pt">
                                                Autorizamos a CORFO o a quienes ésta designe, para realizar las revisiones y auditorías que correspondan, según lo estipulado en el Reglamento de la Cobertura respectivo. Nos comprometemos a proporcionar a CORFO los antecedentes que se requieran de la operación de crédito ya identificada.
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                       </fo:table>
                    
                    <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >
                    En<fo:leader leader-pattern="space" leader-length="20mm"/><fo:leader leader-pattern="space" leader-length="20mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="ciudadContrato" /></fo:inline>,
                    <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="dia" /></fo:inline>
                    <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <xsl:variable name="mes" select="mes" />
                    <fo:inline font-weight="bold">
                        <xsl:if test="$mes = 01">Enero</xsl:if>
                        <xsl:if test="$mes = 02">Febrero</xsl:if>
                        <xsl:if test="$mes = 03">Marzo</xsl:if>
                        <xsl:if test="$mes = 04">Abril</xsl:if>
                        <xsl:if test="$mes = 05">Mayo</xsl:if>
                        <xsl:if test="$mes = 06">Junio</xsl:if>
                        <xsl:if test="$mes = 07">Julio</xsl:if>
                        <xsl:if test="$mes = 08">Agosto</xsl:if>
                        <xsl:if test="$mes = 09">Septiembre</xsl:if>
                        <xsl:if test="$mes = 10">Octubre</xsl:if>
                        <xsl:if test="$mes = 11">Noviembre</xsl:if>
                        <xsl:if test="$mes = 12">Diciembre</xsl:if>
                    </fo:inline>
                    <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="ano" /></fo:inline>
                    </fo:block>                  
                    <fo:leader leader-pattern="space" leader-length="17cm"/>
                    
                    <fo:table space-before.optimum="1pt">
                      <fo:table-column column-width="48mm"/>
                      <fo:table-column column-width="46mm"/>
                      <fo:table-column column-width="48mm"/>
                      <fo:table-column column-width="46mm"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Nombre Intermediario:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Nombre Empresa:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="nombreEmpresa"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                            </fo:table-cell>                            
                          </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    
                    <fo:table space-before.optimum="1pt">
                      <fo:table-column column-width="48mm"/>
                      <fo:table-column column-width="46mm"/>
                      <fo:table-column column-width="48mm"/>
                      <fo:table-column column-width="46mm"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>RUT Intermediario:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>RUT Empresa o de Empresario:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="rutEmpresa"/>-<xsl:value-of select="dvEmpresa"/></fo:block>
                            </fo:table-cell>                            
                          </fo:table-row>
                        </fo:table-body>
                    </fo:table>

                    <fo:table space-before.optimum="1pt">
                      <fo:table-column column-width="48mm"/>
                      <fo:table-column column-width="46mm"/>
                      <fo:table-column column-width="48mm"/>
                      <fo:table-column column-width="46mm"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Nombre del(a) representante legal Intermediario:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Nombre del(a) representante legal Empresa:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="nombreApoderado1"/></fo:block>
                            </fo:table-cell>                            
                          </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    
                    <fo:table space-before.optimum="1pt">
                      <fo:table-column column-width="48mm"/>
                      <fo:table-column column-width="46mm"/>
                      <fo:table-column column-width="48mm"/>
                      <fo:table-column column-width="46mm"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>RUT Representante legal:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>RUT Representante legal:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid pt black">
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="rutApoderado1"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                            </fo:table-cell>                            
                          </fo:table-row>
                        </fo:table-body>
                    </fo:table>

			        <fo:leader leader-pattern="space" leader-length="17cm"/>                 
                    <fo:leader leader-pattern="space" leader-length="17cm"/>
	                <fo:leader leader-pattern="space" leader-length="17cm"/>
	                <fo:leader leader-pattern="space" leader-length="17cm"/>
		              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
		              <fo:table border-collapse="collapse" text-align="center">
	                      <fo:table-column column-width="90mm"/>
	                      <fo:table-column column-width="90mm"/>
		                  <fo:table-body>
		                      <fo:table-row>
		                            <fo:table-cell >
		                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:inline font-size="10pt" font-weight="bold">________________________</fo:inline></fo:block>
		                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left">Firma Representante Legal</fo:block>
		                            </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right"><fo:inline font-size="10pt" font-weight="bold">___________________</fo:inline></fo:block>
                                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right">Firma Representante</fo:block>
                                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right">Institución Financiera</fo:block>
                                          </fo:table-cell>				                            
		                      </fo:table-row>
		                </fo:table-body>              
		              </fo:table> 
				              
		              <fo:leader leader-pattern="space" leader-length="17cm"/>
		              <fo:leader leader-pattern="space" leader-length="17cm"/>
		              <fo:leader leader-pattern="space" leader-length="17cm"/>             
		              <fo:table border-collapse="collapse" text-align="center">
		                  <fo:table-column />
		                  <fo:table-body>
		                      <fo:table-row>
		                            <fo:table-cell >
		                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="center"><fo:inline font-size="10pt" font-weight="bold">____________________________________</fo:inline></fo:block>
		                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="center">Firma empresario (a) (Persona natural)</fo:block>
		                            </fo:table-cell>
		                      </fo:table-row>
		                </fo:table-body>              
		              </fo:table>
				               
		              <fo:leader leader-pattern="space" leader-length="17cm"/>
		              <fo:leader leader-pattern="space" leader-length="17cm"/>
		              <fo:leader leader-pattern="space" leader-length="17cm"/>
		              <fo:leader leader-pattern="space" leader-length="17cm"/>
		              <fo:leader leader-pattern="space" leader-length="17cm"/>
		              <fo:leader leader-pattern="space" leader-length="17cm"/>
		              <fo:leader leader-pattern="space" leader-length="17cm"/>
		              <fo:leader leader-pattern="space" leader-length="17cm"/>
				              
                      <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block> 
                      <fo:table border-collapse="collapse">
                        <fo:table-column />
                          <fo:table-body>
                            <fo:table-row>
                              <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" >Página 2 de 2</fo:block>
                                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                      <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" color="gray">Crédito Fogain Proyecto de Inversión</fo:block>                                      
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