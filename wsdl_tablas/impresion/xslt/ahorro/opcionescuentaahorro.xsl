<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  <xsl:param name="imglogo"/>
	<xsl:param name="img1"/>
	<xsl:param name="img2"/>
	<xsl:param name="img4"/>
	<xsl:param name="img5"/>	
  
 	<xsl:decimal-format name="euro"
		   decimal-separator="," grouping-separator="."/>


	<xsl:template match="OpcionesCuentaAhorro/DetalleCuentaAhorroForm">
  
	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format"
      xmlns:fox="http://xml.apache.org/fop/extensions">
      <fo:layout-master-set>
        <fo:simple-page-master margin-right="2.0cm" margin-left="2.0cm" margin-bottom="1.0cm"
          margin-top="1.0cm" page-width="21cm" page-height="29.7cm" master-name="first">
          <fo:region-before extent="1.5cm"/>
          <fo:region-body margin-bottom="1.5cm" margin-top="1.5cm"/>
          <fo:region-after extent="1.0cm"/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="first" language="en" hyphenate="true">
        <fo:flow flow-name="xsl-region-body">
          <fo:table text-align="left" table-layout="fixed">
            <fo:table-column column-width="8.15cm"/>
            <fo:table-column column-width="8.15cm"/>
            <fo:table-body>
            
            <fo:table-row>
		<fo:table-cell number-columns-spanned="2"><fo:block text-align="right">
		  <fo:external-graphic height="54pt" width="117pt" src="url( {$imglogo} )"/></fo:block>
		</fo:table-cell>				
		    </fo:table-row>	                  
              <fo:table-row>
                <fo:table-cell number-rows-spanned="2">
                	<fo:block  font-weight="bold" font-size="12pt" font-family="Arial, Helvetica, sans-serif">
                		Opciones de Ahorro e Inversión
                	</fo:block>
                	 <fo:block space-before.optimum="1.2pt" space-after.optimum="1.2pt" keep-together="always" line-height="15pt" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                  	Nombre: <xsl:value-of select="nombreCliente"/>
                  </fo:block>
                  <fo:block space-before.optimum="1.2pt" space-after.optimum="1.2pt" keep-together="always" line-height="15pt" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                  	RUT: <xsl:value-of select="format-number( rutCliente, '#.##0,#', 'euro')"/>-<xsl:value-of select="dvCliente"/>
                  </fo:block>
                  <fo:block space-before.optimum="1.2pt" space-after.optimum="1.2pt" keep-together="always" line-height="15pt" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                  	Cuenta N°:  <xsl:value-of select="numeroCuentaCliente"/>
                  </fo:block>
                   <fo:block space-before.optimum="1.2pt" space-after.optimum="1.2pt" keep-together="always" line-height="15pt" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                  	Fecha Consulta: <xsl:value-of select="fechaConsulta"/>
                  </fo:block>
                  
                  
                </fo:table-cell>
                <fo:table-cell text-align="right"><fo:block font-size="6pt" font-family="Arial, Helvetica, sans-serif"> </fo:block></fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><fo:inline white-space-collapse="false"> </fo:inline></fo:block></fo:table-cell>
              </fo:table-row>
            </fo:table-body></fo:table>
          <fo:table text-align="left" table-layout="fixed">
            <fo:table-column column-width="16.30cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block>
                    <fo:table text-align="left" table-layout="fixed">
                      <fo:table-column column-width="17.30cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell>
                            <fo:table text-align="left" table-layout="fixed">
                              <fo:table-column column-width="0.16cm"/>
                              <fo:table-column column-width="15.98cm"/>
                              <fo:table-column column-width="0.16cm"/>
                              <fo:table-body>
                                <fo:table-row>
                                  <fo:table-cell>
                                    <fo:external-graphic height="6pt" width="6pt"
                                      src=" url( {$img1} )"/>
                                  </fo:table-cell>
                                  <fo:table-cell background-color="#E7EAF0"> </fo:table-cell>
                                  <fo:table-cell height="6pt">
                                    <fo:external-graphic text-align="end" height="6pt" width="6pt"
                                      src="url( {$img2} )"/>
                                  </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                  <fo:table-cell background-color="#E7EAF0" height="8pt">
                                    <fo:block line-height="8pt" font-size="8pt"
                                      space-before.optimum="1.5pt" space-after.optimum="1.5pt"
                                      keep-together="always">
                                      <fo:inline white-space-collapse="false"> </fo:inline>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell background-color="#E7EAF0" height="8pt">
                                    <fo:block    text-align="left" font-family="Arial, Helvetica, sans-serif" font-size="9pt"></fo:block>
                                    
                                  </fo:table-cell>
                                  <fo:table-cell background-color="#E7EAF0">
                                    <fo:block line-height="8pt" font-size="8pt"
                                      space-before.optimum="1.5pt" space-after.optimum="1.5pt"
                                      keep-together="always">
                                      <fo:inline white-space-collapse="false"> </fo:inline>
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                  <fo:table-cell background-color="#E7EAF0">
                                    <fo:block line-height="12pt" font-size="8pt"
                                      space-before.optimum="1.5pt" space-after.optimum="1.5pt"
                                      keep-together="always">
                                      <fo:inline white-space-collapse="false"> </fo:inline>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:table text-align="left" table-layout="fixed">
                                      <fo:table-column column-width="0.50cm"/>
                                      <fo:table-column column-width="13.00cm"/>                                      
                                      <fo:table-column column-width="0.50cm"/>
                                      <fo:table-body>
                                        <fo:table-row>
                                          <fo:table-cell>
                                            <fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><fo:inline white-space-collapse="false"> </fo:inline></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:table text-align="left" table-layout="fixed" >
                                              <fo:table-column column-width="0.01cm" />
                                              <fo:table-column column-width="3.60cm" />
                                              <fo:table-column column-width="3.60cm"/>
                                              <fo:table-column column-width="3.60cm"/>
                                              <fo:table-column column-width="3.60cm"/>
                                              <fo:table-column column-width="0.01cm" />
                                              <fo:table-body>
                                                <fo:table-row>
                                                  <fo:table-cell> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>                                                  
                                                  <fo:table-cell > <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt">.</fo:block></fo:table-cell>
                                                  <fo:table-cell ><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"></fo:block></fo:table-cell>
                                                  <fo:table-cell ><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"></fo:block></fo:table-cell>
                                                  <fo:table-cell ><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"></fo:block></fo:table-cell>
                                                  <fo:table-cell> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>  
                                                </fo:table-row>
                                                <fo:table-row>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>  
                                                  <fo:table-cell number-columns-spanned="4" background-color="#eeeeee"><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><fo:inline white-space-collapse="false">Detalle </fo:inline></fo:block></fo:table-cell>
                                                  
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>                                         
                                                  
                                                </fo:table-row>
                                                
                                                <fo:table-row>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>
                                                  <fo:table-cell number-columns-spanned="4">
                                                    <fo:table text-align="left" table-layout="fixed">
                                                    <fo:table-column column-width="6.95cm"/>
                                                    <fo:table-column column-width="0.48cm"/>
                                                    <fo:table-column column-width="3.79cm"/>
                                                    
                                                    <fo:table-body>                                       
                                                      <fo:table-row>
                                                        <fo:table-cell number-columns-spanned="3">
                                                          <fo:block  color="#FFFFFF"  line-height="8pt" text-align="right"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">.</fo:block>
                                                        </fo:table-cell>
                                                      </fo:table-row>                                      
                                                      <fo:table-row>
                                                        <fo:table-cell>
                                                          <fo:block text-align="right"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">Número</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block text-align="center"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">:</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block color="#FF0000" font-size="8pt" space-after.optimum="1.5pt">
                                                            <xsl:value-of select="numeroCuentaCliente"/>															
                                                          </fo:block>
                                                        </fo:table-cell>
                                                      </fo:table-row>
                                                      
                                                      
                                                      <fo:table-row>
                                                        <fo:table-cell>
                                                          <fo:block text-align="right"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">Saldo Actual</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block text-align="center"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">:</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block color="#FF0000" font-size="8pt" space-after.optimum="1.5pt">$ 
                                                          
                                                          	<xsl:value-of select="format-number( saldoActual, '#.##0,#', 'euro')"/>
                                                          </fo:block>
                                                        </fo:table-cell>
                                                      </fo:table-row>
                                                      
                                                      <fo:table-row>
                                                        <fo:table-cell>
                                                          <fo:block text-align="right"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">Saldo Contable</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block text-align="center"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">:</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block color="#FF0000" font-size="8pt" space-after.optimum="1.5pt">
                                                          
                                                          	$ <xsl:value-of select="format-number( saldoContable, '#.##0,#', 'euro')"/>
                                                          	
                                                          </fo:block>
                                                        </fo:table-cell>
                                                      </fo:table-row>
                                                      
                                                      
                                                      
                                                      <fo:table-row>
                                                        <fo:table-cell>
                                                          <fo:block text-align="right"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">Retenciones</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block text-align="center"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">:</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block font-size="8pt" space-after.optimum="1.5pt">
                                                          	
                                                          	<xsl:value-of select="format-number( retenciones, '#.##0,#', 'euro')"/>
                                                          </fo:block>
                                                        </fo:table-cell>
                                                      </fo:table-row>
                                                      
                                                      
                                                      
                                                      <fo:table-row>
                                                        <fo:table-cell>
                                                          <fo:block text-align="right"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">Giros realizados</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block text-align="center"
                                                            font-family="Arial, Helvetica, sans-serif"
                                                            font-size="8pt">:</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block  font-size="8pt"
                                                            space-after.optimum="1.5pt">
                                                            
                                                            <xsl:value-of select="format-number( girosRealizados, '#.##0,#', 'euro')"/>
                                                            de 
                                                            <xsl:value-of select="format-number( maxGirosPermitidos, '#.##0,#', 'euro')"/>
                                                            
                                                           </fo:block>
                                                        </fo:table-cell>
                                                      </fo:table-row>
                                                      
                                              
                                                      
                                                      
                                                   
                                                      
                                                      
                                                      
                                                      
                                                      <fo:table-row>
                                                        <fo:table-cell>
                                                          <fo:block line-height="12pt" font-size="8pt"
                                                            space-before.optimum="1.5pt"
                                                            space-after.optimum="1.5pt" keep-together="always">
                                                            <fo:inline white-space-collapse="false"> </fo:inline>
                                                          </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block text-align="center"/>
                                                        </fo:table-cell>
                                                        <fo:table-cell>
                                                          <fo:block line-height="12pt" font-size="8pt"
                                                            space-before.optimum="1.5pt"
                                                            space-after.optimum="1.5pt" keep-together="always">
                                                            <fo:inline white-space-collapse="false"> </fo:inline>
                                                          </fo:block>
                                                        </fo:table-cell>
                                                      </fo:table-row>
                                                    </fo:table-body>
                                                  </fo:table></fo:table-cell>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>
                                                </fo:table-row>
                                                
                                 
                                                <fo:table-row>
                                                  <fo:table-cell background-color="#eeeeee" number-columns-spanned="6"> <fo:block  color="#FFFFFF"  line-height="1pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt">.</fo:block></fo:table-cell>                                                  
                                                                 </fo:table-row>
                                                <fo:table-row>
                                                  <fo:table-cell number-columns-spanned="6"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt">.</fo:block></fo:table-cell>
                                                </fo:table-row>
                                              </fo:table-body></fo:table>
                                           
                                             
										   <fo:block>
											
											
											<fo:table text-align="left" table-layout="fixed">
                                              <fo:table-column column-width="0.01cm" />
                                              <fo:table-column column-width="7.20cm"/>
                                              <fo:table-column column-width="7.20cm"/>
                                              <fo:table-column column-width="0.01cm" />
                                              <fo:table-body>
                                                
												<!--<fo:table-row>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>
                                                  <fo:table-cell background-color="#eeeeee"><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Tipo de AhorroTasa de interes anual</fo:block></fo:table-cell>
                                                  <fo:table-cell background-color="#eeeeee"><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><fo:inline white-space-collapse="false"> </fo:inline></fo:block></fo:table-cell>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>
                                                </fo:table-row>
                                                <fo:table-row>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>
                                                  <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Gran Ahorro clasico</fo:block></fo:table-cell>
                                                  <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">UF+<xsl:value-of select="ahorroclasico"/>%</fo:block></fo:table-cell>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell> 
                                                </fo:table-row>
                                                <fo:table-row>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>
                                                  <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Gran Ahorro plus</fo:block></fo:table-cell>
                                                  <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">UF+<xsl:value-of select="ahorroplus"/>%</fo:block></fo:table-cell>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>                                                  
                                                 </fo:table-row>
                                                <fo:table-row>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>                                                  
                                                  <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Mas ahorro </fo:block></fo:table-cell>
                                                  <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"> UF+<xsl:value-of select="masahorro"/>%</fo:block></fo:table-cell>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>                                                  
                                                </fo:table-row>
                                                <fo:table-row>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>                                                  
                                                  <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Pop ahorro </fo:block></fo:table-cell>
                                                  <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"> UF+<xsl:value-of select="popahorro"/>%</fo:block></fo:table-cell>
                                                  <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>                                                  
                                                  
                                                </fo:table-row> -->
                                                <fo:table-row>
                                                  <fo:table-cell background-color="#eeeeee" number-columns-spanned="4"> <fo:block  color="#FFFFFF"  line-height="1pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt">.</fo:block></fo:table-cell>                                                  
                                                </fo:table-row>
                                                <fo:table-row>
                                                  <fo:table-cell number-columns-spanned="4"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt">.</fo:block></fo:table-cell>
                                                  
                                         
                                                </fo:table-row>
                                                <fo:table-row>
                                                  <fo:table-cell number-columns-spanned="4"> 
                                                    <fo:table text-align="left" table-layout="fixed" >
                                                      <fo:table-column column-width="0.01cm" />
                                                      <fo:table-column column-width="3.10cm" />
                                                      <fo:table-column column-width="3.10cm"/>
                                                      <fo:table-column column-width="2.60cm"/>
                                                      <fo:table-column column-width="5.60cm"/>
                                                      <fo:table-column column-width="0.01cm" />
                                                      <fo:table-body>
                                                        <fo:table-row>
                                                          <fo:table-cell> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>                                                  
                                                          <fo:table-cell > <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt">.</fo:block></fo:table-cell>
                                                          <fo:table-cell ><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"></fo:block></fo:table-cell>
                                                          <fo:table-cell ><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"></fo:block></fo:table-cell>
                                                          <fo:table-cell ><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"></fo:block></fo:table-cell>
                                                          <fo:table-cell> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>  
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                          <fo:table-cell background-color="#cccccc"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>  
                                                          <fo:table-cell number-columns-spanned="4" background-color="#cccccc"><fo:block text-align="left"  line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Movimientos</fo:block></fo:table-cell>
                                                                <fo:table-cell background-color="#cccccc"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>                                         
                                                          
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                          <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>  
                                                          <fo:table-cell background-color="#eeeeee"><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Fecha</fo:block></fo:table-cell>
                                                          <fo:table-cell background-color="#eeeeee"><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Operación</fo:block></fo:table-cell>
                                                          <fo:table-cell background-color="#eeeeee"><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Monto</fo:block></fo:table-cell>
                                                          <fo:table-cell background-color="#eeeeee">
                                                          	<fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                                          		
                                                          	</fo:block>
                                                          </fo:table-cell>
                                                          <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>                                         
                                                          
                                                        </fo:table-row>
                                                        
                                                        <xsl:apply-templates select="movimientosCuenta/movimientosCuenta_objecto"/>
                                                        
                                                        <fo:table-row>
                                                          <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>
                                                          <fo:table-cell number-columns-spanned="3"><fo:block text-align="end" font-size="8pt"> </fo:block></fo:table-cell>
                                                          <fo:table-cell number-columns-spanned="1"><fo:block text-align="left" font-size="8pt" >
								
								
								</fo:block></fo:table-cell>
                                                          <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                          <fo:table-cell background-color="#eeeeee" number-columns-spanned="6"> <fo:block  color="#FFFFFF"  line-height="1pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt">.</fo:block></fo:table-cell>                                                  
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                          <fo:table-cell number-columns-spanned="6"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt">.</fo:block></fo:table-cell>
                                                        </fo:table-row>
                                                      </fo:table-body></fo:table>
                                                  </fo:table-cell>
                                                </fo:table-row>
                                                <fo:table-row>
                                                  <fo:table-cell number-columns-spanned="4"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt">.</fo:block></fo:table-cell>
                                                  
                                                  
                                                </fo:table-row>
                                              </fo:table-body></fo:table></fo:block>
                                          
										    
										  
										  
										  </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block></fo:block>
                                          </fo:table-cell>
                                        </fo:table-row>
                                       
                                      </fo:table-body>
                                    </fo:table>
                                  </fo:table-cell>
                                  <fo:table-cell background-color="#E7EAF0">
                                    <fo:block line-height="12pt" font-size="8pt"
                                      space-before.optimum="1.5pt" space-after.optimum="1.5pt"
                                      keep-together="always">
                                      <fo:inline white-space-collapse="false"> </fo:inline>
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                  <fo:table-cell background-color="#E7EAF0">
                                    <fo:external-graphic height="6pt" width="6pt"
                                      src="url( {$img4} )"/>
                                  </fo:table-cell>
                                  <fo:table-cell background-color="#E7EAF0"/>
                                  <fo:table-cell background-color="#E7EAF0">
                                    <fo:external-graphic height="6pt" width="6pt"
                                      src="url( {$img5} ) "/>
                                  </fo:table-cell>
                                </fo:table-row>
                              </fo:table-body>
                            </fo:table>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                <fo:block space-before.optimum="1.2pt" space-after.optimum="1.2pt" keep-together="always" line-height="15pt" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                  	<xsl:value-of select="mensajeAhorro"/>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>

  </xsl:template>
  
  <xsl:template match="movimientosCuenta/movimientosCuenta_objecto" >
    <fo:table-row>
      <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>
      <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="fecha"/></fo:block></fo:table-cell>
      <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="descripcion"/></fo:block></fo:table-cell>
      <fo:table-cell><fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
      
         $<xsl:value-of select="format-number( valor, '#.##0,#', 'euro')"/>
      
      
      </fo:block></fo:table-cell>
      <fo:table-cell>
      	<fo:block line-height="10pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"> 
      		
      	</fo:block>
      </fo:table-cell>
      <fo:table-cell background-color="#eeeeee"> <fo:block  color="#FFFFFF"  line-height="10pt" text-align="right" font-family="Arial, Helvetica, sans-serif" font-size="8pt"></fo:block></fo:table-cell>
    </fo:table-row>
  </xsl:template>
  
</xsl:stylesheet>
