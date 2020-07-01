<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/07/16 21:41 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    
    <xsl:template match="documento">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="minutaDeAprobacion" page-width="215.9mm" page-height="279.4mm" margin-top="10mm" margin-bottom="10mm" margin-left="5mm" margin-right="5mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="minutaDeAprobacion">
                <fo:flow flow-name="xsl-region-body">
                
                  <!-- bloque titulo General -->
                         <fo:block font-family="Times" text-align="left" font-size="14pt">
                                <fo:table table-layout="fixed" width="200mm">
                                    <fo:table-column column-width="proportional-column-width(100)"/>                    
                                     <fo:table-body>
                                       <xsl:for-each select="tituloGeneral/element"> 
                                        <fo:table-row font-weight="bold" >
                                            <fo:table-cell>
                                              <fo:block text-align="left" font-weight="bold" font-size="14pt" >
                                                      <xsl:value-of select="titulo"/>
                                              </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                      </xsl:for-each> 
                                    </fo:table-body>
                                </fo:table>
                                        
                         </fo:block>            

                    <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm">
                
                    <!-- bloque titulo encabezado -->
                   
                  
                         <fo:block>
                                <fo:table table-layout="fixed" width="200mm">
                                    <fo:table-column column-width="proportional-column-width(100)"/>                    
                                     <fo:table-body>
                                       <xsl:for-each select="tituloEncabezado/element"> 
                                         
                                        <fo:table-row font-weight="bold" background-color="#000066">
                                            <fo:table-cell>
                                              <fo:block text-align="left" font-weight="bold" font-size="9pt" color="#ffffff">
                                                      <xsl:value-of select="titulo"/>
                                              </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                       

                                      </xsl:for-each> 
                                    </fo:table-body>
                                </fo:table>
                                        
                         </fo:block>                       
                        
                         <!-- bloque cabezera      -->
                         <fo:block>
                         
                               <fo:table table-layout="fixed" width="200mm">
                                   <fo:table-column column-width="proportional-column-width(50)"/>
                                   <fo:table-column column-width="proportional-column-width(50)"/>
                                   <fo:table-column column-width="proportional-column-width(50)"/>
                                   <fo:table-column column-width="proportional-column-width(50)"/>
                                    <fo:table-body>
                                
                                       <xsl:for-each select="encabezado/element"> 
                                             <fo:table-row  >
                                                 <fo:table-cell >
                                                      <fo:block >
                                                            <xsl:value-of select="celda0"/>
                                                       </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell>
                                                    <fo:block >
                                                        <xsl:value-of select="celda1"/>
                                                    </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell >
                                                     <fo:block >
                                                      <xsl:value-of select="celda2"/>
                                                    </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell>
                                                    <fo:block >
                                                      <xsl:value-of select="celda3"/>
                                                    </fo:block>
                                                 </fo:table-cell>
                                            </fo:table-row>
                                         </xsl:for-each>  
                                     </fo:table-body>
                               </fo:table>
                            </fo:block>                 
                            
                       <!-- otros titulos -->
                       <fo:block space-before="2mm" font-weight="bold" />
                     
                         <fo:block>
                        
                               <fo:table table-layout="fixed" width="200mm">
                                   <fo:table-column column-width="proportional-column-width(200)"/>
                                   
                                    <fo:table-body>
                                         <xsl:for-each select="otrosTitulos/element"> 
                                             <fo:table-row  >
                                                 <fo:table-cell >
                                                      <fo:block >
                                                            <xsl:value-of select="titulo"/> 
                                                       </fo:block>
                                                 </fo:table-cell>
                                            </fo:table-row>
                                         </xsl:for-each>  
                                     </fo:table-body>
                               </fo:table>
                            </fo:block>                                 
                       
                                                   
                       <!-- bloque detalle --> 

  
                       <!--tabla titulo detalle -->
                                           
                         <fo:block>
                                          <fo:table table-layout="fixed" width="200mm">
                                              <fo:table-column column-width="proportional-column-width(100)"/>
                                              
                                              <fo:table-body>
                                                <xsl:for-each select="tituloDetalle/element"> 
                                                  <fo:table-row font-weight="bold" background-color="#000066">
                                                      <fo:table-cell>
                                                        <fo:block text-align="left" font-weight="bold" font-size="9pt" color="#ffffff">
                                                               <xsl:value-of select="titulo"/>
                                                         </fo:block>
                                                      </fo:table-cell>
                                                  </fo:table-row>
                                                </xsl:for-each> 
                                              </fo:table-body>
                                          </fo:table>
                                        
                         </fo:block>  
                                                    
                          
                         <!-- fila con titulos --> 
                         <fo:block>
                                                              
                         <fo:table table-layout="fixed" width="200mm">
                           <fo:table-column column-width="proportional-column-width(20)"/>
                           <fo:table-column column-width="proportional-column-width(32)"/>
                           <fo:table-column column-width="proportional-column-width(23)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(15)"/>
                           <fo:table-column column-width="proportional-column-width(28)"/>      
                           
                                     
                           <fo:table-body>
                              <xsl:for-each select="etiquetasdetalle/element"> 
                                <fo:table-row  >
                                  <fo:table-cell>
                                    <fo:block text-align="left">
                                       <xsl:value-of select="celda0"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="left">
                                       <xsl:value-of select="celda1"/>
                                    </fo:block>
                                  </fo:table-cell>
                                   <fo:table-cell>
                                    <fo:block text-align="center" >
                                       <xsl:value-of select="celda2"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="left">
                                       <xsl:value-of select="celda3"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="left">
                                       <xsl:value-of select="celda4"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="left">
                                       <xsl:value-of select="celda5"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda6"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="left">
                                       <xsl:value-of select="celda7"/>
                                    </fo:block>
                                  </fo:table-cell>
                                 
                                   
                                 
                                </fo:table-row>
                               </xsl:for-each>  
                           </fo:table-body>
                          </fo:table>                    
                        </fo:block>                 
                            
                        <fo:block space-before="2mm" font-weight="bold" />    
 
                                          
                     
                          
                         <!-- filas con valores --> 
                         <fo:block>
                                                              
                         <fo:table table-layout="fixed" width="200mm" >
                           <fo:table-column column-width="proportional-column-width(20)"/>
                           <fo:table-column column-width="proportional-column-width(32)"/>
                           <fo:table-column column-width="proportional-column-width(23)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(15)"/>
                           <fo:table-column column-width="proportional-column-width(28)"/>
                                     
                           <fo:table-body>
                              <xsl:for-each select="detalle/element"> 
                                <fo:table-row  >
                                  <fo:table-cell>
                                    <fo:block >
                                       <xsl:value-of select="celda0"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block>
                                       <xsl:value-of select="celda1"/>
                                    </fo:block>
                                  </fo:table-cell>
                                   <fo:table-cell>
                                    <fo:block text-align="right">
                                       <xsl:value-of select="celda2"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="left">
                                       <xsl:value-of select="celda3"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="left">
                                       <xsl:value-of select="celda4"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="left">
                                       <xsl:value-of select="celda5"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="left">
                                       <xsl:value-of select="celda6"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="left" >
                                       <xsl:value-of select="celda7"/>
                                    </fo:block>
                                  </fo:table-cell>
                                 
                                   
                                 
                                </fo:table-row>
                               </xsl:for-each>  
                           </fo:table-body>
                          </fo:table>                    
                        </fo:block>                 

         	<!-- bloque detalle Totales --> 
					<!--tabla titulo detalle Totales -->
                                           
                         <fo:block>
                                <fo:table table-layout="fixed" width="200mm">
                                    <fo:table-column column-width="proportional-column-width(100)"/>
                                    
                                    <fo:table-body>
                                      <xsl:for-each select="tituloTotDetalle/element"> 
                                        <fo:table-row font-weight="bold" background-color="#000066">
                                            <fo:table-cell>
                                              <fo:block text-align="left" font-weight="bold" font-size="9pt" color="#ffffff">
                                                     <xsl:value-of select="titulo"/>
                                               </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                      </xsl:for-each> 
                                    </fo:table-body>
                                </fo:table>
                                        
                         </fo:block>  
                                                    
                         <!-- fila con titulos --> 
                         <fo:block>
                                                              
                         <fo:table table-layout="fixed" width="200mm">
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(32)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           
                           
                                     
                           <fo:table-body>
                              <xsl:for-each select="etiquetasTotdetalle/element"> 
                                <fo:table-row  >
                                  <fo:table-cell>
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda0"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda1"/>
                                    </fo:block>
                                  </fo:table-cell>
                                   <fo:table-cell>
                                    <fo:block text-align="center" >
                                       <xsl:value-of select="celda2"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda3"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda4"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda5"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda6"/>
                                    </fo:block>
                                  </fo:table-cell>
                                
                                 
                                   
                                 
                                </fo:table-row>
                               </xsl:for-each>  
                           </fo:table-body>
                          </fo:table>                    
                        </fo:block>                 
                            
                        <fo:block space-before="2mm" font-weight="bold" />    
 
     
                         <!-- filas con valores --> 
                         <fo:block>
                                                              
                         <fo:table table-layout="fixed" width="200mm" >
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(32)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>

                                     
                           <fo:table-body>
                              <xsl:for-each select="totDetalle/element"> 
                                <fo:table-row  >
                                  <fo:table-cell>
                                    <fo:block >
                                       <xsl:value-of select="celda0"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda1"/>
                                    </fo:block>
                                  </fo:table-cell>
                                   <fo:table-cell>
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda2"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda3"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda4"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda5"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="center">
                                       <xsl:value-of select="celda6"/>
                                    </fo:block>
                                  </fo:table-cell>
                              
                                 
                                   
                                 
                                </fo:table-row>
                               </xsl:for-each>  
                           </fo:table-body>
                          </fo:table>                    
                        </fo:block>                 

                     <!-- filas con totales --> 
                     <fo:block text-align="left" border-width="20px" />         
                          
                         <fo:block>
                          
                         <fo:table table-layout="fixed" width="200mm" >
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(32)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           <fo:table-column column-width="proportional-column-width(40)"/>
                           <fo:table-column column-width="proportional-column-width(30)"/>
                           
                                   
                           <fo:table-body>
                              <xsl:for-each select="totalesDet/element"> 
                               
                                <fo:table-row  >
                                  <fo:table-cell>
                                    <fo:block font-weight="bold">
                                       Totales
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="center" font-weight="bold">
                                       <xsl:value-of select="celda1"/>
                                    </fo:block>
                                  </fo:table-cell>
                                   <fo:table-cell>
                                    <fo:block text-align="center" font-weight="bold">
                                       <xsl:value-of select="celda2"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="center" font-weight="bold">
                                       <xsl:value-of select="celda3"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="center" font-weight="bold">
                                       <xsl:value-of select="celda4"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="center" font-weight="bold">
                                       <xsl:value-of select="celda5"/>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell >
                                    <fo:block text-align="center" font-weight="bold">
                                       <xsl:value-of select="celda6"/>
                                    </fo:block>
                                  </fo:table-cell>
                              
                                 

                                </fo:table-row>
                               </xsl:for-each>  
                           </fo:table-body>
                          </fo:table>                    
                        </fo:block>  
					<!-- Fin Detalle Totales -->                                                                         
					
<!-- imagen -->
                       
                      <xsl:for-each select="timbre/element"> 
                          <xsl:variable name="image-dir"><xsl:value-of select="imagen"/></xsl:variable>
                          
                        
                          
                           <fo:block text-align="right"  width="16">
                              <fo:external-graphic src="{$image-dir}"/>
                           </fo:block>
                           
                      </xsl:for-each>  
                    </fo:block>

                </fo:flow>     
            </fo:page-sequence>
     
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
