<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  	<xsl:param name="imglogo"/>
  	<xsl:param name="img1"/>
	<xsl:param name="img2"/>
	<xsl:param name="img3"/>
  	<xsl:param name="img4"/>
	<xsl:param name="img5"/>
	<xsl:param name="img6"/>
	
	<xsl:decimal-format name="euro"
		   decimal-separator="," grouping-separator="."/>

	
  <xsl:template match="DepositoCuentaAhorro/DepositarCuentaAhorroForm">
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
            <fo:table-column column-width="16.30cm"/>
            <fo:table-body>
             
              <fo:table-row>
                <fo:table-cell>
                  <fo:block>
                    <fo:table text-align="left" table-layout="fixed">
                      <fo:table-column column-width="16.30cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell>
                            <fo:table text-align="left" table-layout="fixed">
                              <fo:table-column column-width="0.16cm"/>
                              <fo:table-column column-width="15.98cm"/>
                              <fo:table-column column-width="0.16cm"/>                              
                              <fo:table-body>
                              <fo:table-row>
				<fo:table-cell number-columns-spanned="3"><fo:block text-align="right">
				  <fo:external-graphic height="54pt" width="117pt"    src="url( {$imglogo} )"/></fo:block>
				</fo:table-cell>				
                                </fo:table-row>
                                <fo:table-row>
			              <fo:table-cell number-columns-spanned="3"><fo:block  color="#FFFFFF" font-size="36pt" font-family="Arial, Helvetica, sans-serif">.</fo:block></fo:table-cell>             
              			</fo:table-row>
                                <fo:table-row>
                                  <fo:table-cell>
                                    <fo:external-graphic height="6pt" width="6pt"    src="url( {$img1} )"/>
                                  </fo:table-cell>
                                  <fo:table-cell background-color="#E7EAF0"> </fo:table-cell>
                                  <fo:table-cell height="6pt">
                                    <fo:external-graphic text-align="end" height="6pt" width="6pt"     src="url( {$img2} )"/>
                                  </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                  <fo:table-cell background-color="#E7EAF0" height="18pt">
                                    <fo:block line-height="12pt" font-size="8pt"
                                      space-before.optimum="1.5pt" space-after.optimum="1.5pt"
                                      keep-together="always">
                                      <fo:inline white-space-collapse="false"> </fo:inline>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell background-color="#E7EAF0" height="18pt">
                                    <fo:block text-align="start">Comprobante de Depósito en Cuenta de
                                      Ahorro </fo:block>
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
                                    <fo:block line-height="12pt" font-size="8pt"
                                      space-before.optimum="1.5pt" space-after.optimum="1.5pt"
                                      keep-together="always">
                                      <fo:inline white-space-collapse="false"> </fo:inline>
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:table text-align="left" table-layout="fixed">
                                      <fo:table-column column-width="4.95cm"/>
                                      <fo:table-column column-width="0.48cm"/>
                                      <fo:table-column column-width="4.79cm"/>
                                      <fo:table-column column-width="5.75cm"/>
                                      <fo:table-body>
                                        <fo:table-row>
                                          <fo:table-cell number-columns-spanned="4">
                                            <fo:table text-align="left" table-layout="fixed">
                                              <fo:table-column column-width="9.90cm"/>
                                              <fo:table-column column-width="6.07cm"/>
                                              <fo:table-body>
                                                <fo:table-row>
                                                  <fo:table-cell>
                                                  <fo:block>
                                                  <fo:inline font-size="6pt"/>
                                                  </fo:block>
                                                  <fo:block>
                                                  <fo:inline font-size="8pt">COMPROBANTE N°</fo:inline>
                                                  <fo:inline color="#05953E" font-size="8pt">
                                                  <xsl:value-of select="codigoComprobante"/>
                                                  </fo:inline>
                                                  </fo:block>
                                                
                                                  
                                                  
                                                  
                                                  
                                                  <fo:block>
                                                    <!-- <fo:inline font-size="6pt">
						
                                                     -->  
						   <fo:inline font-size="6pt">
							<xsl:value-of select="fecha"/> 
						    </fo:inline>	
						
                                                  </fo:block>
                                                  <fo:block>
                                                  <fo:inline font-size="6pt"/>
                                                  </fo:block>
                                                  </fo:table-cell>
                                                  <fo:table-cell> </fo:table-cell>
                                                </fo:table-row>
                                              </fo:table-body>
                                            </fo:table>
                                          </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                          <fo:table-cell number-columns-spanned="4">
                                            <fo:block  color="#FFFFFF"  line-height="30pt" text-align="right"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">.</fo:block>
                                          </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                          <fo:table-cell>
                                            <fo:block text-align="right"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">Cliente</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block text-align="center"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">:</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block font-size="8pt" space-after.optimum="1.5pt">
                                              <xsl:value-of select="nombreCliente"/>
                                            </fo:block>
                                          </fo:table-cell>
                                          
                                          <fo:table-cell number-rows-spanned="7">
                                            <fo:block text-align="start">
                                              <fo:external-graphic text-align="absmiddle"
                                                height="197pt" width="199pt" src="url( {$img3} )"/>
                                            </fo:block>
                                          </fo:table-cell>
                                          
                                          
                                        </fo:table-row>
                                        <fo:table-row>
                                          <fo:table-cell>
                                            <fo:block text-align="right"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">R.U.T.</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block text-align="center"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">:</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block font-size="8pt" space-after.optimum="1.5pt">
                                              <xsl:value-of select="format-number( rutCliente, '#.##0,#', 'euro')"/>
					      -<xsl:value-of select="dvCliente"/>
                                            </fo:block>
                                          </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                          <fo:table-cell>
                                            <fo:block text-align="right"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">Número de Cuenta de Ahorro</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block text-align="center"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">:</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block font-size="8pt" space-after.optimum="1.5pt"
                                              ><xsl:value-of select="numeroCuentaAhorro"/></fo:block>
                                          </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                          <fo:table-cell>
                                            <fo:block text-align="right"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">Número de Cuenta de Cargo</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block text-align="center"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">:</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block font-size="8pt" space-after.optimum="1.5pt"
                                              ><xsl:value-of select="cuentaClienteCargo"/></fo:block>
                                          </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                          <fo:table-cell>
                                            <fo:block text-align="right"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">Monto del Depósito</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block text-align="center"
                                              font-family="Arial, Helvetica, sans-serif"
                                              font-size="8pt">:</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block color="#FF0000" font-size="8pt"
                                              space-after.optimum="1.5pt">
                                              
                                              $<xsl:value-of select="format-number( montoDeposito, '#.##0,#', 'euro')"/>
                                              
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
                                      src="url( {$img5} )" />
                                  </fo:table-cell>
                                </fo:table-row>
                              </fo:table-body>
                            </fo:table>
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
