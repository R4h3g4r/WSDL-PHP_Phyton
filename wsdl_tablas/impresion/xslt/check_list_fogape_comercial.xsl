<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2013/08/26 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="check_list_fogape_comercial">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="55mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                        	   <fo:block font-family="Helvetica" font-size="9pt" text-align="center" font-weight="bold" >Documentación básica para Créditos FOGAPE</fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>                                              
                                        </fo:table-cell>
                                        
                                        <fo:table-cell >
                                                <fo:block >
                                                  <fo:external-graphic  width="2cm" height="1cm"  vertical-align="middle">
                                                    <xsl:attribute name="src">
                                                    <xsl:value-of select="logoBciSomosDiferentes"/>
                                                    </xsl:attribute>
                                                  </fo:external-graphic>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm" border-top="0.5pt solid white" border-left="0.5pt solid white" border-right="0.5pt solid white" border-bottom="0.5pt solid white"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="115mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />

                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Nombre:</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                        <xsl:value-of select="nombreCompletoCliente" />
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:block><fo:leader leader-pattern="space" leader-length="10cm"/></fo:block>                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="48mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>

                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>RUT:</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                        <xsl:value-of select="rutCompletoCliente" />
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell> 
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="right"><fo:leader leader-pattern="space" leader-length="0.5mm"/>N° OPERACIÓN</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                        <xsl:value-of select="numOperacion" />
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                

                                <fo:block><fo:leader leader-pattern="space" leader-length="10cm"/></fo:block>                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="48mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>

                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>MONTO:</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                        <xsl:value-of select="simboloMoneda" /> <xsl:value-of select="montoCredito" />
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell> 
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="right"><fo:leader leader-pattern="space" leader-length="0.5mm"/>FECHA</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                        <xsl:value-of select="fechaCurse" />
                                                </fo:block>
                                        </fo:table-cell>
                                                                               
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:block><fo:leader leader-pattern="space" leader-length="10cm"/></fo:block>                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="48mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>

                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>EJECUTIVO:</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                        <xsl:value-of select="codigoEjecutivo" />
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell> 
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="right"><fo:leader leader-pattern="space" leader-length="0.5mm"/>ANEXO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                        <xsl:value-of select="anexo" />
                                                </fo:block>
                                        </fo:table-cell>
                                                                               
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table> 

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="80mm"/>
                                  <fo:table-column column-width="4mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="30mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm" font-weight="bold"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>NO Aplica</fo:block>
                                        </fo:table-cell>                                       
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                               
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="80mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>1.-  Revisar Articulo 85</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table> 
                              
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="80mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>2.-  Revisar Linea de Crédito Global</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table> 
                                                              
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="80mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>3.-  Visación</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                                               
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="80mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="27mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="40mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>4.-  Caratula Activación Epiphany</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>(Solo para regiones)</fo:block>
                                        </fo:table-cell>                                        
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" font-weight="bold"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Documentación necesaria según tipo de crédito</fo:block>                                
                                
                                <fo:block><fo:leader leader-pattern="space" leader-length="0.5cm"/></fo:block>  
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="80mm"/>
                                  <fo:table-column column-width="4mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="30mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left" font-weight="bold"><fo:leader leader-pattern="space" leader-length="0.5mm"/>a)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left" font-weight="bold"><fo:leader leader-pattern="space" leader-length="0.5mm"/>CRÉDITOS:</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>NO Aplica</fo:block>
                                        </fo:table-cell>                                       
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - SOLICITUD DE CRÉDITO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - PAGARE $ o UF FOGAPE</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - SOLICITUD DE INCORPORACIÓN DE SEGURO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - DPS (DECLARACION PERSONAL DE SALUD)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="27mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="40mm"/>                                  
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - ANEXOS RESPONSABILIDAD DEL AVALISTA</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>(Solo si no tiene aval)</fo:block>
                                        </fo:table-cell>                                         
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - DECLARACIÓN JURADA FOGAPE</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - JUSTIFICACION DE RECURSO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="100mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="5pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>(IVAS; FACTURAS DE COMPRAS; PLANILLAS DE PAGO DE REMUNERACIONES / Maximo 6 meses de antigüedad)</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
 
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="80mm"/>
                                  <fo:table-column column-width="4mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="30mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left" font-weight="bold"><fo:leader leader-pattern="space" leader-length="0.5mm"/>b)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left" font-weight="bold"><fo:leader leader-pattern="space" leader-length="0.5mm" font-weight="bold"/>MULTILINEA:</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>NO Aplica</fo:block>
                                        </fo:table-cell>                                       
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - PAGARE MULTILINEA</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="27mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="40mm"/>                                  
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - ANEXOS RESPONSABILIDAD DEL AVALISTA</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>(Solo si no tiene aval)</fo:block>
                                        </fo:table-cell>                                         
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - DECLARACIÓN JURADA FOGAPE</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - CONDICIONES GENERALES DE MLT</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - HOJA RESUMEN DEL CONTRATO MLT</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - ANEXO CONDICIONES Y TARIFAS</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - JUSTIFICACION DE RECURSO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="100mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="5pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>(IVAS; FACTURAS DE COMPRAS; PLANILLAS DE PAGO DE REMUNERACIONES / Maximo 6 meses de antigüedad)</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="80mm"/>
                                  <fo:table-column column-width="4mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="30mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left" font-weight="bold"><fo:leader leader-pattern="space" leader-length="0.5mm"/>c)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left" font-weight="bold"><fo:leader leader-pattern="space" leader-length="0.5mm" font-weight="bold"/>AVANCE MULTILINEA:</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>NO Aplica</fo:block>
                                        </fo:table-cell>                                       
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - SOLICITUD AVANCE MULTILINEA</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="27mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="40mm"/>                                  
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - SOLICITUD DE INCORPORACIÓN DE SEGURO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>(Solo si no tiene seguro)</fo:block>
                                        </fo:table-cell>                                         
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="27mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="40mm"/>                                  
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - DPS (DECLARACION PERSONAL DE SALUD)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>(Solo si no tiene seguro)</fo:block>
                                        </fo:table-cell>                                         
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                                                                         

                                <fo:block><fo:leader leader-pattern="space" leader-length="0.5cm"/></fo:block>  
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="25mm"/>
                                  <fo:table-column column-width="80mm"/>
                                  <fo:table-column column-width="4mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="30mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left" font-weight="bold"><fo:leader leader-pattern="space" leader-length="0.5mm"/>d)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left" font-weight="bold"><fo:leader leader-pattern="space" leader-length="0.5mm" font-weight="bold"/>BOLETA</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>NO Aplica</fo:block>
                                        </fo:table-cell>                                       
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - SOLICITUD DE CRÉDITO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - PAGARE $ o UF</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="27mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"/>
                                  <fo:table-column column-width="40mm"/>                                  
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - ANEXOS RESPONSABILIDAD DEL AVALISTA</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>(Solo si no tiene aval)</fo:block>
                                        </fo:table-cell>                                         
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - DECLARACIÓN JURADA FOGAPE</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="77mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>   - JUSTIFICACION DE RECURSO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                </fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="28mm"/>
                                  <fo:table-column column-width="100mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="5pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>(Contrato firmado de adjudicación O bases de licitación) Y COPIA DE BGT FIRMADA</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
         
                                <fo:table space-before.optimum="0.5pt">
                                  <fo:table-column column-width="46mm"/>
                                  <fo:table-column column-width="148mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" font-size="6pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>LINEA GLOBAL</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" font-size="6pt" padding-before="3pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>REVISAR VIGENCIA, CUPO Y PRODUCTO APROBADO</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table>
                                  <fo:table-column column-width="46mm"/>
                                  <fo:table-column column-width="148mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>ARTICULO 85</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>REVISAR VIGENCIA Y PORCENTAJES DE PARTICIPACION DEL 100% DE LA ESTRUCTURA SOCIETARIA.</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table>
                                  <fo:table-column column-width="46mm"/>
                                  <fo:table-column column-width="148mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>GARANTIAS</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>REVISAR QUE LAS GARANTIAS SE ENCUENTREN VIGENTES E INGRESADAS EN SISTEMA</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table>
                                  <fo:table-column column-width="46mm"/>
                                  <fo:table-column column-width="148mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>SOLICITUD DE CREDITO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>DEBE CONTENER TODOS LOS DATOS DE: CLIENTE , DE ÉL O LOS AVALES Y DATOS AL CURSE (TASA, MONTO, FECHA 1° VCTO, ETC.)</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table>
                                  <fo:table-column column-width="46mm"/>
                                  <fo:table-column column-width="148mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>VISACIONES</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>LOS ANTECEDENDES SE DEBEN AJUSTAR A NORMATIVA VIGENTE, CON VISACION REFERENCIAL O CALIFICACION 1 Y 2</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                                                
                                <fo:table>
                                  <fo:table-column column-width="46mm"/>
                                  <fo:table-column column-width="148mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>PAGARE</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>PAGARE SEGÚN PRODUCTO Y MONEDA, VIGENTE EN NORMATIVA, FIRMADO POR LAS PERSONAS FACULTADAS (EN SISTEMA DE FIRMAS Y PODERES) PARA SUSCRIBIR PAGARES, LAS FIRMAS DE AVALES SEGÚN APROBACIÓN.</fo:block>
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>COMERCIAL. REVISAR DATOS BASICOS (ESTADO CIVIL Y REGIMEN CONYUGAL CORRECTAMENTE INGRESADOS, EN CASO DE SOCIEDAD CONYUGAL Y PARTICIPACION EN GANANCIALES DEBE INCLUIR FIRMA DE CONYUGE).</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table>
                                  <fo:table-column column-width="46mm"/>
                                  <fo:table-column column-width="148mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>FORMULARIO DE SEGUROS Y DPS</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>DEBE SER COMPLETADO DE PUÑO Y LETRA DEL CLIENTE Y FIRMADO EN LAS MISMAS CONDICIONES QUE UN PAGARE.</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table>
                                  <fo:table-column column-width="46mm"/>
                                  <fo:table-column column-width="148mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>ANEXO RESPONSABILIDAD AVALISTA</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>FIRMAN FORMULARIO INDIVIDUAL, SOLO AVALES PERSONAS NATURALES.</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                                                                                                                
                                
                                <fo:table>
                                  <fo:table-column column-width="46mm"/>
                                  <fo:table-column column-width="148mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>DECLARACION JURADA FOGAPE</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>DOCUMENTO DEBE ESTAR VIGENTE EN NORMATIVA, FIRMADO POR LAS PERSONAS FACULTADAS PARA SUSCRIBIR PAGARES.</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table> 
                                
                                <fo:table>
                                  <fo:table-column column-width="46mm"/>
                                  <fo:table-column column-width="148mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>JUSTIFICACION DE RECURSOS</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 0.5pt gray">
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>CREDITOS COMERCIALES Y MULTILINEAS: ADJUNTAR LOS 6 ULTIMOS IVAS O FACTURAS DE COMPRA Y/O PLANILLAS DE REMUNERACIONES (PREVIRED), LA SUMA DE ESTOS DOCUMENTOS DEBEN SER EL 100% DEL MONTO SOLICITADO.</fo:block>
                                                <fo:block font-family="Helvetica" padding-before="3pt" font-size="6pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>BOLETAS DE GARANTIA: ADJUNTAR LA COPIA DE BOLETA, CONTRATO DE ADJUDICACION O BASES DE LICITACION O CARTA FORMAL DEL BENEFICIARIO CON LOS DATOS DEL DOCUMENTO (MONTO, MONEDA, PLAZO, ETC).</fo:block>
                                        </fo:table-cell>                                       
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                                                 
                                
                                <fo:block font-family="Helvetica" font-weight="bold" font-size="7pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Conforme a la normativa vigente, declaro que los documentos enviados por imagenes son los originales y el Pagaré que estoy adjuntando por imágen es :</fo:block>
                                <fo:block font-family="Helvetica" font-weight="bold" font-size="7pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>(1) El Pagaré Original que respalda solo esta Operación. (2) El Pagaré no tiene enmendaduras y está llenado con bolígrago o lápiz pasta. (3) Las firmas correspondientes han sido validadas y están conforme.</fo:block>
                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                               
					            <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
					            <fo:table-column column-width="100%"/>
					            <fo:table-body>
					              <fo:table-row>
					                <fo:table-cell padding="1mm">
					                  <fo:block font-size="10pt">
					                    <fo:table table-layout="fixed">
					                      <fo:table-column column-width="88mm"/>
					                      <fo:table-column column-width="88mm"/>
					                      <fo:table-body>
					                        <fo:table-row>
					                          <fo:table-cell border="solid 1pt white" >
					                            <fo:block font-size="6pt" text-align="center" start-indent="0.2in">
					                                   _________________________________
					                            </fo:block>
					                            <fo:block font-size="6pt" text-align="center" start-indent="0.3in">
					                                 FIRMA
					                            </fo:block>
					                            <fo:block font-size="6pt" text-align="center" start-indent="0.2in">
					                                RESPONSABLE EJECUTIVO RM
					                            </fo:block>
					                          </fo:table-cell>
					                          
								              <fo:table-cell border="solid 1pt gray" >
								              <fo:block><fo:leader leader-pattern="space" leader-length="10cm"/></fo:block>             
			                                  <fo:table border-collapse="collapse">
                                              <fo:table-column column-width="5mm"/>			                                  
			                                  <fo:table-column column-width="27mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
			                                  <fo:table-column column-width="4mm"/>
			                                  <fo:table-column column-width="50mm"/>
                                              <fo:table-column column-width="1mm"/>                                           
			                                    <fo:table-body>
			                                      <fo:table-row>
			                                        <fo:table-cell >
			                                                <fo:block vertical-align="middle"></fo:block>
			                                        </fo:table-cell>  			
			                                        <fo:table-cell >
			                                                <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
			                                                </fo:block>
			                                        </fo:table-cell>
			                                        <fo:table-cell >
			                                                <fo:block vertical-align="middle"></fo:block>
			                                        </fo:table-cell>
			                                        <fo:table-cell >
			                                                <fo:block font-family="Helvetica" font-size="7pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Se adjunta y revisa Pagaré del Crédito*</fo:block>
			                                        </fo:table-cell>
                                                    <fo:table-cell >
                                                            <fo:block vertical-align="middle"></fo:block>
                                                    </fo:table-cell>            
			                                      </fo:table-row>
			                                    </fo:table-body>
			                                  </fo:table>
                                              <fo:block><fo:leader leader-pattern="space" leader-length="10cm"/></fo:block> 
                                                			                                  
                                              <fo:table border-collapse="collapse">
                                              <fo:table-column column-width="5mm"/>                                           
                                              <fo:table-column column-width="27mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                              <fo:table-column column-width="4mm"/>
                                              <fo:table-column column-width="50mm"/>
                                              <fo:table-column column-width="1mm"/>                                           
                                                <fo:table-body>
                                                  <fo:table-row>
                                                    <fo:table-cell >
                                                            <fo:block vertical-align="middle"></fo:block>
                                                    </fo:table-cell>            
                                                    <fo:table-cell >
                                                            <fo:block font-family="Helvetica" font-size="9pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                            </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell >
                                                            <fo:block vertical-align="middle"></fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell >
                                                            <fo:block font-family="Helvetica" font-size="7pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Se adjunta y revisa Solicitud de Crédito*</fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell >
                                                            <fo:block vertical-align="middle"></fo:block>
                                                    </fo:table-cell>            
                                                  </fo:table-row>
                                                </fo:table-body>
                                              </fo:table>
                           					  <fo:block><fo:leader leader-pattern="space" leader-length="10cm"/></fo:block> 
                           					  
                                                <fo:block font-size="6pt" text-align="center" start-indent="0.2in">
                                                     _____________________________________________  
                                                </fo:block>
                                                <fo:block font-size="7pt" text-align="center" start-indent="0.3in">
                                                     Nombre y Firma JSC/ESC
                                                </fo:block>
         					                   <fo:block><fo:leader leader-pattern="space" leader-length="10cm"/></fo:block> 
         					                   
         					                   <fo:block font-family="Helvetica" font-size="7pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>NOTA *Conforme a la Normativa Vigente, declaro que el pagaré y solicitud que</fo:block>
         					                   <fo:block font-family="Helvetica" font-size="7pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>estoy enviando en valijas son los originales y no tienen enmendaduras.</fo:block>       
								              </fo:table-cell>
					                        </fo:table-row>
					                      </fo:table-body>
					                    </fo:table>
					                  </fo:block>
					                </fo:table-cell>
					              </fo:table-row>
					            </fo:table-body>
					          </fo:table>
                          </fo:flow>
                  </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
