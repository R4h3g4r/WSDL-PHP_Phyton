<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

   <!-- <xsl:param name="IMG_URL"/> -->

    <xsl:template match="CobranzaExterna">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="10mm" margin-left="20mm" margin-right="20mm">
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
                                       					       <xsl:value-of select="CobranzaExternaVO/imagePath"/>
                                       					 </xsl:attribute>
                                      			    </fo:external-graphic>	                                
                                    </fo:block>                                  
                            </fo:table-cell>

                      </fo:table-row>                  
                      <fo:table-row>


                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="center" vertical-align="middle" line-height="4.5mm" ><fo:inline  font-weight="bold">CONDICIONES Y HONORARIOS DE COBRANZA EXTRAJUDICIAL POR EMPRESA EXTERNA</fo:inline> (BANCA PERSONAS - PERSONAS NATURALES Y JURÍDICAS)</fo:block>                                  
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
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">En base a lo establecido en la Ley de Protección de los Derechos de los Consumidores y en la normativa de la Comisión para el Mercado Financiero, se informa al suscrito que existen recargos por concepto de cobranza extrajudicial de créditos o cuotas impagas, incluyendo honorarios a cargo del deudor según los plazos y productos que se indican más adelante, los cuales serán cobrados por la empresa "Servicios de Normalización y Cobranzas - Normaliza S.A." en su caso, la que actuará en nombre y en representación e interés
del Banco de Crédito e Inversiones en las gestiones de cobranza extrajudicial.</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Dicha cobranza extrajudicial que efectuará la empresa de Servicios de Normalización y Cobranzas - Normaliza S.A. será realizada conforme a la Ley, en días hábiles y en horario de 8:00 a 20:00 horas.</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>              

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Declaro conocer y desde luego acepto, que según lo establecido en la Ley Nº 19.628 sobre Protección de Datos de Carácter Personal, para que la empresa Servicios de Normalización y Cobranzas - Normaliza S.A. pueda realizar la cobranza extrajudicial, el Banco de Crédito e Inversiones suministrará a dicha empresa antecedentes, tanto
respecto de los créditos morosos de sus deudores y otros que no estando en dicha condición estén asociados a
éstos, como de los antecedentes comerciales de los deudores, tales como nombres y apellidos, cédula nacional
de identidad, rol único tributario, domicilios, direcciones y teléfonos, etc.</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>     
                            
              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Declaro haber recibido, en forma previa al otorgamiento del crédito, la información sobre el cálculo de honorarios
que generan la cobranza extrajudicial de los créditos impagos, así como copia fiel de este formulario cuyo original
suscribo.</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>     
                            
              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Las tarifas de honorarios que se expresan a continuación podrán ser modificadas y en tal caso serán informadas
a los clientes por carta al domicilio registrado en el Banco, contemplando las condiciones previstas en la
legislación vigente.</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>     
                                   
              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm" text-decoration="underline">TABLA DE HONORARIOS GENERAL.-</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>                                                 
                                            
              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Los honorarios por la cobranza extrajudicial para todos los productos ascenderán a los porcentajes aplicados
sobre el total de la deuda o la cuota vencida, según el caso, conforme a la siguiente escala progresiva:  </fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>                                              
                                            
          
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

 <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="123.9mm"    border-top="0.5pt solid black" border-left="0.5pt solid black"  border-bottom="0.5pt solid black"/>
                  <fo:table-column column-width="40mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm" padding-top="0.5mm" text-decoration="underline">MONTO DEUDA O CUOTA MOROSA</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  line-height="4.5mm"  padding-top="0.5mm" margin-left="1mm">
                                    Obligaciones hasta 10 Unidades de Fomento<fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="left" line-height="4.5mm"  padding-top="0.5mm" margin-left="1mm">
                                    Por la parte que exceda de 10 UF y hasta 50 UF<fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="12pt" text-align="left" line-height="4.5mm"  padding-top="0.5mm" margin-left="1mm">
                                    Por la parte que exceda de 50 UF<fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm" padding-top="0.5mm" text-decoration="underline">% HONORARIOS</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="left" line-height="4.5mm"  padding-top="0.5mm" margin-left="4mm"><xsl:value-of select="CobranzaExternaVO/honorario1"/> %
                                   <fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="left" line-height="4.5mm"   padding-top="0.5mm" margin-left="4mm"><xsl:value-of select="CobranzaExternaVO/honorario2"/> %<fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="left" line-height="4.5mm"   padding-top="0.5mm" margin-left="4mm"><xsl:value-of select="CobranzaExternaVO/honorario3"/> %<fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
            
	</fo:flow>
