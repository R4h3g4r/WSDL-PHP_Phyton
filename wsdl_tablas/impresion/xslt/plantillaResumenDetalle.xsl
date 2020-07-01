<?xml version="1.0" encoding="iso-8859-1"?>

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
                  
                  <!--   Imagen inicial   -->                  
                  <fo:block font-family="Times" text-align="middle" font-size="14pt">
                      <fo:table table-layout="fixed" width="200mm">
                        <fo:table-column column-width="proportional-column-width(100)"/>
                        <fo:table-column column-width="proportional-column-width(100)"/>
                            <fo:table-body>
                                <xsl:for-each select="image/element"> 
                                  <fo:table-row  >
                                    <fo:table-cell >
                                      <xsl:variable name="image-dir"><xsl:value-of select="imagen"/></xsl:variable>
                                      <fo:block font-weight="bold">
                                          <fo:external-graphic src="{$image-dir}"/>
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                      <fo:block text-align="right" color="gray">
                                          <xsl:value-of select="tituloEnc"/>
                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                               </xsl:for-each>  
                            </fo:table-body>
                      </fo:table>
                  </fo:block>
                  <!-- fin Imagen Inicial -->                  

                          

                    <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm">
                
                    <!-- bloque titulo encabezado -->
                   
                  
                                              
                         <fo:block space-before="2mm" font-weight="bold" />
                         <!-- bloque cabezera      -->
                         <fo:block >
                         
                               <fo:table table-layout="fixed" width="200mm" border-width="0.1mm" border-style="solid">
                                   <fo:table-column column-width="proportional-column-width(15)"/>
                                   <fo:table-column column-width="proportional-column-width(25)"/>
                                   <fo:table-column column-width="proportional-column-width(15)"/>
                                   <fo:table-column column-width="proportional-column-width(45)"/>
                                   <fo:table-column column-width="proportional-column-width(15)"/>
                                   <fo:table-column column-width="proportional-column-width(25)"/>
                                   <fo:table-column column-width="proportional-column-width(15)"/>
                                   <fo:table-column column-width="proportional-column-width(30)"/>
                                    <fo:table-body>
                                       <xsl:for-each select="encabezado/element"> 
                                             <fo:table-row  >
                                                 <fo:table-cell >
                                                   <fo:block font-weight="bold">
                                                       <xsl:value-of select="celda0"/>
                                                   </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell>
                                                    <fo:block text-align="left">
                                                        <xsl:value-of select="celda1"/>
                                                    </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell >
                                                    <fo:block font-weight="bold">
                                                      <xsl:value-of select="celda2"/>
                                                    </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell>
                                                    <fo:block text-align="left">
                                                      <xsl:value-of select="celda3"/>
                                                    </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell >
                                                   <fo:block font-weight="bold">
                                                       <xsl:value-of select="celda4"/>
                                                   </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell>
                                                    <fo:block text-align="left">
                                                        <xsl:value-of select="celda5"/>
                                                    </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell >
                                                    <fo:block font-weight="bold">
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
  
                         <!--Encabezado Forma de pago -->
                         <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm"/>
                         <fo:block space-before="2mm" font-weight="bold" />
                         <fo:block space-before="2mm" font-weight="bold" />
                         <fo:block space-before="2mm" font-weight="bold" />
                 		     <!-- bloque titulo encabezado2 -->
                   
                         <!-- bloque cabezera2      -->
                         <fo:block>
                         
                               <fo:table table-layout="fixed" width="200mm" border-width="0.2mm" border-style="solid">
                                   <fo:table-column column-width="proportional-column-width(50)"/>
                                   <fo:table-column column-width="proportional-column-width(50)"/>
                                   <fo:table-column column-width="proportional-column-width(50)"/>
                                   <fo:table-column column-width="proportional-column-width(50)"/>
                                   
                                    <fo:table-body>
                                       <xsl:for-each select="encabezado2/element"> 
                                             <fo:table-row  >
                                                 <fo:table-cell >
                                                   <fo:block font-weight="bold"  background-color="#DCDCDC" border-width="0.05mm" border-style="solid" border-color="white">
                                                       <xsl:value-of select="celda0"/>
                                                   </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell>
                                                    <fo:block text-align="center">
                                                        <xsl:value-of select="celda1"/>
                                                    </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell >
                                                    <fo:block font-weight="bold"  background-color="#DCDCDC" border-width="0.05mm" border-style="solid" border-color="white">
                                                      <xsl:value-of select="celda2"/>
                                                    </fo:block>
                                                 </fo:table-cell>
                                                 <fo:table-cell>
                                                    <fo:block text-align="center">
                                                      <xsl:value-of select="celda3"/>
                                                    </fo:block>
                                                 </fo:table-cell>
		                                        </fo:table-row>
                                         </xsl:for-each>  
                                     </fo:table-body>
                               </fo:table>
                            </fo:block> 
                                         
                 <fo:block space-before="2mm" font-weight="bold"/>
                 <fo:block space-before="2mm" font-weight="bold"/>
                 <fo:block space-before="2mm" font-weight="bold"/>    

                 <fo:block>
                        <fo:table>
                            <fo:table-column column-width="proportional-column-width(100)"/>                    
                             <fo:table-body>
                               <xsl:for-each select="tituloApoderado/element"> 
                                <fo:table-row background-color="white">
                                    <fo:table-cell>
                                      <fo:block text-align="left" font-size="10pt" color="black">
                                              <xsl:value-of select="titulo"/>
                                      </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                              </xsl:for-each> 
                            </fo:table-body>
                        </fo:table>
                 </fo:block>  
                  <!-- bloque detalle apoderado      -->
                 <fo:block>
                       <fo:table table-layout="fixed" width="200mm" border-width="0.3mm" border-style="solid" border-color="black">
                           <fo:table-column column-width="proportional-column-width(50)"/>
                           <fo:table-column column-width="proportional-column-width(50)"/>
                           <fo:table-column column-width="proportional-column-width(50)"/>
                           <fo:table-column column-width="proportional-column-width(50)"/>
                            <fo:table-body>
                               <xsl:for-each select="detalleApoderado/element"> 
                                     <fo:table-row  >
                                         <fo:table-cell >
                                           <fo:block font-weight="bold"  background-color="#DCDCDC" border-width="0.05mm" border-style="solid" border-color="white">
                                               <xsl:value-of select="celda0"/>
                                           </fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell>
                                            <fo:block text-align="center">
                                                <xsl:value-of select="celda1"/>
                                            </fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                            <fo:block font-weight="bold"  background-color="#DCDCDC" border-width="0.05mm" border-style="solid" border-color="white">
                                              <xsl:value-of select="celda2"/>
                                            </fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell>
                                            <fo:block  text-align="center">
                                              <xsl:value-of select="celda3"/>
                                            </fo:block>
                                         </fo:table-cell>
                                    </fo:table-row>
                                 </xsl:for-each>  
                             </fo:table-body>
                       </fo:table>
                    </fo:block> 
                 <fo:block space-before="2mm" font-weight="bold"/>
                 <fo:block space-before="2mm" font-weight="bold"/>
                      <!--fin apoderado-->                                                 
                      <!-- imagen Timbre-->
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
