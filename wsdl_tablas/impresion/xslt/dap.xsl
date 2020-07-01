<?xml version="1.0" encoding="iso-8859-1"?>

<!-- Copyright(c) BEE Consultorias y Sistemas - All Rights Reserved -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>

    <xsl:param name="IMG_URL"/>
    <xsl:param name="TIMESTAMP"/>

    <xsl:template match="dap">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-height="27.9cm" page-width="21.1cm" margin-top="2cm" margin-bottom="2cm" margin-left="2cm" margin-right="2cm"><fo:region-body/>
                    <fo:region-before extent="3cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="miCarta">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block text-align="end" font-size="10pt" font-family="Times Roman" line-height="-24pt">
                        <xsl:copy-of select="$TIMESTAMP"/> - Banco de Crédito e Inversiones - P <fo:page-number/>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                   
                    <fo:block font-size="12pt" font-weight="bold" space-after="10mm" text-align="center">
                        Depósitos a Plazo - DaP Flexible - Calendario de Vencimientos
                    </fo:block>
                    
                    
                    <fo:block font-size="7pt" space-after="1mm">
                        <fo:table table-layout="fixed" >
                            <fo:table-column column-width="3cm" />
                            <fo:table-column column-width="4cm" />
                            <fo:table-column column-width="3cm" />
                            <fo:table-column column-width="10cm" />
                            <fo:table-body>
                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black"  background-color="white">Nro. Operación: </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal"  background-color="white">
                                            <xsl:value-of select="caioperacion"/>  -  <xsl:value-of select="iicoperacion"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black" background-color="white" >Oficina:</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="white" >
                                            <xsl:value-of select="oficina"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                </fo:table-row>

                            </fo:table-body>

                        </fo:table>
                    </fo:block>         

                    <fo:block font-size="7pt" space-after="1mm">
                        <fo:table table-layout="fixed" >
                            <fo:table-column column-width="3cm" />
                            <fo:table-column column-width="17cm" />
                            <fo:table-body>
                        
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black" background-color="white" >Operación:</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="white" >
                                            <xsl:value-of select="operacion"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                </fo:table-row>

                            </fo:table-body>

                        </fo:table>
                    </fo:block>         

                    <fo:block font-size="7pt" space-after="1mm">
                        <fo:table table-layout="fixed" >
                            <fo:table-column column-width="3cm" />
                            <fo:table-column column-width="2cm" />
                            <fo:table-column column-width="15cm" />
                            <fo:table-body>
                        

                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black" background-color="white">Titular: </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="white" >
                                            <xsl:value-of select="ruttitular"/>  -  <xsl:value-of select="vrftitular"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                    <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="white" >
                                            <xsl:value-of select="nombretitular"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                </fo:table-row>

                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black" background-color="white">Titular 2: </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="white" >
                                            <xsl:value-of select="ruttitular2"/>  -  <xsl:value-of select="vrftitular2"/>
                                        </fo:block>
                                    </fo:table-cell>                    
                                    <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="white" >
                                            <xsl:value-of select="nombretitular2"/>
                                        </fo:block>
                                    </fo:table-cell>                    
                                </fo:table-row>

                            </fo:table-body>

                        </fo:table>
                    </fo:block>         

                    <fo:block font-size="7pt" space-after="10mm">
                        <fo:table table-layout="fixed" >
                            <fo:table-column column-width="3cm" />
                            <fo:table-column column-width="4cm" />
                            <fo:table-column column-width="3cm" />
                            <fo:table-column column-width="10cm" />
                            <fo:table-body>

                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black" background-color="white" >Monto Captación:</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="white" >
                                            <xsl:value-of select="montocaptacionmon"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black" background-color="white" >Monto Captación en $:</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="white" >
                                            <xsl:value-of select="montoenpesos"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                </fo:table-row>

                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black"  background-color="white">Fecha Captación:</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal"  background-color="white" >
                                            <xsl:value-of select="fechaemision"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black" background-color="white" >Captador:</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight=" normal" background-color="white" >
                                            <xsl:value-of select="glosaejecutivo"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                </fo:table-row>

                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black" background-color="white" >Tasa Interés:</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="white" >
                                            <xsl:value-of select="tasainteres"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" color="black" background-color="white" >Tasa Ajuste Inicial:</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="white" >
                                            <xsl:value-of select="tasaajuste"/>
                                        </fo:block>
                                    </fo:table-cell>                 
                                </fo:table-row>


                            </fo:table-body>

                        </fo:table>
                    </fo:block>         
                          

                    <fo:block font-size="7pt" space-after="10mm" text-align="right">
                          <fo:table table-layout="fixed">
                                       <fo:table-column column-width="1.0cm" />
                                       <fo:table-column column-width="1.8cm" />
                                       <fo:table-column column-width="1.9cm" />
                                       <fo:table-column column-width="1.9cm" />
                                       <fo:table-column column-width="1.9cm" />
                                       <fo:table-column column-width="1.9cm" />
                                       <fo:table-column column-width="1.9cm" />
                                       <fo:table-column column-width="1.9cm" />
                                       <fo:table-column column-width="1.9cm" />
                                       <fo:table-column column-width="1.9cm" />
                           
                           <fo:table-body>
                                       
                                      <fo:table-row>
                        <fo:table-cell>
                                    <fo:block font-weight="bold" color="black" background-color="white"></fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                   <fo:block font-weight="bold" color="black"  background-color="white"></fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                               <fo:block font-weight="bold" color="black"  background-color="white"></fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                               <fo:block font-weight="bold" color="black"  background-color="white"></fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                               <fo:block font-weight="bold" color="black"  background-color="white"></fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                               <fo:block font-weight="bold" color="black"  background-color="lightgrey">.</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                               <fo:block font-weight="bold" color="black"  background-color="lightgrey">En Liquidación.</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                               <fo:block font-weight="bold" color="black" text-align="left" background-color="lightgrey">Anticipada</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                               <fo:block font-weight="bold" color="black" text-align="left" background-color="lightgrey">.</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                               <fo:block font-weight="bold" color="black"  background-color="lightgrey">.</fo:block>
                            </fo:table-cell>
                                                                                                
                            </fo:table-row>
                            
                          <fo:table-row>
                            <fo:table-cell>
                                <fo:block font-weight="bold" color="black">Nro.</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block font-weight="bold" color="black">Fecha</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                   <fo:block font-weight="bold" color="black">Total</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                   <fo:block font-weight="bold" color="black">Saldo</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                     <fo:block font-weight="bold" color="black">Renta Tot.</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                   <fo:block font-weight="bold" color="black">Tasa</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                   <fo:block font-weight="bold" color="black">Tasa</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                   <fo:block font-weight="bold" color="black">Monto</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                   <fo:block font-weight="bold" color="black">Total</fo:block>
                                </fo:table-cell>
                                                                <fo:table-cell>
                                    <fo:block font-weight="bold" color="black">Rent. en</fo:block>
                                </fo:table-cell>
                        </fo:table-row>

                       
                            
                            <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" color="black">Vcto.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block font-weight="bold" color="black">Vcto.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                               <fo:block font-weight="bold" color="black">Retiro</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                               <fo:block font-weight="bold" color="black">Capital</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                 <fo:block font-weight="bold" color="black">Acumulado</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                               <fo:block font-weight="bold" color="black">Ajuste</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                               <fo:block font-weight="bold" color="black">Real</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                               <fo:block font-weight="bold" color="black">Ajuste</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                               <fo:block font-weight="bold" color="black">Liquidado</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                               <fo:block font-weight="bold" color="black">Líq.Ant.</fo:block>
                            </fo:table-cell>
                            
                            </fo:table-row>
                            
                            <xsl:for-each select="iteraciones">
                               <xsl:variable name="bgcolor">
                                           <xsl:choose>
                                               <xsl:when test="position() mod 2 = 0">white</xsl:when>
                                               <xsl:otherwise>lightgrey</xsl:otherwise>
                                           </xsl:choose>
                                       </xsl:variable>
                              <fo:table-row  text-align="right">
                                                <fo:table-cell>
                                                    <fo:block font-weight="normal" background-color="{$bgcolor}" >
                                                        <xsl:value-of select="vencimiento"/>
                                                    </fo:block>
                                                </fo:table-cell>
                                                                                        
                                                <fo:table-cell>
                                                    <fo:block font-weight="normal" background-color="{$bgcolor}" >
                                                         <xsl:value-of select="fecvencimientoini"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell>
                                                    <fo:block font-weight="normal" background-color="{$bgcolor}" >
                                                         <xsl:value-of select="nomtoTotal"/>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block font-weight="normal" background-color="{$bgcolor}" >
                                                         <xsl:value-of select="capitaldap"/>
                                                    </fo:block>
                                                </fo:table-cell>
                                                
                                                <fo:table-cell>
                                <fo:block font-weight="normal" background-color="{$bgcolor}" >
                                     <xsl:value-of select="rentabilidadtotacumulada"/>
                                 </fo:block>
                                                </fo:table-cell>
                                                
                                                <fo:table-cell>
                                                    <fo:block font-weight="normal" background-color="{$bgcolor}" >
                                                         <xsl:value-of select="tasainteresajusocc"/>
                                                    </fo:block>
                                                </fo:table-cell>
                                                
                                                <fo:table-cell>
                                                    <fo:block font-weight="normal" background-color="{$bgcolor}" >
                                                         <xsl:value-of select="gettasainteresefecocc"/>
                                                    </fo:block>
                                                </fo:table-cell>
                                                
                                                <fo:table-cell>
                                                    <fo:block font-weight="normal" background-color="{$bgcolor}" >
                                                         <xsl:value-of select="montocast"/>
                                                    </fo:block>
                                                </fo:table-cell>
                                                
                                                <fo:table-cell>
                                   <fo:block font-weight="normal" background-color="{$bgcolor}" >
                                       <xsl:value-of select="montoliquidoanticipado"/>
                                   </fo:block>
                                                </fo:table-cell>
                                                
                                               <fo:table-cell>
                                                   <fo:block font-weight="normal" background-color="{$bgcolor}" >
                                                       <xsl:value-of select="rentabilidadanticipada"/>
                                                   </fo:block>
                                                </fo:table-cell>
                                                                                            
                              </fo:table-row>
                            
                            </xsl:for-each>
                            
                           </fo:table-body>
                          
                              </fo:table>
                    </fo:block>
            
            
                    <!-- Separador -->
                    

                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>