</fo:page-sequence>

  <fo:page-sequence master-reference="miCarta">
                <fo:flow flow-name="xsl-region-body">
              
                  
              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                  
					<fo:table-row>


                            <fo:table-cell >
                                    <fo:block vertical-align="middle">
						
							     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                       					 <xsl:attribute name="src">
                                       					       <xsl:value-of select="CobranzaExternaVO/imagePath"/>
                                       					 </xsl:attribute>
                                      			    </fo:external-graphic>	                                
                                    </fo:block>                                  
                            </fo:table-cell>

                      </fo:table-row>  
                                        
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm" text-decoration="underline">PLAZOS DE APLICACIÓN DE HONORARIOS.-</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>       
              
              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">1.- CRÉDITOS DE CONSUMO / TARJETAS DE CRÉDITO - PERSONAS NATURALES.-</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>       
                 
              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="5mm" margin-right="2mm" line-height="4.5mm">  - Después de transcurridos 15 días corridos de atraso (mora) desde el día del vencimiento de la
obligación.</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>       
              
              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">2.- CRÉDITOS COMERCIALES-GENERAL / TARJETAS DE CREDITO-PERSONAS JURIDICAS</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>                                                                              

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="5mm" margin-right="2mm" line-height="4.5mm">  - Después de transcurridos 5 días corridos de atraso (mora) desde el día del vencimiento de la
obligación.</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>    
              
              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">3.- CRÉDITOS HIPOTECARIOS - GENERAL.-</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>    

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-left="5mm" margin-right="2mm" line-height="4.5mm">  - Después de transcurridos 5 días corridos de atraso (mora) desde el día del vencimiento del dividendo.</fo:block>
                                    <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>    

			 <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
 
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="50mm"  />
                  <fo:table-column column-width="70mm"/>
                  <fo:table-column column-width="15mm" />
                  <fo:table-column column-width="32mm"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold">NOMBRE O RAZON SOCIAL</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold">REPRESENTANTE LEGAL</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold">REPRESENTANTE LEGAL</fo:block>                                    
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  >
	                                <xsl:value-of select="CobranzaExternaVO/nombre"/>
                                    </fo:block>
                                    <fo:block  font-family="Helvetica" font-size="12pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-length="9cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
                                    <fo:block  font-family="Helvetica" font-size="12pt" text-align="left"  ><fo:leader leader-length="9cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica"  font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold">RUT</fo:block>
                                  <fo:block   font-family="Helvetica"  font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold">RUT</fo:block>
                                  <fo:block   font-family="Helvetica"  font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold">RUT</fo:block>                                  
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm">
                                    <xsl:value-of select="CobranzaExternaVO/rut"/>
                                    
                                    </fo:block>                                                                   
                                    <fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
                                    <fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>                                                                   
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

			<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

		     <fo:table border-collapse="collapse">
                  <fo:table-column column-width="20mm"  />
                  <fo:table-column column-width="70mm"/>
                  <fo:table-column column-width="50mm" />
                  <fo:table-column column-width="35mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >Fecha</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >                                    
                                    <fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold"><xsl:value-of select="CobranzaExternaVO/fecha"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >                                    
                                    <fo:block   font-family="Helvetica" font-size="10pt"   text-align="right" margin-left="1mm" line-height="4.5mm" >N° Crédito/Operación</fo:block>     
                            </fo:table-cell>
                            <fo:table-cell >                                     
									<fo:block   font-family="Helvetica" font-size="10pt"   text-align="right" margin-left="1mm" line-height="4.5mm" font-weight="bold"><xsl:value-of select="CobranzaExternaVO/numeroCredito"/></fo:block>                                                                  
                            </fo:table-cell>
                 </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column height="20mm"/>             
                  <fo:table-body>
						<fo:table-row height="20mm">
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
                                    <fo:block border-top="1pt solid black"  padding-top="3mm"  font-family="Helvetica" font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"> Firma Cliente</fo:block>                                    
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
