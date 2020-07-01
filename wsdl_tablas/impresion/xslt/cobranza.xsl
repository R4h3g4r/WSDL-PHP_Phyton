<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2011/07/18 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    
    <xsl:param name="IMG_URL"/>
    
    <xsl:template match="cobranza">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">                    
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="20mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            
            <fo:page-sequence master-reference="miCarta" font-size="9pt" font-family="Helvetica">            
                
              <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Helvetica">

		              <fo:table border-collapse="collapse" text-align="right">
		                  <fo:table-column column-width="200mm" />

		                  <fo:table-body text-align="right">
		                      <fo:table-row>
				
		                            <fo:table-cell text-align="right">
		                                    <fo:block >
		                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
		                                        <xsl:attribute name="src">
		                                        <xsl:value-of select="OperacionCredito/logoBciSomosDiferentes"/>
		                                        </xsl:attribute>
		                                      </fo:external-graphic>
		                                    </fo:block>
		                            </fo:table-cell>
		
		                      </fo:table-row>
		                </fo:table-body>
		                </fo:table>
                     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                     
                     <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="center" font-weight="bold">CONDICIONES Y HONORARIOS DE COBRANZA EXTRAJUDICIAL POR EMPRESA EXTERNA</fo:block>
                     
                     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >En base a lo establecido en la Ley de Protecci�n de los Derechos de los Consumidores y en la normativa de la Comisi�n para el Mercado Financiero, se informa al suscrito que existen recargos por concepto de cobranza extrajudicial de cr�ditos o cuotas impagas, incluyendo honorarios a cargo del deudor seg�n los plazos y productos que se indican m�s adelante, los cuales ser�n cobrados por la empresa "Servicios de Normalizaci�n y Cobranzas - Normaliza S.A." en su caso, la que actuar� en nombre y en representaci�n e inter�s del Banco de Cr�dito e Inversiones en las gestiones de cobranza extrajudicial. Dicha cobranza extrajudicial que efectuar� la empresa Servicios de Normalizaci�n y Cobranzas - Normaliza S.A ser� realizada conforme a la Ley, en d�as h�biles y en horario de 8:00 a 20:00 horas. Declaro conocer y desde luego acepto, que seg�n lo establecido en la Ley N� 19.628 sobre Protecci�n de Datos de Car�cter Personal, para que la empresa Servicios de Normalizaci�n y Cobranzas - Normaliza S.A pueda realizar la cobranza extrajudicial, el Banco de Cr�dito e Inversiones suministrar� a dicha empresa antecedentes, tanto respecto de los cr�ditos morosos de sus deudores y otros que no estando en dicha condici�n est�n asociados a �stos, como de los antecedentes comerciales de los deudores, tales como nombres y apellidos, c�dula nacional de identidad, rol �nico tributario, domicilios, direcciones y tel�fonos, etc. Declaro haber recibido, en forma previa al otorgamiento del cr�dito, la informaci�n sobre el c�lculo de honorarios que generan la cobranza extrajudicial de los cr�ditos impagos, as� como copia fiel de este formulario cuyo original suscribo. Las tarifas de honorarios que se expresan a continuaci�n podr�n ser modificadas y en tal caso ser�n informadas a los clientes por carta al domicilio registrado en el Banco, contemplando las condiciones previstas en la legislaci�n vigente.</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">TABLA DE HONORARIOS GENERAL.-</fo:inline></fo:block>
                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Los honorarios por la cobranza </fo:inline>extrajudicial para todos los productos ascender�n a los porcentajes aplicados sobre el total de la deuda o la cuota vencida, seg�n el caso, conforme a la siguiente escala progresiva:</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    
			              <fo:table border-collapse="collapse" text-align="left">                  
			                  <fo:table-column column-width="70,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                                   
			                  <fo:table-column column-width="60.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
			
			                  <fo:table-body>
			                      <fo:table-row>
			
			                            <fo:table-cell >
			                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">MONTO DEUDA O CUOTA MOROSA</fo:block>
			                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Obligaciones hasta 10 Unidades de Fomento</fo:block>
			                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Por la parte que exceda de 10 UF y hasta 50 UF</fo:block>
			                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Por la parte que exceda de 50 UF</fo:block>
			                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			                            </fo:table-cell>
			                            
			                            <fo:table-cell >
			                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">% HONORARIOS</fo:block>                                    
			                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">9%</fo:block>
			                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">6%</fo:block>
			                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">3%</fo:block>                                   
			                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			                            </fo:table-cell>
			
			                      </fo:table-row>                     
			                </fo:table-body>
			              </fo:table>

			              <fo:table border-collapse="collapse" text-align="left">
			                 <fo:table-column column-width="120,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
			              </fo:table>
			              
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
					      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">PLAZOS DE APLICACI�N DE HONORARIOS.-</fo:inline></fo:block>
					      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >1.- CR�DITOS DE CONSUMO / TARJETAS DE CR�DITO - PERSONAS NATURALES.- - Despu�s de transcurridos 15 d�as corridos de atraso (mora) desde el d�a del vencimiento de la obligaci�n.</fo:block>
					      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >2.- CR�DITOS COMERCIALES-GENERAL / TARJETAS DE CREDITO-PERSONAS JURIDICAS - Despu�s de transcurridos 5 d�as corridos de atraso (mora) desde el d�a del vencimiento de la obligaci�n.</fo:block>
					      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >3.- CR�DITOS HIPOTECARIOS - GENERAL.- - Despu�s de transcurridos 5 d�as corridos de atraso (mora) desde el d�a del vencimiento del dividendo.</fo:block>
					      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
							      
							<fo:table border-collapse="collapse" text-align="left">
			                <fo:table-column column-width="58mm" />
			                <fo:table-column column-width="90mm"  />
			                <fo:table-column column-width="17mm"  />
			                <fo:table-column column-width="30mm"  />
			                <fo:table-body>
			                    <fo:table-row>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
			                          </fo:table-cell>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" line-height="4.5mm" font-size="13pt" text-align="left" ><fo:inline><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
			                          </fo:table-cell>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
			                          </fo:table-cell>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.##0","rut")' />-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline></fo:block>
			                          </fo:table-cell>
			
			                    </fo:table-row>
			              </fo:table-body>
			              </fo:table>
			              
						  <fo:table border-collapse="collapse" text-align="left">
			                <fo:table-column column-width="58mm" />
			                <fo:table-column column-width="90mm"  />
			                <fo:table-column column-width="17mm"  />
			                <fo:table-column column-width="30mm"  />
			                <fo:table-body>
			                    <fo:table-row>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
			                          </fo:table-cell>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" ><fo:leader leader-length="8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
			                          </fo:table-cell>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
			                          </fo:table-cell>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
			                          </fo:table-cell>
			
			                    </fo:table-row>
			              </fo:table-body>
			              </fo:table>
			              						  <fo:table border-collapse="collapse" text-align="left">
			                <fo:table-column column-width="58mm" />
			                <fo:table-column column-width="90mm"  />
			                <fo:table-column column-width="17mm"  />
			                <fo:table-column column-width="30mm"  />
			                <fo:table-body>
			                    <fo:table-row>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
			                          </fo:table-cell>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" ><fo:leader leader-length="8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
			                          </fo:table-cell>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
			                          </fo:table-cell>
			
			                          <fo:table-cell >
			                                  <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
			                          </fo:table-cell>
			
			                    </fo:table-row>
			              </fo:table-body>
			              </fo:table>
			              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			              
								    <fo:table border-collapse="collapse" text-align="left">
					                <fo:table-column column-width="20mm" />
					                <fo:table-column column-width="70mm"  />
					                <fo:table-column column-width="50mm"  />
					                <fo:table-column column-width="40mm"  />
					                <fo:table-body>
					                    <fo:table-row>
					
					                          <fo:table-cell >
					                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">Fecha</fo:block>
					                          </fo:table-cell>
					
					                          <fo:table-cell >
					                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/dia" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
						        <xsl:variable name="mes" select="OperacionCredito/mes" />
						              <fo:inline font-weight="bold">
						                  <xsl:if test="$mes = 01">Enero</xsl:if>
						                  <xsl:if test="$mes = 02">Febrero</xsl:if>
						                  <xsl:if test="$mes = 03">Marzo</xsl:if>
						                  <xsl:if test="$mes = 04">Abril</xsl:if>
						                  <xsl:if test="$mes = 05">Mayo</xsl:if>
						                  <xsl:if test="$mes = 06">Junio</xsl:if>
						                  <xsl:if test="$mes = 07">Julio</xsl:if>
						                  <xsl:if test="$mes = 08">Agosto</xsl:if>
						                  <xsl:if test="$mes = 09">Septiembre</xsl:if>
						                  <xsl:if test="$mes = 10">Octubre</xsl:if>
						                  <xsl:if test="$mes = 11">Noviembre</xsl:if>
						                  <xsl:if test="$mes = 12">Diciembre</xsl:if>
						              </fo:inline>
						
					<fo:leader leader-pattern="space" leader-length="1mm"/>del<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/anio" /></fo:inline></fo:block>
                    
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
					                          </fo:table-cell>
					
					                          <fo:table-cell >
					                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">N� Cr�dito/Operaci�n</fo:block>
					                          </fo:table-cell>
					
					                          <fo:table-cell >
					                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
					                          </fo:table-cell>
					
					                    </fo:table-row>
					              </fo:table-body>
					          </fo:table>
					          
			  <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column column-width="100%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma Cliente</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>            
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >ORIGINAL 1 DE 1</fo:block>
              
					          					          					          					         
                </fo:flow>
                </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>