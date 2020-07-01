<?xml version="1.0" encoding="iso-8859-1"?>

<!-- Autor: Jose M. Selman -->
<!-- version: $Revision: 1.1$-->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:template match="cuenta">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-height="27.9cm" page-width="21.1cm" margin-top="2cm" margin-bottom="2cm" margin-left="2cm" margin-right="2cm">
                    <fo:region-body/>
                    <fo:region-before extent="3cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="miCarta">
                <fo:static-content flow-name="xsl-region-before">
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block space-after="5mm">
                       
                    </fo:block>
           
                    <fo:block font-size="9pt" space-after="10mm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="4.25cm" />
                            <fo:table-column column-width="4.25cm" />
                            <fo:table-column column-width="4.25cm" />
                            <fo:table-column column-width="4.25cm" />
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" background-color="grey" color="white">
                                            Ejecutivo:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="ejecutivo"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" background-color="grey" color="white">
                                            Oficina:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="oficina"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            
                            
                            </fo:table-body>
                        </fo:table>
                        
             <fo:block font-size="9pt" space-after="5mm"/>
                        
                        <fo:table table-layout="fixed">
               
                           <fo:table-column column-width="2.43cm" />
                           <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Saldo Disponible:
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Saldo Contable:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Saldo Contable 9AM:
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Retenciones:
                                        </fo:block>
                                    </fo:table-cell>
                     <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cheques y Cargos:
                                        </fo:block>
                                    </fo:table-cell>
                     <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Depósitos y Abonos:
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Protestos:
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                       
               <fo:table table-layout="fixed">
               
                           <fo:table-column column-width="2.43cm" />
                           <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="saldo-disponible"/>
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                             <xsl:value-of select="saldo-contable"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="saldo-contable-9am"/>
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                             <xsl:value-of select="retenciones"/>
                                        </fo:block>
                                    </fo:table-cell>
                     <fo:table-cell>
                                        <fo:block font-weight="normal">
                                             <xsl:value-of select="cheques-cargos"/>
                                        </fo:block>
                                    </fo:table-cell>
                     <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="depositos-abonos"/>
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="protestos"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block font-size="9pt" space-after="5mm"/>
            <fo:table table-layout="fixed">
               
                           <fo:table-column column-width="2.43cm" />
                           <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Aclaraciones:
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros bancos con presencia plaza:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Bci:
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Otros bancos sin presencia plaza:
                                        </fo:block>
                                    </fo:table-cell>
                     <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Cajeros Automáticos:
                                        </fo:block>
                                    </fo:table-cell>
                     <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Disponible de línea de sobregiro:
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            Fecha Apertura:
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
            
            <fo:table table-layout="fixed">
               
                           <fo:table-column column-width="2.43cm" />
                           <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               <fo:table-column column-width="2.43cm" />
               
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="aclaraciones"/>
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                             <xsl:value-of select="bancos-con-presencia-plaza"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="bci"/>
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                             <xsl:value-of select="bancos-sin-presencia-plaza"/>
                                        </fo:block>
                                    </fo:table-cell>
                     <fo:table-cell>
                                        <fo:block font-weight="normal">
                                             <xsl:value-of select="cajeros-automaticos"/>
                                        </fo:block>
                                    </fo:table-cell>
                     <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="linea-sobegiro"/>
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="fecha-apertura"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
            
                    </fo:block>
            
            
            
            <!-- Informacion de los titulares -->
            <fo:block font-size="10pt" font-weight="bold" space-after="0mm" text-align="left" background-color="grey" color="white">
                        Titulares de la cuenta:
                    </fo:block>
            
            <fo:block font-size="9pt" space-after="10mm">
              <fo:table table-layout="fixed">
                           <fo:table-column column-width="5cm" />
                           <fo:table-column column-width="12cm" />
               
               <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" background-color="lightyellow" color="black">
                                            Rut del titular
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold" background-color="lightyellow" color="black">
                                             Nombre del titular
                                        </fo:block>
                                    </fo:table-cell>
                </fo:table-row>
                
                <xsl:for-each select="titular">
                  <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="rut"/>
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                             <xsl:value-of select="nombre"/>
                                        </fo:block>
                                    </fo:table-cell>
                  </fo:table-row>
                
                </xsl:for-each>
                
               </fo:table-body>
              
                  </fo:table>
            </fo:block>
            
                     <fo:block font-size="10pt" font-weight="bold" space-after="0mm" text-align="left" background-color="grey" color="white">
                        Minicartola
                    </fo:block>
            <fo:block font-size="9pt" font-weight="bold" space-after="1mm" background-color="lightyellow" color="black">
                        Últimos ocho cheques cobrados
                    </fo:block>
                    
                    <fo:block font-size="9pt" space-after="10mm">
                        
                        <fo:table table-layout="fixed">
               
                           <fo:table-column column-width="2.125cm" />
                           <fo:table-column column-width="2.125cm" />
               <fo:table-column column-width="2.125cm" />
               <fo:table-column column-width="2.125cm" />
               <fo:table-column column-width="2.125cm" />
               <fo:table-column column-width="2.125cm" />
               <fo:table-column column-width="2.125cm" />
               <fo:table-column column-width="2.125cm" />
               
                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="minicartola/cheques-cobrados[position() = 1]" />
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="minicartola/cheques-cobrados[position() = 2]" />
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="minicartola/cheques-cobrados[position() = 3]" />
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="minicartola/cheques-cobrados[position() = 4]" />
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="minicartola/cheques-cobrados[position() = 5]" />
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="minicartola/cheques-cobrados[position() = 6]" />
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="minicartola/cheques-cobrados[position() = 7]" />
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="normal">
                                            <xsl:value-of select="minicartola/cheques-cobrados[position() = 8]" />
                                        </fo:block>
                                    </fo:table-cell>
                    </fo:table-row>
                    </fo:table-body>
                
            </fo:table>
            
            </fo:block>
            
             <fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" background-color="grey" color="white">
                        Últimos 18 movimientos de su cuenta
                    </fo:block>
            
            <fo:block font-size="9pt" space-after="10mm">
                        
                        <fo:table table-layout="fixed">
               
                           <fo:table-column column-width="3cm" />
                           <fo:table-column column-width="7cm" />
               <fo:table-column column-width="3cm" />
               <fo:table-column column-width="2cm" />
               <fo:table-column column-width="2cm" />

               
                            <fo:table-body>
                                
                                <fo:table-row space-after="1mm">
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" background-color="lightyellow" color="black">
                                            Fecha Movimiento
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold" background-color="lightyellow" color="black">
                                            Descripción
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold" background-color="lightyellow" color="black">
                                            Serie
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold" background-color="lightyellow" color="black">
                                            Cargo $
                                        </fo:block>
                                    </fo:table-cell>
                    <fo:table-cell>
                                        <fo:block font-weight="bold" background-color="lightyellow" color="black">
                                            Abono $
                                        </fo:block>
                                    </fo:table-cell>
                </fo:table-row>
                
                
                <xsl:for-each select="movimientos-cuenta/movimiento">
                
                    <xsl:variable name="bgcolor">
                        <xsl:choose>
                        <xsl:when test="position() mod 2 = 0">grey</xsl:when>
                        <xsl:otherwise>lightgrey</xsl:otherwise>
                    </xsl:choose>
                    </xsl:variable>
                    
                    <xsl:variable name="color">
                        <xsl:choose>
                        <xsl:when test="position() mod 2 = 0">white</xsl:when>
                        <xsl:otherwise>black</xsl:otherwise>
                    </xsl:choose>
                    </xsl:variable>

                
                    <fo:table-row>
                                      <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="{$bgcolor}" color="{$color}">
                                             <xsl:value-of select="fecha" />
                                        </fo:block>
                                      </fo:table-cell>
                      <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="{$bgcolor}" color="{$color}">
                                            <xsl:value-of select="descripcion" />
                                        </fo:block>
                                      </fo:table-cell>
                      <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="{$bgcolor}" color="{$color}">
                                            <xsl:if test="serie = ''">
                            -
                        </xsl:if>
                        <xsl:else>
                            <xsl:value-of select="serie" />
                        </xsl:else>
                                        </fo:block>
                                      </fo:table-cell>
                      <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="{$bgcolor}" color="{$color}" text-align="right">
                                           <xsl:if test="cargo = ''">
                            -
                        </xsl:if>
                        <xsl:else>
                            <xsl:value-of select="cargo" />
                        </xsl:else>
                                        </fo:block>
                                      </fo:table-cell>
                      <fo:table-cell>
                                        <fo:block font-weight="normal" background-color="{$bgcolor}" color="{$color}" text-align="right">
                                            <xsl:if test="abono = ''">
                            -
                        </xsl:if>
                        <xsl:else>
                            <xsl:value-of select="abono" />
                        </xsl:else>
                                        </fo:block>
                                      </fo:table-cell>
                  </fo:table-row>
                
                
                </xsl:for-each>
                
                
               </fo:table-body>
            </fo:table>
            
                 </fo:block>
             
              
             
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
