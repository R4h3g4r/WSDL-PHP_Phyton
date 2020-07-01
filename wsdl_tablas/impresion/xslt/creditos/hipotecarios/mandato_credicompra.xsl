<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

   <!-- <xsl:param name="IMG_URL"/> -->

    <xsl:template match="mandato_credicompra">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="20mm" margin-bottom="10mm" margin-left="20mm" margin-right="20mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta">
                <fo:flow flow-name="xsl-region-body">

              <fo:table border-collapse="collapse">
                  <fo:table-column />
                  <fo:table-body>
					<fo:table-row>
                            <fo:table-cell >
                                    <fo:block vertical-align="middle">
							     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                       					 <xsl:attribute name="src">
                                       					       <xsl:value-of select="OperacionCredito/logoBciSomosDiferentes"/>
                                       					 </xsl:attribute>
                                      			    </fo:external-graphic>                                  
                                    </fo:block>                                  
                            </fo:table-cell>
                      </fo:table-row>                                    
                </fo:table-body>
              </fo:table>
                
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>       
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>    
                              
			  <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="50mm"/>
                  <fo:table-column column-width="80mm"/>
                  <fo:table-column column-width="50mm"/>                  
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="left" font-weight="bold" line-height="4.5mm" >
                                   </fo:block>                                    
                            </fo:table-cell>
                            <fo:table-cell >
                                   <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="center"  vertical-align="middle" line-height="4.5mm"   padding-bottom="3mm"  >
                                    MANDATO
                                    </fo:block>                                                                 
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>                                    
                            </fo:table-cell>                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>              
                              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>       
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>       

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body> 
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="8mm" ><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente"/> </fo:inline> Cédula de identidad N° <fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.##0","rut")' />-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline> (por si o en representación de) <fo:leader leader-length="6.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/>, R.U.T N° <fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/>.
</fo:block>
							
                            </fo:table-cell>
                      </fo:table-row>            
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="8mm">Confiero poder al Banco de Crédito e Inversiones, para que con cargo al crédito que me cursará por la suma total de $ <fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/montoCreditoEnPesos, "###.###.##0","decimal")' /></fo:inline>, en mi nombre y representación pague a Incentivos y Promociones Limitada, R.U.T. N° 77.247.680-9, la suma de $ <fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/montoProductoCredicompra, "###.###.##0","decimal")' /> (<xsl:value-of select="OperacionCredito/montoProductoCredicompraManoEscrita"/> pesos)</fo:inline>, correspondiente al precio del producto <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/descripcionProductoCredicompra"/></fo:inline>, que he comprado a la mencionada empresa. La boleta o factura que emita la sociedad vendedora a mi nombre, constituye suficiente rendición de cuentas de la gestión del banco.
</fo:block>
								<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>                                                                                                                                            
                </fo:table-body>
              </fo:table>
              
              
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		
			<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
  
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column height="40mm"/>             
                  <fo:table-body>
						<fo:table-row height="40mm">
							<fo:table-cell display-align="center">
							  <fo:block text-align="center">
							  </fo:block>
							</fo:table-cell>
						  </fo:table-row>				          
                </fo:table-body>
              </fo:table>       
                
			 <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="55mm"/>
                  <fo:table-column column-width="70mm"/>
                  <fo:table-column column-width="65mm"/>                  
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="left" font-weight="bold" line-height="4.5mm" >
                                   </fo:block>                                    
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block border-top="1pt solid black"  padding-top="3mm"  font-family="Helvetica" font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"> FIRMA CLIENTE</fo:block>                                    
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>                                    
                            </fo:table-cell>                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>              
                          
              </fo:flow>
              </fo:page-sequence>




        </fo:root>
    </xsl:template>
</xsl:stylesheet>
