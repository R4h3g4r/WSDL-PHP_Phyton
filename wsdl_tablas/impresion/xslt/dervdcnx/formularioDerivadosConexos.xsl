<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

			<xsl:template match="derivadosConexos">
                <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
                        <fo:layout-master-set>
                               <fo:simple-page-master master-name="pagina" page-height="22cm"
								   page-width="34cm"
								   margin-top="10mm"
								   margin-bottom="10mm"
								   margin-left="20mm"
								   margin-right="20mm">
                                       <fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/>
                                       <fo:region-before extent="3cm"/>
                                       <fo:region-after extent="0.5cm"/>
                               </fo:simple-page-master>
                        </fo:layout-master-set>
                        <fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
                               <fo:static-content flow-name="xsl-region-before">
                                       <fo:block space-after="1mm">
                                               <fo:table table-layout="fixed">
                                                       <fo:table-column column-width="13cm"/>
                                                       <fo:table-column column-width="5cm"/>
                                                       <fo:table-body>
                                                               <fo:table-row>
                                                                       <fo:table-cell>
                                                                              <fo:external-graphic>
																					  <xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/img/logoBci.gif')</xsl:attribute>
                                                                              </fo:external-graphic>
                                                                       </fo:table-cell>
                                                               </fo:table-row>
                                                       </fo:table-body>
                                               </fo:table>
                                       </fo:block>
                               </fo:static-content>
                               <fo:static-content flow-name="xsl-region-after">
                                       <fo:block font-size="7pt" font-weight="bold" space-after="1mm" text-align="right">
                                               Pagina <fo:page-number/>
                                       </fo:block>
                               </fo:static-content>
                               <fo:flow flow-name="xsl-region-body" font-family="Helvetica, Arial, sans" font-size="7pt" text-align="justify">
                                       <xsl:call-template name="contenido"/>
                               </fo:flow>
                        </fo:page-sequence>
                </fo:root>
        </xsl:template>

			
			<xsl:template name="contenido">


				
					
					<xsl:if test="rutEntrada!=0">
						<fo:block  text-align="right">              	
							Rut: <xsl:value-of disable-output-escaping="no" select="rutEntrada"/>-<xsl:value-of disable-output-escaping="no" select="dvEntrada"/>
						</fo:block>
					</xsl:if>
					<xsl:if test="numero!=''">
						<fo:block  text-align="right">              	
							N°Operación: <xsl:value-of disable-output-escaping="no" select="numero"/>
						</fo:block>
					</xsl:if>
					<xsl:if test="id!=''">
						<fo:block  text-align="right">              	
							Operador: <xsl:value-of disable-output-escaping="no" select="id"/>
						</fo:block>
					</xsl:if>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" font-size="20pt" text-align="left">
                    	Derivados Conexos
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table  border="solid">                     
						   <fo:table-column column-number="1" column-width="25mm" border="solid" border-width="1pt"/>                                              
						   <fo:table-column column-number="2" column-width="20mm" border="solid" border-width="1pt"/>
						   <fo:table-column column-number="3" column-width="30mm" border="solid" border-width="1pt"/>
						   <fo:table-column column-number="4" column-width="25mm" border="solid" border-width="1pt"/> 
						   <fo:table-column column-number="5" column-width="35mm" border="solid" border-width="1pt"/> 
						   <fo:table-column column-number="6" column-width="15mm" border="solid" border-width="1pt"/> 
						   <fo:table-column column-number="7" column-width="30mm" border="solid" border-width="1pt"/>  
						   <fo:table-column column-number="8" column-width="30mm" border="solid" border-width="1pt"/>
						   <fo:table-column column-number="9" column-width="20mm" border="solid" border-width="1pt"/>
						   <fo:table-column column-number="10" column-width="35mm" border="solid" border-width="1pt"/>
						   <fo:table-column column-number="11" column-width="15mm" border="solid" border-width="1pt"/>
						   <fo:table-column column-number="12" column-width="20mm" border="solid" border-width="1pt"/>
						   <fo:table-body>
							  <fo:table-row border-style="double" height="5mm"  border-width="1pt">   
								<fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="center"> Rut</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="center"> Tipo</fo:block>
								 </fo:table-cell>                     
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block text-align="center">Operación Derivado</fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="4" border="solid"> 
									<fo:block text-align="center">Fecha Vencimiento Derivado</fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="5" border="solid"> 
									<fo:block text-align="center">Monto Derivado</fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="6" border="solid"> 
									<fo:block text-align="center">Moneda Derivado</fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="7" border="solid"> 
									<fo:block text-align="center">Operación Colocación</fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="8" border="solid"> 
									<fo:block text-align="center">Producto</fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="9" border="solid"> 
									<fo:block text-align="center">Fecha Cruce</fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="10" border="solid"> 
									<fo:block text-align="center">Monto Colocación</fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="11" border="solid"> 
									<fo:block text-align="center">Moneda Colocación</fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="12" border="solid"> 
									<fo:block text-align="center">Operador</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  <xsl:for-each select="derivados/conexo">
								  <fo:table-row border="double" height="7mm" border-width="1pt">                         
									 <fo:table-cell column-number="1" border="solid">                            
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="rut"/> </fo:block>
									 </fo:table-cell>
									 <fo:table-cell column-number="2" border="solid">                            
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="tipo"/> </fo:block>
									 </fo:table-cell>                         
									 <fo:table-cell column-number="3" border="solid"> 
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="numeroDerivado"/> </fo:block>                        
									 </fo:table-cell>
									 <fo:table-cell column-number="4" border="solid"> 
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="fechaVencimientoDerivado"/> </fo:block>                       
									 </fo:table-cell>
									 <fo:table-cell column-number="5" border="solid"> 
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="montoDerivado"/> </fo:block>                     
									 </fo:table-cell>
									 <fo:table-cell column-number="6" border="solid"> 
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="monedaDerivado"/> </fo:block>                     
									 </fo:table-cell>
									 <fo:table-cell column-number="7" border="solid"> 
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="numeroColocacion"/> </fo:block>                      
									 </fo:table-cell>
									 <fo:table-cell column-number="8" border="solid"> 
										<fo:block text-align="left"> <xsl:value-of disable-output-escaping="no" select="producto"/> </fo:block>                      
									 </fo:table-cell>
									 <fo:table-cell column-number="9" border="solid"> 
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="fechaCruce"/> </fo:block>                        
									 </fo:table-cell>
									 <fo:table-cell column-number="10" border="solid"> 
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="montoColocacion"/> </fo:block>                       
									 </fo:table-cell>
									 <fo:table-cell column-number="11" border="solid"> 
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="monedaColocacion"/> </fo:block>                      
									 </fo:table-cell>
									 <fo:table-cell column-number="12" border="solid"> 
										<fo:block text-align="right"> <xsl:value-of disable-output-escaping="no" select="ejecutivo"/> </fo:block>                        
									 </fo:table-cell>
								  </fo:table-row>
							  </xsl:for-each>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					
	</xsl:template>

</xsl:stylesheet>