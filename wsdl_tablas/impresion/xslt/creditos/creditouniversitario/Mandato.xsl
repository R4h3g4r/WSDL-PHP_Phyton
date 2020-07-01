<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

   <!-- <xsl:param name="IMG_URL"/> -->

    <xsl:template match="Mandato">
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
                                       					       <xsl:value-of select="MandatoVO/imagePath"/>
                                       					 </xsl:attribute>
                                      			    </fo:external-graphic>                                  
                                    </fo:block>                                  
                            </fo:table-cell>
                      </fo:table-row>                                    
                </fo:table-body>
              </fo:table>
                
			  <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="55mm"/>
                  <fo:table-column column-width="80mm"/>
                  <fo:table-column column-width="55mm"/>                  
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="left" font-weight="bold" line-height="4.5mm" >
                                   </fo:block>                                    
                            </fo:table-cell>
                            <fo:table-cell >
                                   <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="center"  vertical-align="middle" line-height="4.5mm"  border-bottom="1pt solid black"  padding-bottom="3mm"  >
                                    MANDATO   ESPECIAL 
                                    </fo:block>                                                                 
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>                                    
                            </fo:table-cell>                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>              
                              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Don(ña)
</fo:block>
										<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"><xsl:value-of select="MandatoVO/nombre"/>
</fo:block>
			<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>                      
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">R.U.T.: <xsl:value-of select="MandatoVO/rut"/> Expone
</fo:block>
								<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>     
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="6.5mm" >Que viene a conferir Mandato Especial , de acuerdo a lo establecido en el artículo 241 del
Código de Comercio para que con el producto líquido del crédito por un monto de
$ <xsl:value-of select="MandatoVO/monto"/> (<xsl:value-of select="MandatoVO/glosaMonto"/>
pesos) que el Banco de Crédito e Inversiones le otorgará para financiar el valor correspondiente a la
matrícula y/o arancel anual por el concepto de estudios superiores de pregrado, pague en mi nombre
y representación a <xsl:value-of select="MandatoVO/nombreRepresentante"/>,Rut: <xsl:value-of select="MandatoVO/rutRepresentante"/>, la cantidad de
$ <xsl:value-of select="MandatoVO/monto"/> (<xsl:value-of select="MandatoVO/glosaMonto"/>
pesos).
</fo:block>
							
							<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>            
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Asimismo declaro conocer y aceptar que el Banco sólo me otorgará el crédito una vez que se encuentre firmada toda la documentación requerida.
</fo:block>
								<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>                 
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Además, autorizo el cargo en mi Cta. Cte. Nº <xsl:value-of select="MandatoVO/numeroCuentaCorriente"/> en caso que el producto líquido de este crédito se abone a ella.
</fo:block>
								<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>       
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">El mandatario queda liberado de la obligación de rendir cuenta, bastando las informaciones debidamente documentadas que entregue el mandante.
</fo:block>
								<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>      
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">En <xsl:value-of select="MandatoVO/oficina"/> a <xsl:value-of select="MandatoVO/dia"/> de <xsl:value-of select="MandatoVO/mes"/> de <xsl:value-of select="MandatoVO/anyo"/>
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
                  <fo:table-column column-width="60mm"/>
                  <fo:table-column column-width="70mm"/>
                  <fo:table-column column-width="60mm"/>                  
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
