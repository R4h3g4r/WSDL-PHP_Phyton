<?xml version="1.0" encoding="ISO-8859-1"?>   
 
<!DOCTYPE xml [<!ENTITY copy "&#169;"> <!ENTITY trade "&#8482;"> <!ENTITY deg "&#x00b0;"> <!ENTITY gt "&#62;"> <!ENTITY sup2 "&#x00b2;"> <!ENTITY frac14 "&#x00bc;"> <!ENTITY quot "&#34;"> <!ENTITY frac12 "&#x00bd;"> <!ENTITY euro "&#x20ac;"> <!ENTITY Omega "&#937;"> ]> <!-- Document generated with XSLfast v2.0 alpha -->
	
<xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print" >
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosPropuesta">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="paginaPrimera" page-height="290mm" page-width="200mm" margin-left="0mm" margin-right="0mm" margin-top="0mm" margin-bottom="0mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPrimera" extent="0cm"/>
					<fo:region-after extent="0cm" margin-top="0cm" margin-bottom="0cm"/>
					</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaResto" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoResto" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
					<!--<fo:region-after region-name="regionPieResto" extent="1.5cm" precedence="true"/>-->
				</fo:simple-page-master>
				<fo:simple-page-master master-name="paginaPropuesta" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPropuesta" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>
				<fo:simple-page-master master-name="paginaCertificado" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoCertificado" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>
				<fo:page-sequence-master master-name="masterSequenceName1">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="paginaPrimera" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="paginaResto" page-position="rest"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
				<fo:page-sequence-master master-name="masterSequenceName2">
					<fo:repeatable-page-master-reference master-reference="paginaPropuesta" />
				</fo:page-sequence-master>
				<fo:page-sequence-master master-name="masterSequenceName3">
					<fo:repeatable-page-master-reference master-reference="paginaResto" />
				</fo:page-sequence-master>
				<fo:page-sequence-master master-name="masterSequenceName4">
					<fo:repeatable-page-master-reference master-reference="paginaCertificado" />
				</fo:page-sequence-master>
			</fo:layout-master-set>
			
				<fo:page-sequence master-name="paginaPrincipal" master-reference="masterSequenceName1">
					<fo:static-content flow-name="regionEncabezadoPrimera">
						<fo:block font-size="11pt" color="#000000"></fo:block>
					</fo:static-content>
					<fo:static-content flow-name="regionEncabezadoResto">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(80)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt" color="#000000">
											<xsl:text>COPIA CLIENTE</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
											<fo:block  text-align="right" font-size="11pt" color="#4D6175">
												PROPUESTA DE SEGURO Nro 
													<xsl:value-of select="Cotizacion/numeroPropuesta"/>
												 (continuaci�n)
												  - 
												 P�gina <fo:page-number/>
											</fo:block>
										</xsl:if>
										<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
											<fo:block  text-align="right" font-size="11pt">
												POLIZA DE SEGURO Nro 
												<xsl:value-of select="DatosPoliza/numeroPoliza"/>-<xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/>
										    	(continuaci�n)
												- 
												P�gina <fo:page-number/>
											</fo:block>
										</xsl:if>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:static-content>
					
					
					<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
						<fo:block >
			
		<xsl:choose>
			<xsl:when test="(cobertura/flagPT = 'S')">
				<fo:block				
			        background-position="center"
			        background-color="white"
			        background-repeat="no-repeat">
					<xsl:attribute name="background-image">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/Hoja_resumen_sl_crecorte.jpg')</xsl:attribute>
					<fo:table table-layout="fixed" width="100%">
			            <fo:table-column column-width="proportional-column-width(57)"/>
						<fo:table-body>
							<fo:table-row>
		                        <fo:table-cell>
		                           <fo:block>
								       <xsl:call-template name="temp_hoja_resumen_PT" />
						           </fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>					
				</fo:block>				
				<fo:block>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(57)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block >
										<xsl:call-template name="temp_da_salto_pag"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>				
		</xsl:when>
		<xsl:otherwise>
			<fo:block				
		        background-position="center"
		        background-color="white"
		        background-repeat="no-repeat">
				<xsl:attribute name="background-image">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/Hoja_resumen_sl_crecorte.jpg')</xsl:attribute>
					<fo:table table-layout="fixed" width="100%">
			            <fo:table-column column-width="proportional-column-width(57)"/>
						<fo:table-body>
							<fo:table-row>
		                        <fo:table-cell>
		                           <fo:block>
								       <xsl:call-template name="temp_hoja_resumen" />
						           </fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>				
				<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_da_salto_pag"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
			</fo:block>
		</xsl:otherwise>
	</xsl:choose>
			
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<xsl:call-template name="temp_datos_logos_cabecera"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

<!-- xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )"-->
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:choose>
									<xsl:when test="(cobertura/flagPT = 'S')">
										<xsl:call-template name="temp_datos_ejecutivo_propuesta"/>				
									</xsl:when>
									<xsl:otherwise>
										<xsl:call-template name="temp_datos_ejecutivo"/>
									</xsl:otherwise>
							</xsl:choose>
							
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
<!-- /xsl:if -->
		
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloPrincipal"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloContratante"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	<fo:block padding-before="4pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosContratante"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloAFavor"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	<fo:block padding-before="4pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosAFavor"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloMateriaAsegurada"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	

	<fo:block padding-before="4pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<xsl:call-template name="temp_datosMateriaAsegurada" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
 	
	<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_da_salto_pag"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
	</fo:block> 
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloUso"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosUso"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<xsl:if test="(  materiaAsegurada/conduccionExclusiva = 'SI')">
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_tituloConductorHabitual"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>	
		<fo:block padding-before="6pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>
								<xsl:call-template name="temp_datosConductorHabitual" />
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:if>
	<!-- 
	<xsl:if test="( materiaAsegurada/condicionInspeccion = '2')">
		<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_da_salto_pag"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
	</xsl:if>
	-->

	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloPrimas"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosPrimas"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="6pt">
	    <fo:table table-layout="fixed" width="100%">
	            <fo:table-column column-width="proportional-column-width(57)"/>
	            <fo:table-body>
	                    <fo:table-row>
	                            <fo:table-cell>
	                                    <fo:block >	                                    	
	                                    	<xsl:if test="not(contains(tarifa/descripcion, 'Ampliada'))">
	                                        <xsl:call-template name="temp_coberturaProductos"/>
	                                        </xsl:if>
	                                    </fo:block>
	                            </fo:table-cell>
	                    </fo:table-row>
	            </fo:table-body>
	    </fo:table>
    </fo:block>
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloCoberturas"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosCoberturas"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
		
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloDeducibles"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosDeducibles"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloVigencia"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosVigencia"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloResponsablePago"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosResponsablePago"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	
	 
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloPrimerPago"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	
	 
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosPrimerPago"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	

	 
    <fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloFuturosPagos"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosFuturosPagos"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block> 
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloFactura"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	 
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosFactura"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloEnvioPoliza"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	 
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosEnvioPoliza"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_textoBasico"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
		
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
								<xsl:call-template name="temp_declaraciones_especiales"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_mandato"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>		
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_consultas_reclamos"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	
	
	  <fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_codigo_autorregulacion"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_diversificacion_riesgo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	

	<fo:block padding-before="38pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_firmas_poliza"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	
	
	                   <!-- Plan de pagos -->
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
	                           <fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
	                                   <fo:table-cell>
	                                       <fo:block>
	                                       	<xsl:if test="(detallePago/indicadorFuturosPagos = 'SI')">
	                                           <xsl:call-template name="temp_textosPlanDePago" />
	                                           </xsl:if>
						</fo:block>
					</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	                   <!-- FIN Plan de pagos -->
					   
	<!-- Formulario liquidacion procedimientos siniestros -->	
	
	<xsl:if test="( DatosPoliza/condicionPoliza = 'SI')">		
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_da_salto_pag"/>
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_anterior_a_liquidacion_siniestro" />
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_liquidacion_siniestro" />
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
			</fo:table>
		</fo:block>		
	</xsl:if>	
	
	<!-- FIN Formulario liquidacion procedimientos siniestros -->
	
</fo:block>
					</fo:flow>
				</fo:page-sequence>


					<!-- *************************************************************************************************************** -->
					<!-- ********************************************************************************* ***************************** -->
					<!-- *************************************************************************************************************** -->
					<!-- **************************************************** PROPUESTA DE SEGUROS ************************************* -->
					<!-- *************************************************************************************************************** -->
					<!-- *************************************************************************************************************** -->
				
				
				<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">

				<fo:page-sequence master-name="paginaPropuesta" master-reference="masterSequenceName2">
					<fo:static-content flow-name="regionEncabezadoPropuesta">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(80)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt" color="#000000">
											<xsl:text>COPIA CORREDORA</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
											<fo:block  text-align="right" font-size="11pt" color="#4D6175">
												PROPUESTA DE SEGURO Nro 
													<xsl:value-of select="Cotizacion/numeroPropuesta"/>
												 (continuaci�n)
												  - 
												 P�gina <fo:page-number/>
											</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:static-content>

					
					<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
					<fo:block>
					<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<!-- <xsl:call-template name="temp_da_salto_pag"/> -->
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

																		
                        <fo:block padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
                            <fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
                                        <fo:table-cell>
                                        <fo:block >
                                            <xsl:call-template name="temp_datos_logos_cabecera_propuesta"/>
											</fo:block>
										</fo:table-cell>
                                    </fo:table-row>
								</fo:table-body>
							</fo:table>
                    </fo:block>
						
						<fo:block padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
				            <fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
				                    <fo:table-cell>
				                        <fo:block >
				                            <xsl:call-template name="temp_datos_ejecutivo_propuesta"/>
											</fo:block>
										</fo:table-cell>
				                </fo:table-row>
				            </fo:table-body>
				        </fo:table>
											</fo:block>
                    <fo:block padding-before="2pt">
                        <fo:table table-layout="fixed" width="100%">
                            <fo:table-column column-width="proportional-column-width(57)"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:call-template name="temp_tituloPrincipalPropuesta"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					
					<fo:block span="none" padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(30)" background-color="#FFFFFF"/>
						<fo:table-column column-width="proportional-column-width(70)" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Nro POLIZA</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of select="DatosPoliza/numeroPoliza"/><xsl:text>-</xsl:text><xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloContratante"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosContratante"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloAFavor"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block padding-before="4pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosAFavor"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloMateriaAsegurada"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>	
				
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<xsl:call-template name="temp_datosMateriaAsegurada" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_da_salto_pag"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block> 				
					
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloUso"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosUso"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloPrimas"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosPrimas"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!--<fo:block padding-before="2pt">
                        <fo:table table-layout="fixed" width="100%">
                            <fo:table-column column-width="proportional-column-width(57)"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block >
                                            <xsl:call-template name="temp_da_salto_pag"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
			        </fo:block>-->
                    <fo:block padding-before="6pt">
                        <fo:table table-layout="fixed" width="100%">
                            <fo:table-column column-width="proportional-column-width(57)"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block >
	                                    	<xsl:if test="not(contains(tarifa/descripcion, 'Ampliada'))">
                                            <xsl:call-template name="temp_coberturaProductos"/>
	                                        </xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                   </fo:block>

					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloCoberturas"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosCoberturas"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloDeducibles"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosDeducibles"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloVigencia"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosVigencia"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloResponsablePago"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosResponsablePago"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloPrimerPago"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>	
					 
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosPrimerPago"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>	
					
					
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloFuturosPagos"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosFuturosPagos"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
		
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_mandato"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
										<fo:block >
                                                <xsl:call-template name="temp_mandato_autorizacion" />
										</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
						</fo:table>
					</fo:block>
					
					<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
						<fo:block padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block >
												<xsl:call-template name="temp_clausula_renov_auto"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>	
					</xsl:if>
					
					<fo:block padding-before="38pt">
				        <fo:table table-layout="fixed" width="100%">
				            <fo:table-column column-width="proportional-column-width(57)"/>
				            <fo:table-body>
				                <fo:table-row>
				                    <fo:table-cell>
				                        <fo:block >
				                            <xsl:call-template name="temp_firmas_propuesta"/>
				                        </fo:block>
				                    </fo:table-cell>
				                </fo:table-row>
				            </fo:table-body>
				        </fo:table>
				    </fo:block>
					
					<!-- Plan de pagos -->
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<xsl:if test="(detallePago/indicadorFuturosPagos = 'SI' )">
												<xsl:call-template name="temp_textosPlanDePago" />
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- FIN Plan de pagos -->
					
				<!-- 
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloFactura"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
	
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosFactura"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

										
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_da_salto_pag"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block> -->

</xsl:if>
					<!-- *************************************************************************************************************** -->
					<!-- ********************************************************************************* ***************************** -->
					<!-- *************************************************************************************************************** -->
					<!-- **************************************************** FIN PROPUESTA DE SEGUROS ************************************* -->
					<!-- *************************************************************************************************************** -->
					<!-- *************************************************************************************************************** -->

					</fo:block>
					</fo:flow>
				</fo:page-sequence>

				</xsl:if>
				
				<xsl:if test="((detallePago/codigoFuturosPagos = '3' or detallePago/codigoFuturosPagos = '6' or detallePago/codigoFuturosPagos = '10')) or ((detallePago/codigoFuturosPagos = '4' or detallePago/codigoFuturosPagos = '5'))">
				<fo:page-sequence master-name="paginaFinal" master-reference="masterSequenceName3">
					<fo:static-content flow-name="regionEncabezadoResto">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(80)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
											<fo:block font-size="11pt" color="#000000">
												<xsl:text>COPIA CLIENTE</xsl:text>
											</fo:block>
										</xsl:if>
										<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
											<fo:block font-size="11pt" color="#000000">
												<xsl:text>COPIA CORREDORA</xsl:text>
											</fo:block>
										</xsl:if>
									</fo:table-cell>
									<fo:table-cell>
										<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
											<fo:block  text-align="right" font-size="11pt" color="#4D6175">
												PROPUESTA DE SEGURO Nro 
													<xsl:value-of select="Cotizacion/numeroPropuesta"/>
												 (continuaci�n)
												  - 
												 P�gina <fo:page-number/>
											</fo:block>
										</xsl:if>
										<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
											<fo:block  text-align="right" font-size="11pt">
												POLIZA DE SEGURO Nro 
												<xsl:value-of select="DatosPoliza/numeroPoliza"/>-<xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/>
										    	(continuaci�n)
												- 
												P�gina <fo:page-number/>
											</fo:block>
										</xsl:if>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:static-content>
					
					
					<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
					<fo:block>


	<!-- 
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_textosAdicionales"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	-->
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_terminos_cortos"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_condiciones_regalo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_anterior_a_mandato_PAC"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_mandatoPAC"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_anterior_a_mandato_PAT"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_mandatoPAT"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
							<fo:block id="last-page"/> <!-- Para idenrificar la ultima pagina -->
							</fo:block>
					</fo:flow>
				</fo:page-sequence>
				</xsl:if>
				
				<xsl:if test="(/DatosPropuesta/condComprobante = 'SI') and ((count(/DatosPropuesta/docAdicionales/*) > 0) or (/DatosPropuesta/detallePago/codigoFuturosPagos = '6'))">
					<fo:page-sequence master-name="secComprobante" master-reference="masterSequenceName2">
						<fo:static-content flow-name="regionEncabezadoCertificado">
							<fo:block font-size="11pt" color="#000000"><xsl:text>COPIA CORREDORA</xsl:text></fo:block>
						</fo:static-content>
						<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
							<fo:block>
							<!-- <xsl:call-template name="temp_da_salto_pag"/> -->
							<xsl:call-template name="CERT_documento_completo" />
							<!-- <xsl:if test="(/DatosPropuesta/detallePago/codigoFuturosPagos = '6')">
								<xsl:call-template name="temp_mandatoPAC">
									<xsl:with-param name="sinHuella">TRUE</xsl:with-param>
								</xsl:call-template>
							</xsl:if>-->
							</fo:block>
						</fo:flow>
					</fo:page-sequence>
				</xsl:if>
		</fo:root>
	</xsl:template>
	
	<xsl:template name="temp_datos_logos_cabecera">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(35)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>						
						
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="5pt" text-align="right" font-weight="bold">
									<xsl:apply-templates select="codigobarras-39" /> 
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="60pt" width="150pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/corredorSegurosNew.gif')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
							</fo:block>
						</fo:table-cell>

						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell vertical-align="top" text-align="center" display-align="before">
								<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
								</fo:block>

								<fo:block color="#000000" font-size="6pt" text-align="center" font-weight="bold"> 
									<xsl:value-of  select="Cotizacion/numeroPropuesta"/> 
								</fo:block> 
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datos_logos_cabecera_propuesta">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(40)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell display-align="before" >
							<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell vertical-align="top" text-align="center" display-align="before">
							<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
								
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="60pt" width="150px">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/corredorSegurosNew.gif')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								
							</fo:block>
						</fo:table-cell>

						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
								
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell vertical-align="top" text-align="center" display-align="before">							
							<fo:block color="#000000" font-size="6pt" text-align="center" font-weight="bold">
								<xsl:value-of  select="numeroPropuesta"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">

							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	


	<xsl:template name="temp_datos_ejecutivo">
		<fo:block span="none">			
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(70)"/>
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-body>
						<fo:table-row>
						<fo:table-cell>
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"  />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell display-align="before">
													<fo:block color="#0360A2" font-size="11.0pt">Sucursal</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
											<fo:table-cell display-align="before" >
												<fo:block color="#0360A2" font-size="11.0pt">Ejecutivo</fo:block>
											</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"  />
										<fo:table-body>
											<fo:table-row>
											<fo:table-cell display-align="before">
												<fo:block color="#0360A2" font-size="11.0pt" font-weight="bold">
													<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionSucursal"/>
												</fo:block>
											</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
											<fo:table-cell display-align="before">
												<fo:block color="#0360A2" font-size="11.0pt" font-weight="bold">
													<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionEjecutivo"/>
												</fo:block>
											</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
						<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">	
							<fo:table-cell>
								<fo:block>
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(57)"  />
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
															Nro PROPUESTA
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
															<xsl:value-of select="Cotizacion/numeroPropuesta"/>		
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
									</fo:table>
								</fo:block>
							</fo:table-cell>
						</xsl:if>
						</fo:table-row>
					<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">		
						<fo:table-row>
							<fo:table-cell number-columns-spanned="3" padding="10pt" padding-after="3pt" padding-before="3pt">
								<fo:block text-align="left" font-size="11pt" color="#0360A2" padding="4pt" border-style="solid" border-width="0.1pt" border-color="#0360A2">
									Esta entidad aseguradora, en consideraci�n a la Propuesta presentada por el asegurado, y por las Condiciones Particulares y Generales que a continuaci�n se acompa�an, asegura lo siguiente:
								</fo:block>
							</fo:table-cell>						
						</fo:table-row>
					</xsl:if>
					</fo:table-body>
				</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="temp_datos_ejecutivo_propuesta">
		<fo:block span="none">
				
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(70)"/>
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-body>
						<fo:table-row>
						<fo:table-cell>
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"  />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell display-align="before">
													<fo:block color="#0360A2" font-size="11.0pt">Sucursal</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
											<fo:table-cell display-align="before" >
												<fo:block color="#0360A2" font-size="11.0pt">Ejecutivo</fo:block>
											</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"  />
										<fo:table-body>
											<fo:table-row>
											<fo:table-cell display-align="before">
												<fo:block color="#0360A2" font-size="11.0pt" font-weight="bold">
													<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionSucursal"/>
												</fo:block>
											</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
											<fo:table-cell display-align="before">
												<fo:block color="#0360A2" font-size="11.0pt" font-weight="bold">
													<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionEjecutivo"/>
												</fo:block>
											</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(35)"/>
					<fo:table-column column-width="proportional-column-width(55)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-body>
						<fo:table-row>
						<fo:table-cell>
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"  />
										<fo:table-body>
											<fo:table-row>
											<fo:table-cell display-align="before" >
												<fo:block color="#0360A2" font-size="11.0pt">Ejecutivo BCI Corredores de Seguros:</fo:block>
											</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"  />
										<fo:table-body>
											<fo:table-row>
											<fo:table-cell display-align="before">
												<fo:block color="#0360A2" font-size="11.0pt" font-weight="bold">
													<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionEjecutivoCS"/>
												</fo:block>
											</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
						</fo:table-row>	
					</fo:table-body>
				</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_tituloPrincipal">
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
			<fo:table-body>
			<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
				<fo:table-row>
					<fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#DCDCDC" padding-left="5pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
							<xsl:text>PROPUESTA DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/numeroPropuesta"/> 
							<xsl:text> - Seguro </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>
			<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
				<fo:table-row>
					<fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#DCDCDC" padding-left="5pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
							<xsl:text>POLIZA DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="DatosPoliza/numeroPoliza"/> <xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="DatosPoliza/digitoVerificadorPoliza"/> 
							<xsl:text> - Seguro </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloContratante">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="2pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>CONTRATANTE</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosContratante">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="contratante/digitoVerificador"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/nombres"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/apellidoPaterno"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/apellidoMaterno"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/fechaNacimiento"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Edad</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/edad"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/descripcionSexo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Direcci�n Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/direccionPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell> -->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/descripcionCiudadPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/descripcionComunaPostal"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Direcci�n Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/direccionComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>-->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/descripcionCiudadComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/descripcionComunaComercial"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Telefono</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/fono"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Celular</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/celular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Email</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/email"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				
				
				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloAFavor">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="2pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosAFavor">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="aFavor/digitoVerificador"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/nombres"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/apellidoPaterno"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/apellidoMaterno"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/fechaNacimiento"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Edad</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/edad"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionSexo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Direcci�n Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/direccionPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell> -->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionCiudadPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionComunaPostal"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Direcci�n Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/direccionComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>-->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionCiudadComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionComunaComercial"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Telefono</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/fono"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Celular</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/celular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Email</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/email"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloMateriaAsegurada">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="2pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>MATERIA ASEGURADA PARA EL RAMO VEHICULOS MOTORIZADOS</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosMateriaAsegurada">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Tipo Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Marca Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionMarcaVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Modelo Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionModeloVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Color</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionColorVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>N� Motor</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/numeroMotorVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>N� Chasis</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/numeroChasisVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Patente</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/patenteVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>A�o de Fabricaci�n</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/anoFabricacionVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Uso Veh�culo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionUsoVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Inspeccion</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionInspeccion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
									<xsl:text>Conduccion Exclusiva</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
									<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/conduccionExclusiva"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Inter�s Asegurable</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/interesAsegurable"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>					

					<xsl:if test="( materiaAsegurada/condicionInspeccion = '1')"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Centro de Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionCentroInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Direccion Centro de Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/direccionInspeccion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Horario de Atencion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/horarioInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Ciudad Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/ciudadInspeccion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Telefono Centro de Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/telefonoInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Nombre Contacto</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/nombreContacto"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Fono Contacto</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/fonoContacto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>
					
					<xsl:if test="( materiaAsegurada/condicionInspeccion = '2')">
						<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Motivo No Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionMotivoNoInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<xsl:if test="( inspeccion/motivoNoInspeccion = '1')">  
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Nro de Factura</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/documentoNoInspeccion"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Fecha de Factura</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/fechaNoInspeccion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>        
	                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
	                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
	                                        <xsl:text>Rut Empresa</xsl:text>
	                                    </fo:block>
	                                </fo:table-cell>
	                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
	                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
	                                        <xsl:value-of disable-output-escaping="no" select="inspeccion/rutEmpresaGiradora"/>
	                                    </fo:block>
	                                </fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
	                            </fo:table-row>
								<fo:table-row>
	                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
	                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
	                                        <xsl:text>Empresa Giradora</xsl:text>
	                                    </fo:block>
	                                </fo:table-cell>
	                                <fo:table-cell text-align="start" display-align="before" border-style="solid" number-columns-spanned="3" border-width="0.1pt" border-color="#DCDCDC">
	                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
	                                        <xsl:value-of disable-output-escaping="no" select="inspeccion/empresaGiradora"/>
	                                    </fo:block>
	                                </fo:table-cell>                         
	                            </fo:table-row>
							</xsl:if>
							<xsl:if test="( inspeccion/motivoNoInspeccion = '2' or inspeccion/motivoNoInspeccion = '3')">  
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Nro de Poliza</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/documentoNoInspeccion"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Compania</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionCompaniaNoInspeccion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Vigencia Hasta</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/fechaNoInspeccion"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:if>
					</xsl:if>					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloConductorHabitual">
			<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
									<xsl:text>CONDUCTOR HABITUAL</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:template>
		
	<xsl:template name="temp_datosConductorHabitual">
			<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="conductor/digitoVerificador"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/nombres"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/apellidoPaterno"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/apellidoMaterno"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/fechaNacimiento"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Edad</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/edad"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/descripcionSexo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Direcci�n Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/direccionPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell> -->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/descripcionCiudadPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/descripcionComunaPostal"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Direcci�n Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/direccionComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>-->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/descripcionCiudadComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/descripcionComunaComercial"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Telefono</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/fono"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Celular</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/celular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Email</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/email"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:template>
		
	<xsl:template name="temp_tituloUso">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>USO ESPEC�FICO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosUso">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">			
			<fo:table-column column-width="proportional-column-width(6)" background-color="#FFFFFF"/>
			<fo:table-column column-width="proportional-column-width(64)" background-color="#FFFFFF"/>
			<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
			<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>					
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
								<xsl:text>Particular</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="12.0pt" border-style="solid" border-width="1.5pt" border-color="#0360A2">
								<xsl:text>S�</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
								<xsl:text>Taxi b�sico</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="12.0pt" border-style="solid" border-width="1.5pt" border-color="#0360A2">
								<xsl:text>No</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
								<xsl:text>Taxi colectivo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="12.0pt" border-style="solid" border-width="1.5pt" border-color="#0360A2">
								<xsl:text>No</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
								<xsl:text>Taxi ejecutivo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="12.0pt" border-style="solid" border-width="1.5pt" border-color="#0360A2">
								<xsl:text>No</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
								<xsl:text>Transporte pasajeros</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="12.0pt" border-style="solid" border-width="1.5pt" border-color="#0360A2">
								<xsl:text>No</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
								<xsl:text>Transporte escolar</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="12.0pt" border-style="solid" border-width="1.5pt" border-color="#0360A2">
								<xsl:text>No</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
								<xsl:text>Transporte materiales explosivos, corrosivos o combustibles</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="12.0pt" border-style="solid" border-width="1.5pt" border-color="#0360A2">
								<xsl:text>No</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
								<xsl:text>Veh�culo de arriendo o rent car</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="12.0pt" border-style="solid" border-width="1.5pt" border-color="#0360A2">
								<xsl:text>No</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
								<xsl:text>Veh�culo de emergencia</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="12.0pt" border-style="solid" border-width="1.5pt" border-color="#0360A2">
								<xsl:text>No</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
								<xsl:text>Otros</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="12.0pt" border-style="solid" border-width="1.5pt" border-color="#0360A2">
								<xsl:text>No</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="12.0pt" >
							</fo:block>
						</fo:table-cell>
					</fo:table-row>						
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
	
	<xsl:template name="temp_tituloPrimas">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>PRIMAS</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosPrimas">
			<!-- GENERATE TABLE START-->
			<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(39)"/>
<!-- 			<fo:table-column column-width="proportional-column-width(15)"/> -->
			<fo:table-column column-width="proportional-column-width(20)"/>
			<fo:table-column column-width="proportional-column-width(20)"/>
			<fo:table-body>
			
			<fo:table-row>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Plan</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Descripci�n</xsl:text>
					</fo:block>
				</fo:table-cell>
<!-- 
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
 -->
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Prima Bruta</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Prima Bruta</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>

			<fo:table-row>
				<fo:table-cell padding-left="5pt" border-after-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block color="#006666">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
<!-- 
				<fo:table-cell padding-left="5pt" border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block color="#006666">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
 -->
				<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				
				<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>UF</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Mensual UF</xsl:text>
					</fo:block>
				</fo:table-cell>
				
			</fo:table-row>

			
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/codigo"/>
							</fo:block>
						</fo:table-cell>
				
					
					<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/descripcion"/>
							</fo:block>
						</fo:table-cell>
					</xsl:if>
					
					<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/>
							</fo:block>
						</fo:table-cell>
					</xsl:if>
<!-- 
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>
 -->
						<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/primaBruta"/>
							</fo:block>
						</fo:table-cell>
	
						<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/primaBrutaMensual"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>
<!-- 
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>
 -->
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Prima Exenta</xsl:text>
							</fo:block>
						</fo:table-cell>
<!-- 
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" background-color="#FFFFFF">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
 -->
						<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/primaExenta"/>
							</fo:block>
						</fo:table-cell>


						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					

					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Prima&#0160;&#0160;Afecta</xsl:text>
							</fo:block>
						</fo:table-cell>
<!-- 
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>
 -->
						<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/primaAfecta"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>IVA&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>

<!-- 
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>
 -->
						<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/iva"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
		</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="temp_tituloCoberturas">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosCoberturas">	
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
			<fo:table-body>
			<xsl:for-each select="cobertura">
				<fo:table-row padding-before="10pt">
					<fo:table-cell text-align="start" display-align="before" font-weight="bold" border-after-style="solid" border-width="0.5pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="10pt" padding-left="8pt">
						<fo:block text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
							<xsl:value-of disable-output-escaping="no" select="descripcionPlan"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="subCobertura">
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" padding-left="8pt" padding-before="4pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="valor"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</xsl:for-each>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="temp_tituloDeducibles">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>DEDUCIBLES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="temp_datosDeducibles">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
			<fo:table-body>
			
				<xsl:if test="( tarifa/descripcionMoneda != 'null' )">
				   <fo:table-row>
						<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/deducible"/> <xsl:text>&#0160;</xsl:text> <xsl:value-of disable-output-escaping="no" select="tarifa/descripcionMoneda"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>
				
				<xsl:if test="( tarifa/descripcionMoneda = 'null' )">
				   <fo:table-row>
						<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/deducible"/> <xsl:text>&#0160;</xsl:text> <xsl:text>UF</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>

				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								El deducible indicado se encuentra detallado en el Resumen de Coberturas y Coberturas por Productos. 
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_tituloVigencia">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt" text-align="start" color="#0360A2">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>VIGENCIA DEL SEGURO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosVigencia">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
			<fo:table-body>
			   <fo:table-row>
					<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
							<xsl:text>Desde 12:00 del dia </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaInicioVigencia"/><xsl:text> Hasta las 12:00 del d�a </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaFinVigencia"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	

	<xsl:template name="temp_tituloResponsablePago">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>RESPONSABLE DE PAGO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosResponsablePago">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="responsablePago/digitoVerificador"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/nombres"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/apellidoPaterno"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/apellidoMaterno"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/fechaNacimiento"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Edad</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/edad"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/descripcionSexo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Direcci�n Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/direccionPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell> -->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/descripcionCiudadPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/descripcionComunaPostal"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Direcci�n Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/direccionComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>-->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/descripcionCiudadComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/descripcionComunaComercial"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Telefono</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/fono"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Celular</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/celular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Email</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/email"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
 	
 	<xsl:template name="temp_tituloPrimerPago">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorPrimerosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>Primer Pago:</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	


	<xsl:template name="temp_datosPrimerPago">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorPrimerosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionPrimerPago"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Fecha :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaPropuesta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				
				<xsl:if test="( detallePago/codigoPrimerPago = '1' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>N� Dep�sito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>	
				<xsl:if test="( detallePago/codigoPrimerPago = '2' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>N� Dep�sito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoPrimerPago = '3' or detallePago/codigoPrimerPago = '10')"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Banco :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Cta.Cte.BCI :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>				
				<xsl:if test="( detallePago/codigoPrimerPago = '4' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Tarjeta de Credito BCI:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>N� Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoPrimerPago = '5' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Tarjeta de Credito otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>N� Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoPrimerPago = '6' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Cta.Cte. otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>N� Cta.Cte. :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>			
					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Valor :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/montoPrimerPago"/><xsl:text> UF</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Valor(Pesos) :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:text>$ </xsl:text><xsl:value-of disable-output-escaping="no" select="detallePago/montoPrimerPagoPesos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

				</xsl:if> 
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	
	<xsl:template name="temp_tituloFuturosPagos">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorFuturosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>Siguientes Pagos:</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosFuturosPagos">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorFuturosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>




				<xsl:if test="( detallePago/codigoFuturosPagos = '1' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>N� Recibo :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>	
				<xsl:if test="( detallePago/codigoFuturosPagos = '2' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>N� Cheque :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoFuturosPagos = '3' or detallePago/codigoFuturosPagos = '10')"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Banco :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Cta.Cte.BCI :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>				
				<xsl:if test="( detallePago/codigoFuturosPagos = '4' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Tarjeta de Credito BCI:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>N� Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoFuturosPagos = '5' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Tarjeta de Credito otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>N� Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoFuturosPagos = '6' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Cta.Cte. otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>N� Cta.Cte. :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>


				<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Dia de Pago :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/diaPagoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Cant.Cuotas restantes :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/numeroCuotas"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Valor Cuota :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/montoFuturosPagos"/><xsl:text> UF</xsl:text>
							</fo:block>
						</fo:table-cell>
				</fo:table-row>

					
				</xsl:if> 
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_tituloFactura">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>FACTURA (SOLO SI ES CONTRIBUYENTE DE IVA)</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosFactura">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Env�o de Factura</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/facturacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Direcci�n</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/direccionFacturacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block  white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>En caso afirmativo, el responsable del pago identificado anteriormente declara ser contribuyente de IVA.</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_tituloEnvioPoliza">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>DESPACHO DE POLIZA POR CORREO ELECTRONICO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosEnvioPoliza">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Env�o de P�liza</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/indicadorMail"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Direcci�n Correo Electr�nico</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/direccionMail"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	
	<xsl:template name="temp_textoBasico">
		<xsl:for-each select="basico/texto">
			<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="temp_textosAdicionales">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion != 'MANDATO_PAC' and condicion != 'MANDATO_PAT')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_da_salto_pag"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="temp_declaraciones_especiales">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'DECLARAC_ESP')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="temp_mandato">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'MANDATO')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

    <xsl:template name="temp_consultas_reclamos">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'INF_CONS_RECL')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
    
   
	<xsl:template name="temp_diversificacion_riesgo">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'DIVERSIF_RIES')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="temp_clausula_renov_auto">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'CLAU_RENOV_AUT')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
    
    <xsl:template name="temp_codigo_autorregulacion">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'COD_AUTORREG')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
    
	<xsl:template name="temp_anterior_a_mandato_PAC">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'MANDATO_PAC' and (../../detallePago/codigoFuturosPagos = '3' or ../../detallePago/codigoFuturosPagos = '6' or ../../detallePago/codigoFuturosPagos = '10'))">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
					<xsl:if test="(contains(../../tarifa/descripcion, 'Trianual')) or (contains(../../tarifa/descripcion, 'Bianual'))">
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_da_salto_pag"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
						<fo:table-row>
							<fo:table-cell>
								<fo:block white-space-collapse="true"  text-align="start" color="#FFFFFF" font-size="300.0pt"> . </fo:block>
								<fo:block text-align="center" font-size="14pt" color="#4D6175">
								Fin de Propuesta Seguro Nro. 
								<xsl:value-of select="../../Cotizacion/numeroPropuesta"/>
								, en pr�xima hoja se adjunta mandato: PAC para ser firmado por Responsable de Pago. 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="temp_mandatoPAC">
		<xsl:param name="sinHuella" />
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'MANDATO_PAC' and (../../detallePago/codigoFuturosPagos = '3' or ../../detallePago/codigoFuturosPagos = '6' or ../../detallePago/codigoFuturosPagos = '10'))">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_da_salto_pag"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				
				<fo:block span="none">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(19)"/>
						<fo:table-column column-width="proportional-column-width(62)"/>
						<fo:table-column column-width="proportional-column-width(19)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left">
										<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="../../rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="center">
									<fo:block color="#CC0000" font-size="20pt" text-align="center" font-weight="bold">
										</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="right">
										<fo:external-graphic  scaling="uniform" height="60pt" width="150px">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="../../rutaLogos"/>/logos/corredorSegurosNew.gif')</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
		
				<fo:block span="none" padding-before="6pt">	
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
				</fo:block>
				
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<fo:inline>IDENTIFICACION DEL TITULAR CUENTA CORRIENTE</fo:inline>
										<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="1.0pt" border-color="#FFFFFF">
						<fo:table-column column-width="proportional-column-width(22)" background-color="#FFFFFF"/>
						<fo:table-column column-width="proportional-column-width(22)" background-color="#ffffff"/>
						<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
						<fo:table-column column-width="proportional-column-width(41)" background-color="#ffffff"/>
						<fo:table-body>
							<!-- SECCION IDENTIFICACION DEL CLIENTE -->
							<fo:table-row keep-with-next="always">
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Nombre</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="3" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../responsablePago/nombres"/>
										<xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoPaterno"/>
										<xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoMaterno"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row keep-with-next="always">
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>RUT</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../responsablePago/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/digitoVerificador"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Banco</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../detallePago/descripcionBancoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row keep-with-next="always">
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>N� Cta. Corriente</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../detallePago/documentoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Sucursal</xsl:text>
									</fo:block>
								</fo:table-cell>
							<xsl:if test="( ../../detallePago/codigoFuturosPagos = '3')"> 	
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
							</fo:table-row>
							<!-- SECCION COMPA�IA -->
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Propuesta N�</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/numeroPropuesta"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Compa��a</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:text>BCI Seguros Generales S.A.</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<!-- SECCION TEXTO DEL MANDATO -->
						</fo:table-body>
					</fo:table>
				</fo:block>

				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
				
				<fo:block padding-before="20pt" text-align="center">
						<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(1)"/>
						<fo:table-column column-width="8cm"/>
						<fo:table-column column-width="proportional-column-width(1)"/>
							<fo:table-body>
								<xsl:if test="(Cotizacion/descripcionEjecutivo != 'WEBBCI' )">
									<fo:table-row>
										<fo:table-cell height="70pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#DCDCDC">
											<fo:block>
												<xsl:if test="not($sinHuella)">
													<fo:external-graphic scaling="uniform" height="70pt" width="70pt">
														<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='R']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
													</fo:external-graphic>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								
								<fo:table-row>
									<xsl:if test="(../../Cotizacion/descripcionEjecutivo != 'WEBBCI' )">
										<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt">
											<fo:block white-space-collapse="true" color="#0360A2" font-size="11.0pt">
											Firma del Titular de la Cuenta Corriente</fo:block>
											<fo:block white-space-collapse="true" color="#0360A2" font-size="11.0pt">
												En Suc. <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
												 a <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/fechaInicioVigencia"/>
											</fo:block>
										</fo:table-cell>
									</xsl:if>
									
									<xsl:if test="(../../Cotizacion/descripcionEjecutivo = 'WEBBCI' )">
										<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt">
											<fo:block white-space-collapse="true" color="#0360A2" font-size="11.0pt">
												En Suc. <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
												 a <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/fechaInicioVigencia"/>
											</fo:block>
										</fo:table-cell>
									</xsl:if>
							
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="temp_anterior_a_mandato_PAT">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'MANDATO_PAT' and (../../detallePago/codigoFuturosPagos = '4' or ../../detallePago/codigoFuturosPagos = '5'))">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<xsl:if test="(contains(../../tarifa/descripcion, 'Trianual')) or (contains(../../tarifa/descripcion, 'Bianual'))">
							<fo:table-row>
								<fo:table-cell>
									<fo:block >
										<xsl:call-template name="temp_da_salto_pag"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:if>
						<fo:table-row>
							<fo:table-cell>
								<fo:block white-space-collapse="true"  text-align="start" color="#FFFFFF" font-size="300.0pt"> . </fo:block>
								<fo:block text-align="center" font-size="14pt" color="#4D6175">
								Fin de Propuesta Seguro Nro. 
								<xsl:value-of select="../../Cotizacion/numeroPropuesta"/>
								, en pr�xima hoja se adjunta mandato: PAT para ser firmado por Responsable de Pago. 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="temp_mandatoPAT">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'MANDATO_PAT' and (../../detallePago/codigoFuturosPagos = '4' or ../../detallePago/codigoFuturosPagos = '5'))">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_da_salto_pag"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				
				<fo:block span="none">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(19)"/>
						<fo:table-column column-width="proportional-column-width(62)"/>
						<fo:table-column column-width="proportional-column-width(19)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left">
										<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="../../rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="center">
									<fo:block color="#CC0000" font-size="20pt" text-align="center" font-weight="bold">
										</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="right">
										<fo:external-graphic  scaling="uniform" height="60pt" width="150px">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="../../rutaLogos"/>/logos/corredorSegurosNew.gif')</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
		
				<fo:block span="none" padding-before="6pt">	
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
				</fo:block>
				
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
					 
						<fo:table-row>
							<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
									<fo:inline>IDENTIFICACION DEL TITULAR TARJETA DE CR�DITO</fo:inline>
									<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			
			<fo:block span="none" padding-before="6pt">
			<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
				<fo:table-column column-width="proportional-column-width(18)" background-color="#FFFFFF"/>
				<fo:table-column column-width="proportional-column-width(20)" background-color="#ffffff"/>
				<fo:table-column column-width="proportional-column-width(21)" background-color="#FFFFFF"/>
				<fo:table-column column-width="proportional-column-width(41)" background-color="#ffffff"/>
				<fo:table-body>
					<!-- SECCION IDENTIFICACION DEL CLIENTE -->
	
					<fo:table-row keep-with-next="always">
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Nombre</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../responsablePago/nombres"/>
									<xsl:text> </xsl:text>
									<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoPaterno"/>
									<xsl:text> </xsl:text>
									<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoMaterno"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next="always">
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>RUT</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../responsablePago/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/digitoVerificador"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Tipo Tarjeta</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../detallePago/descripcionBancoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next="always">
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>N� Tarjeta</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../detallePago/documentoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Fecha Vencimiento</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../detallePago/vencimientoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- SECCION COMPA�IA -->
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
									<xsl:text>Propuesta N�</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/numeroPropuesta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Compa��a</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:text>BCI Seguros Generales S.A.</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>

				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
						
				<fo:block padding-before="18pt" text-align="center">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(1)"/>
						<fo:table-column column-width="8cm"/>
						<fo:table-column column-width="proportional-column-width(1)"/>
						
						<xsl:if test="(../../Cotizacion/descripcionEjecutivo != 'WEBBCI' )">
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell height="25pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#DCDCDC">
										<fo:block>
											<fo:external-graphic scaling="uniform" height="70pt" width="70pt">
												<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='R']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt" color="#0360A2">
										<fo:block>Firma del Titular de la Tarjeta de Cr�dito</fo:block>
										<fo:block>
											En Suc. <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
											 a <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/fechaInicioVigencia"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</xsl:if>
						
						<xsl:if test="(../../Cotizacion/descripcionEjecutivo = 'WEBBCI' )">
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt" color="#0360A2">
										<fo:block>
											En Suc. <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
											 a <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/fechaInicioVigencia"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</xsl:if>
					</fo:table>
				</fo:block>
				
			</xsl:if>
		</xsl:for-each>
	</xsl:template>


	<xsl:template name="temp_terminos_cortos">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'TERM_CORTOS')">
				<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
										<!-- <xsl:call-template name="temp_da_salto_pag"/> -->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block padding-before="20pt" text-align="center">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(1)"/>
						<fo:table-column column-width="8cm"/>
						<fo:table-column column-width="proportional-column-width(1)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell height="20pt" column-number="2" text-align="center" display-align="center" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#DCDCDC">
									<fo:block>
										<fo:external-graphic scaling="uniform" height="70pt" width="70pt">
											<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='R']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell column-number="2" text-align="center" display-align="center" padding-before="4pt">
									<fo:block color="#0360A2" font-size="11.0pt"><xsl:text>Firma Responsable de Pago</xsl:text></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="temp_condiciones_regalo">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'CONDIC_REGALO')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>



<!-- *********************************************************FIRMAS FINALES **************************************************** -->
	<xsl:template name="temp_firmas_poliza">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(16)"/>
			<fo:table-column column-width="proportional-column-width(16)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(12)"/>
			<fo:table-body>
	        	<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
					<fo:table-row keep-with-next="always">
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" color="#0360A2">
							<fo:block><xsl:value-of select="Cotizacion/fechaPropuesta"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
							<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
							<fo:block>
									<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute> 
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
					</fo:table-row>
					
					
					<fo:table-row keep-with-next="always">
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
							<fo:block><xsl:text>Fecha</xsl:text></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						
						
						<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
							<fo:block>
								<xsl:text>Corredor</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
					</fo:table-row>
	            </xsl:if>
				
				<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
					<fo:table-row keep-with-next="always">
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" color="#0360A2">
							<fo:block><xsl:value-of select="Cotizacion/fechaPropuesta"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
							<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
							<fo:block>
									<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/fir_axa.gif')</xsl:attribute> 
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
					</fo:table-row>
					
					<fo:table-row keep-with-next="always">
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
							<fo:block><xsl:text>Fecha</xsl:text></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						
						
						<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
							<fo:block>
								<xsl:text>Compa�ia</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
						<fo:table-cell><fo:block></fo:block></fo:table-cell>
					</fo:table-row>
	            </xsl:if>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<xsl:template name="temp_firmas_propuesta">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(14)"/>
			<fo:table-column column-width="proportional-column-width(16)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(10)"/>
			<fo:table-body>
	        	<fo:table-row keep-with-next="always">
	        		<fo:table-cell text-align="center" display-align="center" color="#0360A2">
						<fo:block>
								
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="center" display-align="center" color="#0360A2">
						<fo:block><xsl:value-of select="Cotizacion/fechaPropuesta"/></fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<fo:external-graphic scaling="uniform" height="70pt" width="70pt">
								<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='C']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>                        	
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
								<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute> 
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell text-align="center" display-align="center" color="#0360A2">
						<fo:block>
								
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next="always">
					<fo:table-cell text-align="center" display-align="center" color="#0360A2">
						<fo:block>
								
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block><xsl:text>Fecha</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block><xsl:text>Contratante</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<xsl:text>Corredor</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>													

						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<xsl:template name="temp_da_salto_pag">
		<fo:block break-before="page"></fo:block>
	</xsl:template>
	
		<!-- RUTINA CODIGO BARRA -->
	<xsl:template name="dibujar_patron">
		<xsl:param name="patron"/>
		<xsl:param name="indice"/>
		<xsl:param name="dimension_x"/>
		<xsl:param name="dimension_y"/>
		<xsl:choose>
			<xsl:when test="string-length($patron) &gt; 0">
				<xsl:variable name="anchura_linea">
					<xsl:choose>
						<xsl:when test="substring($patron, 1, 1) = 'w'">
							<xsl:value-of select="$dimension_x * 2.1"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="$dimension_x"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:choose>
					<xsl:when test="($indice mod 2) = 0">
						<!-- es una barra -->
						<fo:leader leader-pattern="rule" rule-thickness="{$dimension_y}mm" rule-style="solid" leader-length="{$anchura_linea}mm"/>
					</xsl:when>
					<xsl:otherwise>
						<fo:leader leader-pattern="rule" rule-thickness="{$dimension_y}mm" rule-style="solid" color="white" leader-length="{$anchura_linea}mm"/>
						<!-- es un espacio -->
					</xsl:otherwise>
				</xsl:choose>
				<xsl:call-template name="dibujar_patron">
					<xsl:with-param name="patron" select="substring($patron, 2)"/>
					<xsl:with-param name="indice" select="$indice + 1"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
					<xsl:with-param name="dimension_y" select="$dimension_y"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
		
	<xsl:template name="dibujar_caracter">
		<xsl:param name="caracter"/>
		<xsl:param name="dimension_x"/>
		<xsl:param name="dimension_y"/>
		<xsl:variable name="patrones" select="'0nnnwwnwnn1wnnwnnnnw2nnwwnnnnw3wnwwnnnnn4nnnwwnnnw5wnnwwnnnn6nnwwwnnnn7nnnwnnwnw8wnnwnnwnn9nnwwnnwnnAwnnnnwnnwBnnwnnwnnwCwnwnnwnnnDnnnnwwnnwEwnnnwwnnnFnnwnwwnnnGnnnnnwwnwHwnnnnwwnnInnwnnwwnnJnnnnwwwnnKwnnnnnnwwLnnwnnnnwwMwnwnnnnwnNnnnnwnnwwOwnnnwnnwnPnnwnwnnwnQnnnnnnwwwRwnnnnnwwnSnnwnnnwwnTnnnnwnwwnUwwnnnnnnwVnwwnnnnnwWwwwnnnnnnXnwnnwnnnwYwwnnwnnnnZnwwnwnnnn-nwnnnnwnw.wwnnnnwnn nwwnnnwnn*nwnnwnwnn$nwnwnwnnn/nwnwnnnwn+nwnnnwnwn%nnnwnwnwn'"/>
		<xsl:variable name="caracteres_validos" select="'0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%'"/>
		<xsl:choose>
			<xsl:when test="(string-length($caracter) != 1) or (contains($caracteres_validos, $caracter) = false())">
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="patron" select="substring(substring-after($patrones, $caracter), 1, 9)"/>
				<xsl:call-template name="dibujar_patron">
					<xsl:with-param name="patron" select="$patron"/>
					<xsl:with-param name="indice" select="0"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
					<xsl:with-param name="dimension_y" select="$dimension_y"/>
				</xsl:call-template>
				<fo:leader leader-pattern="rule" rule-thickness="{$dimension_y}mm" rule-style="solid" color="white" leader-length="{$dimension_x}mm"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template name="dibujar_codigobarras_39">
		<xsl:param name="cadena"/>
		<xsl:param name="dimension_x"/>
		<xsl:param name="dimension_y"/>
		<xsl:choose>
			<xsl:when test="string-length($cadena) &gt; 0">
				<xsl:variable name="caracter_actual" select="substring($cadena, 1, 1)"/>
				<xsl:call-template name="dibujar_caracter">
					<xsl:with-param name="caracter" select="$caracter_actual"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
					<xsl:with-param name="dimension_y" select="$dimension_y"/>
				</xsl:call-template>
				<xsl:call-template name="dibujar_codigobarras_39">
					<xsl:with-param name="cadena" select="substring($cadena, 2)"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
					<xsl:with-param name="dimension_y" select="$dimension_y"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="codigobarras-39">
		<xsl:param name="dimension_x" select="0.3"/>
		<xsl:param name="dimension_y" />
		<xsl:variable name="altura_cod">
			<xsl:choose>
				<xsl:when test="($dimension_y)"><xsl:value-of select="$dimension_y" /></xsl:when>
				<xsl:otherwise>10</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<fo:block line-height="{$altura_cod}mm">
			<xsl:call-template name="dibujar_codigobarras_39">
				<xsl:with-param name="cadena" select="concat('*',@valor,'*')"/>
				<xsl:with-param name="dimension_x" select="$dimension_x"/>
				<xsl:with-param name="dimension_y" select="$altura_cod"/>
			</xsl:call-template>
		</fo:block>
	</xsl:template>
	<!-- FIN RUTINA CODIGO BARRA -->

	<xsl:template name="temp_anterior_a_liquidacion_siniestro">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'PROC_LIQ_SINI')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<!-- <xsl:call-template name="temp_da_salto_pag"/> -->
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block white-space-collapse="true"  text-align="start" color="#FFFFFF" font-size="300.0pt"> . </fo:block>
								<fo:block text-align="center" font-size="14pt" color="#4D6175">
								Se incluye Anexo relativo a Procedimiento de Liquidaci�n de Siniestros
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="temp_liquidacion_siniestro">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'PROC_LIQ_SINI')">
				<fo:block span="none">
				
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block>
									<xsl:call-template name="temp_da_salto_pag"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				
				<fo:table table-layout="fixed" width="70%">
					<fo:table-column column-width="proportional-column-width(70)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt">
									<fo:block font-family="Helvetica" text-align="center" font-size="16.0pt" font-weight="bold" color="#000000">
										<xsl:value-of disable-output-escaping="no" select="substring-before(titulo, '(')"/>
									</fo:block>
									<fo:block font-family="Helvetica" text-align="center" font-size="12.0pt" font-weight="bold" color="#000000">
										<xsl:value-of disable-output-escaping="no" select="concat('(',substring-after(titulo, '('))"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt">
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				
				<fo:block span="none">
					<fo:table table-layout="fixed" width="100%" >
						<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-style="solid" border-width="0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" color="#0360A2">
									<fo:block font-family="Helvetica" white-space-collapse="false" font-size="12.0pt" color="#000000">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

    <xsl:template name="temp_hoja_resumen">
                <fo:block padding-before="144pt">
					<fo:table table-layout="fixed" width="50%" >
						<fo:table-column column-width="proportional-column-width(8)" />
						<fo:table-column column-width="proportional-column-width(39)" />
						<fo:table-column column-width="proportional-column-width(38)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="9.0pt" font-weight="bold">
									DATOS DEL CONTRATANTE	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>													
				</fo:block>				
				<fo:block span="none" padding-before="11pt" font-family="Helvetica">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(63)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row height = "14pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Nombre del Cliente
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="22pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="contratante/nombres"/>
										<xsl:text> </xsl:text><xsl:value-of disable-output-escaping="no" select="contratante/apellidoPaterno"/>
										<xsl:text> </xsl:text><xsl:value-of disable-output-escaping="no" select="contratante/apellidoMaterno"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(63)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row height="15pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Rut
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="22pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="contratante/rut"/>
                                    <xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="contratante/digitoVerificador"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row height="13pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Producto / Plan
									</fo:block>
								</fo:table-cell>
								
								<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
									<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
										<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
											<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/> / 
											<xsl:value-of disable-output-escaping="no" select="tarifa/descripcion"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
									<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
										<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
											<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/>
											<!--<xsl:value-of disable-output-escaping="no" select="tarifa/descripcion"/>-->
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									P�liza / Propuesta
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">

										<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
											<fo:block  text-align="left" font-size="9.0pt">
												P�liza N� 
												<xsl:value-of select="DatosPoliza/numeroPoliza"/>-<xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/> /
												Propuesta N� 
												<xsl:value-of select="Cotizacion/numeroPropuesta"/>
											</fo:block>
										</xsl:if>
										<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
											<fo:block  text-align="left" font-size="9.0pt">
												Propuesta N� 
												<xsl:value-of select="Cotizacion/numeroPropuesta"/>
											</fo:block>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt" padding-before="2pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
                </fo:block>
				<fo:block span="none" padding-before="8pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(30)" />
						<fo:table-column column-width="proportional-column-width(48)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row height="11pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Materia Asegurada
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>					
				</fo:block>
                <fo:block span="none" padding-before="2pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row height="14pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Tipo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoVehiculo"/> - A�o 
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/anoFabricacionVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row height="15pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Marca
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionMarcaVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row height="15pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Modelo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionModeloVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row height="15pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Patente
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/patenteVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									N�mero de motor
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/numeroMotorVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block padding-before="6pt">
					<fo:table table-layout="fixed" width="50%" >
						<fo:table-column column-width="proportional-column-width(8)" />
						<fo:table-column column-width="proportional-column-width(39)" />
						<fo:table-column column-width="proportional-column-width(38)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="9.0pt" font-weight="bold">
									PRODUCTO CONTRATADO	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>													
				</fo:block>
				<fo:block padding-before="11pt">
					<fo:table table-layout="fixed" width="50%" >
						<fo:table-column column-width="proportional-column-width(7.5)" />
						<fo:table-column column-width="proportional-column-width(39.5)" />
						<fo:table-column column-width="proportional-column-width(38)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#009A3E" font-size="8.0pt" font-weight="bold">
									PER�ODO DE COBERTURA	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>													
				</fo:block>
				<fo:block span="none" padding-before="12pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(70)" />
						<fo:table-column column-width="proportional-column-width(16)" />
						<fo:table-column column-width="proportional-column-width(8)" />
						<fo:table-column column-width="proportional-column-width(6)" />						
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="23pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="8.0pt" font-weight="bold">
									DESDE
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="23pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="8.0pt" font-weight="bold">
									HASTA
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="false" text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>				
                <fo:block span="none" padding-before="15pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(56)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(4)" />						
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="4pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575757" font-size="9pt">
									Vigencia Seguro
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="28pt">
									<fo:block white-space-collapse="false" text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold">
										<xsl:text>Las 12:00 del dia
										</xsl:text>
										<xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaInicioVigencia"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="28pt">
									<fo:block white-space-collapse="false" text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold">
										<xsl:text>Las 12:00 del d�a
										</xsl:text>
										<xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaFinVigencia"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>

    <fo:block padding-before="15pt">
		<fo:table table-layout="fixed" width="50%" >
			<fo:table-column column-width="proportional-column-width(8)" />
			<fo:table-column column-width="proportional-column-width(39)" />
			<fo:table-column column-width="proportional-column-width(38)" />
			<fo:table-column column-width="proportional-column-width(15)" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="left" display-align="left" color="black">
						<fo:block></fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block white-space-collapse="true" text-align="left" color="#009A3E" font-size="8.0pt" font-weight="bold">
						COBERTURAS	
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
							<!-- <xsl:text>Vencimiento</xsl:text>-->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>													
	</fo:block>
	<fo:block padding-before="5pt" >
            <fo:table table-layout="auto" width="100%" height="185pt">
                <fo:table-column column-width="proportional-column-width(40.4)"/>
                <fo:table-column column-width="proportional-column-width(13)"/>
                <fo:table-column column-width="proportional-column-width(18.6)"/>
                <fo:table-column column-width="proportional-column-width(10)"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7pt" font-weight="bold">
                                <xsl:text>CONCEPTO</xsl:text>
                            </fo:block>
                        </fo:table-cell>                                    
                        <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7pt" font-weight="bold">
                                <xsl:text>MONTO ASEGURADO</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7pt" font-weight="bold">
                                <xsl:text>REGISTRO EN LA S.V.S</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7pt" font-weight="bold">
                                <xsl:text>DEDUCIBLE UF</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>

                
                    <xsl:for-each select="tablaCoberturasProductos/cobertura">

                                        
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7pt">
                                            <xsl:value-of disable-output-escaping="no" select="texto"/>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7pt">
                                            <xsl:value-of disable-output-escaping="no" select="monto"/>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7pt">
                                            <xsl:value-of disable-output-escaping="no" select="codigoSVS"/>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7pt">
                                            <xsl:value-of disable-output-escaping="no" select="deducible"/>
                                </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    </xsl:for-each>
                </fo:table-body>
            </fo:table>
    </fo:block>
	
	<xsl:choose>
		<xsl:when test="(cobertura/flagPremium = 'S')">
			<fo:block padding-before="0pt">
				<fo:table table-layout="fixed" width="50%" >
					<fo:table-column column-width="proportional-column-width(7)" />
					<fo:table-column column-width="proportional-column-width(61)" />
					<fo:table-column column-width="proportional-column-width(1)" />
					<fo:table-column column-width="proportional-column-width(31)" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="left" display-align="left" color="black">
								<fo:block></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
								<fo:block white-space-collapse="true" text-align="left" color="white" font-size="9.0pt" font-weight="bold" padding-before="10pt" >
								   
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
								<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
								<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold">
								<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
									<fo:block  text-align="left" font-size="8.0pt">
										P�liza N� 
										<xsl:value-of select="DatosPoliza/numeroPoliza"/>-<xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/> /
										Propuesta N� 
										<xsl:value-of select="Cotizacion/numeroPropuesta"/>
									</fo:block>
								</xsl:if>
								<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
									<fo:block  text-align="left" font-size="8.0pt">
										Propuesta N� 
										<xsl:value-of select="Cotizacion/numeroPropuesta"/>
									</fo:block>
								</xsl:if>
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>													
			</fo:block>
		</xsl:when>
		<xsl:otherwise>
			<fo:block padding-before="0pt">
				<fo:table table-layout="fixed" width="50%" >
					<fo:table-column column-width="proportional-column-width(7)" />
					<fo:table-column column-width="proportional-column-width(61)" />
					<fo:table-column column-width="proportional-column-width(1)" />
					<fo:table-column column-width="proportional-column-width(31)" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="left" display-align="left" color="black">
								<fo:block></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
								<fo:block white-space-collapse="true" text-align="left" color="black" font-size="7pt" font-weight="bold">
								
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
								<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
							<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold">
								<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
									<fo:block  text-align="left" font-size="8.0pt">
										P�liza N� 
										<xsl:value-of select="DatosPoliza/numeroPoliza"/>-<xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/> /
										Propuesta N� 
										<xsl:value-of select="Cotizacion/numeroPropuesta"/>
									</fo:block>
								</xsl:if>
								<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
									<fo:block  text-align="left" font-size="8.0pt">
										Propuesta N� 
										<xsl:value-of select="Cotizacion/numeroPropuesta"/>
									</fo:block>
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>													
			</fo:block>
		</xsl:otherwise>	
	</xsl:choose>
	
	<fo:block padding-before="11pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(18)" />
			<fo:table-column column-width="proportional-column-width(82)" />
			<fo:table-body>
				<fo:table-row>					
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						
					</fo:table-cell>
					<fo:table-cell text-align="justify" display-align="left" color="black">
						<fo:block font-size="6pt" color="green" font-weight="bold">Denuncia Policial</fo:block>
						<fo:block font-size="6pt" color="green" font-weight="bold">En caso de robo del veh�culo asegurado (total o parcial) o accidente de tr�nsito con lesionados:</fo:block>
<fo:block white-space-collapse="false" text-align="left" color="black" font-size="6pt">Es obligaci�n legal hacer la DENUNCIA INMEDIATA en un plazo m�ximo de 2 horas de ocurrido el siniestro del accidente/hechos, en la Comisar�a 
m�s cercana.</fo:block><fo:block font-size="6pt" color="green" font-weight="bold">En caso de accidentes solo con consecuencia de da�os, ya sea propios o a terceros:</fo:block>
<fo:block white-space-collapse="false" text-align="left" color="black" font-size="6pt">NO SE REQUIERE DEJAR CONSTANCIA en Carabineros, bastando informar del siniestro a la compa��a de seguro mediante una DECLARACI�N JURADA SIMPLE.
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>												
	</fo:block>	
<fo:block padding-before="15pt">
		<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(18)" />
			<fo:table-column column-width="proportional-column-width(82)" />
			<fo:table-body>
				<fo:table-row>					
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block></fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="justify" display-align="left" color="black">
						<fo:block font-size="6pt" color="red" font-weight="bold">Denuncia Compa��a</fo:block>
						<fo:block font-size="6pt" color="red" font-weight="bold">En caso de robo del veh�culo asegurado (total o parcial) o accidente de tr�nsito con lesionados:</fo:block>
<fo:block white-space-collapse="false" text-align="left" color="black" font-size="6pt">Informar del siniestro a la Compa��a de Seguros inmediatamente en un plazo m�ximo de 2 horas de ocurrido el siniestro-, ingresando los datos en www.bciseguros.cl o 
llamando desde Red Fija al 600 6000 292 y desde Celulares al (2) 2 679 9700. </fo:block>
<fo:block font-size="6pt" color="red" font-weight="bold">En caso de accidentes solo con consecuencia de da�os, ya sea propios o a terceros:</fo:block>
<fo:block white-space-collapse="false" text-align="left" color="black" font-size="6pt">Informar del siniestro a la Compa��a de Seguros mediante una DECLARACI�N JURADA SIMPLE. Para efectuar la Declaraci�n Jurada Simple, puede ingresar a www.bciseguros.cl o llamar desde Red Fija al 600 6000 292 y desde Celulares al (2) 2 679 9700. Tendr� un plazo m�ximo de 5 d�as de ocurrido el siniestro 
para informar del siniestro a la Compa��a.
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>													
	</fo:block>
	
	<fo:block padding-before="17pt">
		<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(18)" />
			<fo:table-column column-width="proportional-column-width(82)" />
			<fo:table-body>
				<fo:table-row>					
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block></fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="justify" display-align="left" color="black">
					<fo:block font-size="6pt" color="blue" font-weight="bold">Env�o a Taller</fo:block>
<fo:block white-space-collapse="false" text-align="left" color="black" font-size="6pt" >Tras denunciar el siniestro, se asignar� un liquidador y el taller al que deber� llevar su veh�culo, previa reserva de hora.
						</fo:block>
						<fo:block font-size="6pt" color="#575757" padding-before="15pt"></fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>													
	</fo:block>
	
	<fo:block padding-before="10pt">
		<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(18)" />
			<fo:table-column column-width="proportional-column-width(82)" />
			<fo:table-body>
				<fo:table-row>					
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block></fo:block>
					</fo:table-cell>
					
				</fo:table-row>
			</fo:table-body>
		</fo:table>													
	</fo:block>
	</xsl:template>

    <xsl:template name="temp_textosPlanDePago">
        <xsl:for-each select="adicional/texto">
            <xsl:if test="(condicion = 'PLAN_PAGO')">
                <fo:block span="none" padding-before="6pt">
                    <fo:table table-layout="fixed" width="100%">
                        <fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
									<fo:block><xsl:call-template name="temp_da_salto_pag" /></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
                    </fo:table>
                    <fo:table table-layout="fixed" width="100%">
                        <fo:table-column column-width="proportional-column-width(6)" background-color="#FFFFFF"/>
	                    <fo:table-column column-width="proportional-column-width(94)" background-color="#FFFFFF"/>
                        <fo:table-body>
			                <fo:table-row>
                                <fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding-left="5pt">
                                    <fo:block></fo:block>
                                </fo:table-cell>
			                    <fo:table-cell padding="4.0pt" text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding-left="5pt">
			                        <fo:block white-space-collapse="true" text-align="start" color="#0360A2" font-size="13.0pt" font-weight="bold" >
			                             <xsl:text>PLAN DE PAGO</xsl:text>
			                        </fo:block>
			                    </fo:table-cell>
			                </fo:table-row>
		                    <fo:table-row>
                                <fo:table-cell text-align="left" display-align="left" color="black">
                                    <fo:block></fo:block>
                                </fo:table-cell>
			                    <fo:table-cell padding="10pt" text-align="start" display-align="before" padding-left="5pt">
			                        <fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
			                                <xsl:text><!--PADDING 10PT DEJADO COMO RELLENO--></xsl:text>
			                        </fo:block>
			                    </fo:table-cell>
			                </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:table table-layout="fixed" width="100%">
	                    <fo:table-column column-width="proportional-column-width(6)"/>
	                    <fo:table-column column-width="proportional-column-width(62)"/>
	                    <fo:table-column column-width="proportional-column-width(32)"/>
                        <fo:table-body>
                            <!--DATOS DE LA P�LIZA-->
                            <fo:table-row>
                                <fo:table-cell  text-align="center" display-align="center" color="black"><fo:block></fo:block></fo:table-cell>
                                <fo:table-cell text-align="start" display-align="before" border-color="#FFFFFF" padding-left="8pt">
                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                        <xsl:text>P�liza N� :&#0160;&#0160;</xsl:text><xsl:value-of select="../../DatosPoliza/numeroPoliza" />
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="start" display-align="left" border-color="black" padding-left="8pt">
                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                        <xsl:text>Prima :&#0160;&#0160;</xsl:text>
                                        <xsl:value-of disable-output-escaping="no" select="../../tarifa/primaBruta" />
										<xsl:text> UF</xsl:text>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell padding="5pt" text-align="start" display-align="before" padding-left="5pt">
                                    <fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
                                        <xsl:text><!--PADDING 5PT DEJADO COMO RELLENO--></xsl:text>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>
                <fo:table table-layout="fixed" width="100%">
                    <fo:table-column column-width="proportional-column-width(6)"/>
                    <fo:table-column column-width="proportional-column-width(62)"/>
                    <fo:table-column column-width="proportional-column-width(32)"/>
                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell  text-align="center" display-align="center" color="black"><fo:block></fo:block></fo:table-cell>
                            <fo:table-cell text-align="start" background-color="#FFFFFF" number-columns-spanned="2" display-align="before" padding-left="8pt">
                                <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                    <xsl:text>RESPONSABLE DE PAGO</xsl:text>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell  text-align="center" display-align="center" color="black"><fo:block></fo:block></fo:table-cell>
                            <fo:table-cell text-align="start" display-align="before" padding-left="8pt" padding-after="5pt" padding-before="5pt">
                                <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" >
                                    <xsl:text>Nombre : </xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/nombres"/>
                                    <xsl:text> </xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoPaterno"/>
                                    <xsl:text> </xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoMaterno"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="start" display-align="before" padding-left="8pt">
                                <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                    <xsl:text>RUT : </xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/rut"/>
                                    <xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/digitoVerificador"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell  text-align="center" display-align="center" color="black"><fo:block></fo:block></fo:table-cell>
                            <fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" padding-left="8pt">
                                <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                    <xsl:text>Direccion: </xsl:text>
                                    <xsl:value-of disable-output-escaping="no" select="../../responsablePago/direccionPostal"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell  text-align="center" display-align="center" color="black"><fo:block></fo:block></fo:table-cell>
                            <fo:table-cell text-align="start" display-align="before" padding-left="8pt" padding-before="5pt">
                                <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                    <xsl:text>Comuna: </xsl:text>
                                    <xsl:value-of disable-output-escaping="no" select="../../responsablePago/descripcionComunaComercial"/>
                                    <xsl:text>     </xsl:text>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="start" display-align="before" padding-left="8pt">
                                <fo:block white-space-collapse="true" text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                    <xsl:text>Ciudad: </xsl:text>
                                    <xsl:value-of disable-output-escaping="no" select="../../responsablePago/descripcionCiudadComercial"/>
                                    <xsl:text>     </xsl:text>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell padding="8pt" text-align="start" display-align="before" padding-left="5pt">
                                <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="13.0pt" font-weight="bold">
                                    <xsl:text><!--PADDING 5PT DEJADO COMO RELLENO--></xsl:text>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
                <fo:block padding-before="2pt">
                    <fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(6)"/>
						<fo:table-column column-width="proportional-column-width(90)" background-color="#FFFFFF"/>
						<fo:table-column column-width="proportional-column-width(4)"/>
						<fo:table-body>
                            <fo:table-row>
                                <fo:table-cell  text-align="center" display-align="center" color="black"><fo:block></fo:block></fo:table-cell>
                                <fo:table-cell padding="4.0pt" text-align="start" display-align="before" padding-left="8pt">
	                                <fo:block white-space-collapse="true"  text-align="justify" color="#0360A2" font-size="11pt">
	                                    <xsl:value-of disable-output-escaping="no" select="../../textosPlanPago/cabecera" />
	                                </fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell  text-align="center" display-align="center" color="black"><fo:block></fo:block></fo:table-cell>
	                        </fo:table-row>
	                    </fo:table-body>
	                </fo:table>
	            </fo:block>
				<fo:block padding-before="10pt">
					<!--TOTALES PLAN DE PAGO -->
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(6)" />
						<fo:table-column column-width="proportional-column-width(12)" />
						<fo:table-column column-width="proportional-column-width(12)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(6)" />
						<fo:table-column column-width="proportional-column-width(12)" />
                        <fo:table-column column-width="proportional-column-width(12)" />
                        <fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(10)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="center" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" text-decoration="underline">
										<xsl:text>Cuota</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="center" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" text-decoration="underline">
										<xsl:text>Vencimiento</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" display-align="center" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" text-decoration="underline">
										<xsl:text>Valor Cuota</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" display-align="center" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="center" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" text-decoration="underline">
                                        <xsl:text>Cuota</xsl:text>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="left" display-align="center" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" text-decoration="underline">
                                        <xsl:text>Vencimiento</xsl:text>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="center" display-align="center" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" text-decoration="underline">
                                        <xsl:text>Valor Cuota</xsl:text>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="center" display-align="center" color="black">
                                    <fo:block></fo:block>
                                </fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>

					<xsl:if test="( ../../detallePago/indicadorFuturosPagos = 'SI' )">
						<fo:table table-layout="fixed" width="100%">
                            <fo:table-column column-width="proportional-column-width(50)" />
                            <fo:table-column column-width="proportional-column-width(50)" />
                        	<fo:table-body>
                        	<fo:table-row>
							<fo:table-cell  text-align="center" display-align="center" color="black">
                                <fo:table table-layout="fixed" width="100%">
                                    <fo:table-column column-width="proportional-column-width(13)" />
                                    <fo:table-column column-width="proportional-column-width(24)" />
                                    <fo:table-column column-width="proportional-column-width(24)" />
                                    <fo:table-column column-width="proportional-column-width(30)" />
                                    <fo:table-column column-width="proportional-column-width(12)" />
                                    <fo:table-body>
                                    <xsl:for-each select="../../cuotas/cuota">
                                        <xsl:if test="(@numCuota &lt;= ../../cuotasColumnas/numero)">
                                        <fo:table-row>
                                           <fo:table-cell text-align="center" display-align="center" color="black">
                                                <fo:block></fo:block>
                                            </fo:table-cell>                                    
                                            <fo:table-cell text-align="center" display-align="center" padding-left="8pt">
                                                <fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:value-of disable-output-escaping="no" select="@numCuota" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center" display-align="center" padding-left="5pt">
                                                <fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:value-of disable-output-escaping="no" select="@fechaPago" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center" display-align="center" padding-left="3pt">
                                                <fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:value-of disable-output-escaping="no" select="@ufmonto" />
                                                    <xsl:text> UF</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell  text-align="center" display-align="center" color="black">
				                                 <fo:block></fo:block>
				                             </fo:table-cell>
                                       </fo:table-row>
                                       </xsl:if>
                                    </xsl:for-each>
                                    </fo:table-body>
                                </fo:table>
							</fo:table-cell>
							 <fo:table-cell  text-align="center" display-align="center" color="black">}
                                 <fo:table table-layout="fixed" width="100%">
                                    <fo:table-column column-width="proportional-column-width(24)" />
                                    <fo:table-column column-width="proportional-column-width(24)" />
                                    <fo:table-column column-width="proportional-column-width(30)" />
                                    <fo:table-column column-width="proportional-column-width(20)" />
                                    <fo:table-body>
                                    <xsl:for-each select="../../cuotas/cuota">
                                        <xsl:if test="(@numCuota &gt; ../../cuotasColumnas/numero)">
                                        <fo:table-row>
                                            <fo:table-cell text-align="center" display-align="center" padding-left="8pt">
                                                <fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:value-of disable-output-escaping="no" select="@numCuota" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center" display-align="center" padding-left="5pt">
                                                <fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:value-of disable-output-escaping="no" select="@fechaPago" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center" display-align="center" padding-left="3pt">
                                                <fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:value-of disable-output-escaping="no" select="@ufmonto" />
                                                    <xsl:text> UF</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell  text-align="center" display-align="center" color="black">
                                                 <fo:block></fo:block>
                                             </fo:table-cell>
                                       </fo:table-row>
                                       </xsl:if>
                                    </xsl:for-each>
                                    </fo:table-body>
                                </fo:table>
                             </fo:table-cell>
							</fo:table-row>
                            </fo:table-body>
						</fo:table>
					</xsl:if>

				</fo:block>
                <fo:block padding-before="40pt">
		            <fo:table table-layout="fixed" width="100%">
		            <fo:table-column column-width="proportional-column-width(6)"/>
		            <fo:table-column column-width="proportional-column-width(90)" background-color="#FFFFFF"/>
		            <fo:table-column column-width="proportional-column-width(4)"/>
		            <fo:table-body>
		                <fo:table-row>
		                    <fo:table-cell  text-align="center" display-align="center" color="black"><fo:block></fo:block></fo:table-cell>
		                    <fo:table-cell padding="4.0pt" text-align="start" display-align="before" padding-left="5pt">
                                <fo:block white-space-collapse="true"  text-align="justify" color="#0360A2" font-size="11.0pt">
                                    <xsl:value-of disable-output-escaping="no" select="../../textosPlanPago/intereses"/>
                                </fo:block>
                                <fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
                                    <xsl:text><!--PADDING 5PT DEJADO COMO RELLENO--></xsl:text>
                                </fo:block>
                                <fo:block white-space-collapse="true" text-align="justify" color="#0360A2" font-size="11.0pt">
	                                <xsl:value-of disable-output-escaping="no" select="descripcion" />
                                </fo:block>
		                   </fo:table-cell>
	                        <fo:table-cell  text-align="center" display-align="center" color="black">}
	                            <fo:block></fo:block>
	                        </fo:table-cell>
		               </fo:table-row>
		           </fo:table-body>
		           </fo:table>
	           </fo:block>
	           <fo:block padding-before="40pt">
		           <fo:table table-layout="fixed" width="100%">
		               <fo:table-column column-width="proportional-column-width(35)"/>
		               <fo:table-column column-width="proportional-column-width(30)"/>
		               <fo:table-column column-width="proportional-column-width(35)"/>
		               <fo:table-body>
		                   <fo:table-row keep-with-next="always">
		                       <fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
		                       
		                    <fo:table-cell  text-align="center" display-align="center" color="#000000"><fo:block>
		                    <fo:external-graphic scaling="uniform"
		                                height="70pt" width="70pt">
		                                <xsl:attribute name="src"><xsl:value-of
		                                    select="../../rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of
		                                    disable-output-escaping="no"
		                                    select="../../FigurasLegales/figuraLegal[@id='C']" />&amp;nro_prop=<xsl:value-of
		                                    select="../../Cotizacion/numeroPropuesta" /></xsl:attribute>
		                            </fo:external-graphic></fo:block></fo:table-cell>
		                    <fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
                           </fo:table-row>
                <fo:table-row keep-with-next="always">


                    <fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block>
                            
                        </fo:block></fo:table-cell>
                    <fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#0360A2" text-align="center" padding-bottom="205pt" display-align="center" color="#0360A2">
                        <fo:block color="#0360A2"><xsl:text>FIRMA DEL ACEPTANTE</xsl:text></fo:block>
                    </fo:table-cell>
                    <fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
                
 
                </fo:table-row>
                
            </fo:table-body>
        </fo:table>
    </fo:block>				
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="temp_mandato_autorizacion">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'MANDATO_AUTORIZACION')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="temp_tituloPrincipalPropuesta">
                        <fo:block padding-before="2pt">
                            <fo:table table-layout="fixed" width="100%">
                                <fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
                                <fo:table-body>
                                    <fo:table-row>
                                    <fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#DCDCDC" padding-left="5pt">
                                        <fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
                                            <xsl:text>PROPUESTA DE SEGUROS</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    </fo:table-row>
                                                                        
                                </fo:table-body>
                            </fo:table>
                        
                        </fo:block>
                        
                        <fo:block padding-before="2pt">
                        
                            <fo:table table-layout="fixed" width="100%">
                                <fo:table-column column-width="proportional-column-width(50)" />
                                <fo:table-column column-width="proportional-column-width(45)" />
                                <fo:table-column column-width="proportional-column-width(5)" />
                                <fo:table-body>
                                
                                    <fo:table-row>
                                        <fo:table-cell padding="2.0pt" text-align="start" display-align="before" border-width="1.0pt" border-color="#000000"  >
                                            <fo:block text-align="center" font-size="12.0pt" font-weight="bold">
                                            <xsl:text></xsl:text>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="start" display-align="before" border-color="#DCDCDC" padding-left="8pt">
                                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text>NRO. PROPUESTA </xsl:text><xsl:value-of select="Cotizacion/numeroPropuesta"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="2.0pt" text-align="start" display-align="before" border-width="1.0pt" border-color="#000000"  >
                                            <fo:block text-align="center" font-size="12.0pt" font-weight="bold">
                                            <xsl:text></xsl:text>
                                            </fo:block>
                                        </fo:table-cell>

                                    </fo:table-row>
                                                                        
                                </fo:table-body>
                            </fo:table>
        
                        </fo:block>
                    </xsl:template>

    <!-- Tabla Cobertura de Productos -->
    <xsl:template name="temp_coberturaProductos">
    <fo:block padding-before="2pt">
                <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
                <fo:table-body>
                    <fo:table-row>
                     
                        <fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
                                <xsl:text>COBERTURAS PRODUCTO</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
            <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(19)"/>
                <fo:table-column column-width="proportional-column-width(11)"/>
                <fo:table-column column-width="proportional-column-width(10)"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                <xsl:text>CONCEPTO</xsl:text>
                            </fo:block>
                        </fo:table-cell>                                    
                        <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                <xsl:text>MONTO ASEGURADO</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                <xsl:text>COD. S.V.S</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                <xsl:text>DED. UF</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                    <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                <xsl:text>P. NETA UF</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>

                
                    <xsl:for-each select="tablaCoberturasProductos/cobertura">

                                        
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="texto"/>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="monto"/>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="codigoSVS"/>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="deducible"/>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="prima"/>
                                </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    </xsl:for-each>
                </fo:table-body>
            </fo:table>
            
            <!--COMIENZO DE TEXTOS PROPUESTA -->
            
            <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(15)"/>
                <fo:table-column column-width="proportional-column-width(11)"/>
                <fo:table-column column-width="proportional-column-width(14)"/>
                <fo:table-body>
                        <fo:table-row>
                           <fo:table-cell text-align="start" display-align="before" border-bottom-style="solid" number-columns-spanned="5" border-style="solid" border-bottom="solid" border-width="0.5pt" border-color="#DCDCDC" padding-left="305pt" >
                                        <xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">    
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                                                                        
                                                    <xsl:if test="( tarifa/codigo = 'SG50' )">
                                                    	<xsl:text>TOTAL PRIMA NETA ANUAL UF   </xsl:text>
													</xsl:if>
													
                                                    <xsl:if test="( tarifa/codigo = 'SG46' )">
                                                    	<xsl:text>TOTAL PRIMA NETA ANUAL UF   </xsl:text>
													</xsl:if>

                                                    <xsl:if test="( tarifa/codigo = 'SG39' )">
                                                    	<xsl:text>TOTAL PRIMA NETA BIENAL UF   </xsl:text>
													</xsl:if>

													<xsl:if test="( tarifa/codigo = 'SG51' )">
                                                    	<xsl:text>TOTAL PRIMA NETA BIENAL UF   </xsl:text>
													</xsl:if>

                                                    <xsl:if test="( tarifa/codigo = 'SG48' )">
                                                    	<xsl:text>TOTAL PRIMA NETA TRIENAL UF   </xsl:text>
													</xsl:if>
													
													<xsl:if test="( tarifa/codigo = 'SG36' )">
                                                    	<xsl:text>TOTAL PRIMA NETA TRIENAL UF   </xsl:text>
													</xsl:if>

                                                    <xsl:if test="( tarifa/codigo = 'SG55' )">
                                                    	<xsl:text>TOTAL PRIMA NETA ANUAL UF   </xsl:text>
													</xsl:if>

                                                    <xsl:if test="( tarifa/codigo = 'SG56' )">
                                                    	<xsl:text>TOTAL PRIMA NETA BIENAL UF   </xsl:text>
													</xsl:if>

                                                    <xsl:if test="( tarifa/codigo = 'SG57' )">
                                                    	<xsl:text>TOTAL PRIMA NETA TRIENAL UF   </xsl:text>
													</xsl:if>
                                                    
                                                    <xsl:text> &#0160;&#0160;&#0160; </xsl:text>
                                                    <xsl:value-of disable-output-escaping="no" select="valorTotal/totalPrima"/>
											</fo:block>
										</xsl:if>
										
										<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:text>TOTAL PRIMA NETA ANUAL UF   </xsl:text>
                                                    <xsl:text> &#0160;&#0160;&#0160; </xsl:text>
                                                    <xsl:value-of disable-output-escaping="no" select="tarifa/primaAfecta"/>
											</fo:block>
										</xsl:if>
                            </fo:table-cell>
                            
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="start" display-align="before" padding-left="8pt" padding-after="5pt" >
                                        
                            </fo:table-cell>
                        </fo:table-row>
                        
                </fo:table-body>
            </fo:table>
    </fo:block>
    </xsl:template>
    
    <xsl:template name="temp_hoja_resumen_PT">
                <fo:block padding-before="144pt">
					<fo:table table-layout="fixed" width="50%" >
						<fo:table-column column-width="proportional-column-width(8)" />
						<fo:table-column column-width="proportional-column-width(39)" />
						<fo:table-column column-width="proportional-column-width(38)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="9.0pt" font-weight="bold">
									DATOS DEL CONTRATANTE	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>													
				</fo:block>				
				<fo:block span="none" padding-before="11pt" font-family="Helvetica">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(63)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row height = "14pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Nombre del Cliente
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="22pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="contratante/nombres"/>
										<xsl:text> </xsl:text><xsl:value-of disable-output-escaping="no" select="contratante/apellidoPaterno"/>
										<xsl:text> </xsl:text><xsl:value-of disable-output-escaping="no" select="contratante/apellidoMaterno"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(63)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row height="15pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Rut
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="22pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="contratante/rut"/>
                                    <xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="contratante/digitoVerificador"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row height="13pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Producto / Plan
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/> / 
										<xsl:value-of disable-output-escaping="no" select="tarifa/descripcion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									P�liza / Propuesta
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
											<fo:block  text-align="left" font-size="9.0pt">
												P�liza N� 
												<xsl:value-of select="DatosPoliza/numeroPoliza"/>-<xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/> /
												Propuesta N� 
												<xsl:value-of select="Cotizacion/numeroPropuesta"/>
											</fo:block>
										</xsl:if>
										<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
											<fo:block  text-align="left" font-size="9.0pt">
												Propuesta N� 
												<xsl:value-of select="Cotizacion/numeroPropuesta"/>
											</fo:block>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt" padding-before="2pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
                </fo:block>
				<fo:block span="none" padding-before="8pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(30)" />
						<fo:table-column column-width="proportional-column-width(48)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row height="11pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Materia Asegurada
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>					
				</fo:block>
                <fo:block span="none" padding-before="2pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row height="14pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Tipo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoVehiculo"/> - A�o 
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/anoFabricacionVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row height="15pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Marca
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionMarcaVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row height="13pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Modelo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionModeloVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row height="15pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Patente
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/patenteVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(57)" />
						<fo:table-column column-width="proportional-column-width(1)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="12pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									N�mero de motor
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="7pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/numeroMotorVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block padding-before="6pt">
					<fo:table table-layout="fixed" width="50%" >
						<fo:table-column column-width="proportional-column-width(8)" />
						<fo:table-column column-width="proportional-column-width(39)" />
						<fo:table-column column-width="proportional-column-width(38)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="9.0pt" font-weight="bold">
									PRODUCTO CONTRATADO	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>													
				</fo:block>
				<fo:block padding-before="11pt">
					<fo:table table-layout="fixed" width="50%" >
						<fo:table-column column-width="proportional-column-width(7.5)" />
						<fo:table-column column-width="proportional-column-width(39.5)" />
						<fo:table-column column-width="proportional-column-width(38)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#009A3E" font-size="8.0pt" font-weight="bold">
									PER�ODO DE COBERTURA	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<!-- <xsl:text>Vencimiento</xsl:text>-->
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>													
				</fo:block>
				<fo:block span="none" padding-before="12pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(70)" />
						<fo:table-column column-width="proportional-column-width(16)" />
						<fo:table-column column-width="proportional-column-width(8)" />
						<fo:table-column column-width="proportional-column-width(6)" />						
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="23pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="8.0pt" font-weight="bold">
									DESDE
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="23pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="8.0pt" font-weight="bold">
									HASTA
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="false" text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>				
                <fo:block span="none" padding-before="15pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(56)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(4)" />						
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="4pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575757" font-size="9pt">
									Vigencia Seguro
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="28pt">
									<fo:block white-space-collapse="false" text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold">
										<xsl:text>Las 12:00 del dia
										</xsl:text>
										<xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaInicioVigencia"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="28pt">
									<fo:block white-space-collapse="false" text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold">
										<xsl:text>Las 12:00 del dia
										</xsl:text>
										<xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaFinVigencia"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>

    <fo:block padding-before="16pt">
		<fo:table table-layout="fixed" width="50%" >
			<fo:table-column column-width="proportional-column-width(7.5)" />
			<fo:table-column column-width="proportional-column-width(39.5)" />
			<fo:table-column column-width="proportional-column-width(38)" />
			<fo:table-column column-width="proportional-column-width(15)" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="left" display-align="left" color="black">
						<fo:block></fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block white-space-collapse="true" text-align="left" color="#DCDCDC" font-size="8.0pt" font-weight="bold">
						COBERTURAS	
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
							<!-- <xsl:text>Vencimiento</xsl:text>-->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>													
	</fo:block>
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="50%" >
			<fo:table-column column-width="proportional-column-width(43)" />
			<fo:table-column column-width="proportional-column-width(25)" />
			<fo:table-column column-width="proportional-column-width(22)" />
			<fo:table-column column-width="proportional-column-width(14)" />
			<fo:table-body>
				<fo:table-row background-color="green">
					<fo:table-cell text-align="left" display-align="left" padding-left="3pt">
						<fo:block white-space-collapse="true" text-align="left" color="white" font-size="6.5pt" font-weight="bold">
						CONCEPTO	
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block white-space-collapse="true" text-align="left" color="white" font-size="6.5pt" font-weight="bold">
						MONTO ASEGURADO	
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block white-space-collapse="true" text-align="left" color="white" font-size="6.5pt" font-weight="bold">
						REGISTRO EN LA SVS	
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="left" display-align="left" color="black" padding-right="3pt">
						<fo:block white-space-collapse="true" text-align="left" color="white" font-size="6.5pt" font-weight="bold">
						DEDUCIBLE UF	
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>													
	<fo:block padding-before="1pt">
	</fo:block>
            <fo:table table-layout="auto" width="100%" height="177pt">
                <fo:table-column column-width="proportional-column-width(43)" />
				<fo:table-column column-width="proportional-column-width(25)" />
				<fo:table-column column-width="proportional-column-width(22)" />
				<fo:table-column column-width="proportional-column-width(14)" />
                <fo:table-body>
                    <xsl:for-each select="tablaCoberturasProductos/cobertura">
					
					<xsl:choose>
						<xsl:when test="( prima = '1,00' )">
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-bottom-style="solid" border-left-style="solid" border-left-width="0.1pt" border-bottom-width="0.1pt" border-color="#DCDCDC" padding-left="3pt" padding-top="1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt" >
													<xsl:value-of disable-output-escaping="no" select="texto"/>
										</fo:block>
								</fo:table-cell >
								<fo:table-cell text-align="start" display-align="before" border-color="#DCDCDC" padding-left="0pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt" padding-top="8.5pt">
													<xsl:value-of disable-output-escaping="no" select="monto"/>
									</fo:block>
								</fo:table-cell>                                
								<fo:table-cell text-align="start" display-align="before" border-color="#DCDCDC" padding-left="0pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt" padding-top="10pt">
													<xsl:value-of disable-output-escaping="no" select="codigoSVS"/>
										</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-color="#DCDCDC" padding-left="0pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt">
													
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-bottom-style="solid" border-bottom-width="0.1pt" border-color="#DCDCDC" padding-left="3pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt" >
													<xsl:value-of disable-output-escaping="no" select="deducible"/>
										</fo:block>
								</fo:table-cell >
								<fo:table-cell text-align="start" display-align="before" border-bottom-style="solid" border-bottom-width="0.1pt" border-color="#DCDCDC" padding-left="0pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt" >
													
									</fo:block>
								</fo:table-cell>                                
								<fo:table-cell text-align="start" display-align="before" border-bottom-style="solid" border-bottom-width="0.1pt" border-color="#DCDCDC" padding-left="0pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt">
													
										</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-bottom-style="solid" border-bottom-width="0.1pt" border-color="#DCDCDC" padding-left="0pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt">
													
									</fo:block>
								</fo:table-cell>
							</fo:table-row>					
						</xsl:when>
                                        
						<xsl:otherwise>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-bottom-style="solid" border-bottom-width="0.1pt" border-color="#DCDCDC" padding-left="3pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt" >
													<xsl:value-of disable-output-escaping="no" select="texto"/>
										</fo:block>
								</fo:table-cell >
								<fo:table-cell text-align="start" display-align="before" border-bottom-style="solid" border-bottom-width="0.1pt" border-color="#DCDCDC" padding-left="0pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt" >
													<xsl:value-of disable-output-escaping="no" select="monto"/>
									</fo:block>
								</fo:table-cell>                                
								<fo:table-cell text-align="start" display-align="before" border-bottom-style="solid" border-bottom-width="0.1pt" border-color="#DCDCDC" padding-left="0pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt">
													<xsl:value-of disable-output-escaping="no" select="codigoSVS"/>
										</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-bottom-style="solid" border-bottom-width="0.1pt" border-color="#DCDCDC" padding-left="0pt" padding-top="1pt" border-left-style="solid" border-left-width="0.1pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.55pt">
										<xsl:choose>
											<xsl:when test="( prima = '0,00' )">
												
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of disable-output-escaping="no" select="prima"/>
											</xsl:otherwise>                                            
										</xsl:choose>			
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:otherwise>
					</xsl:choose>
					
                    </xsl:for-each>
                </fo:table-body>
            </fo:table>
    </fo:block>
	
	<fo:block padding-before="0pt">
		<fo:table table-layout="fixed" width="50%" >
					<fo:table-column column-width="proportional-column-width(7)" />
					<fo:table-column column-width="proportional-column-width(61)" />
					<fo:table-column column-width="proportional-column-width(1)" />
					<fo:table-column column-width="proportional-column-width(31)" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="left" display-align="left" color="black">
								<fo:block></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
								<fo:block white-space-collapse="true" text-align="left" color="black" font-size="7pt" font-weight="bold">
									
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
								<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="7pt" font-weight="bold">
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
							<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold">
								<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
									<fo:block  text-align="left" font-size="8.0pt">
										P�liza N� 
										<xsl:value-of select="DatosPoliza/numeroPoliza"/>-<xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/> /
										Propuesta N� 
										<xsl:value-of select="Cotizacion/numeroPropuesta"/>
									</fo:block>
								</xsl:if>
								<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
									<fo:block  text-align="left" font-size="8.0pt">
										Propuesta N� 
										<xsl:value-of select="Cotizacion/numeroPropuesta"/>
									</fo:block>
								</xsl:if>
							</fo:block>
						</fo:table-cell>				
						</fo:table-row>
					</fo:table-body>
				</fo:table>														
	</fo:block>
	
	
	
<fo:block padding-before="11pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(18)" />
			<fo:table-column column-width="proportional-column-width(82)" />
			<fo:table-body>
				<fo:table-row>					
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						
					</fo:table-cell>
					<fo:table-cell text-align="justify" display-align="left" color="black">
						<fo:block font-size="6pt" color="green" font-weight="bold">Denuncia Policial</fo:block>
						<fo:block font-size="6pt" color="green" font-weight="bold">En caso de robo del veh�culo asegurado (total) o accidente de tr�nsito con lesionados:</fo:block>
<fo:block white-space-collapse="false" text-align="left" color="black" font-size="6pt">Es obligaci�n legal hacer la DENUNCIA INMEDIATA en un plazo m�ximo de 2 horas de ocurrido el siniestro del accidente/hechos, en la Comisar�a 
m�s cercana.</fo:block><fo:block font-size="6pt" color="green" font-weight="bold">En caso de accidentes solo con consecuencia de da�os, ya sea propios o a terceros:</fo:block>
<fo:block white-space-collapse="false" text-align="left" color="black" font-size="6pt">NO SE REQUIERE DEJAR CONSTANCIA en Carabineros, bastando informar del siniestro a la compa��a de seguro mediante una DECLARACI�N JURADA SIMPLE.
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>													
	</fo:block>
	<fo:block padding-before="15pt">
		<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(18)" />
			<fo:table-column column-width="proportional-column-width(82)" />
			<fo:table-body>
				<fo:table-row>					
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block></fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="justify" display-align="left" color="black">
						<fo:block font-size="6pt" color="red" font-weight="bold">Denuncia Compa��a</fo:block>
						<fo:block font-size="6pt" color="red" font-weight="bold">En caso de robo del veh�culo asegurado (total) o accidente de tr�nsito con lesionados:</fo:block>
<fo:block white-space-collapse="false" text-align="left" color="black" font-size="6pt">Informar del siniestro a la Compa��a de Seguros inmediatamente-en un plazo m�ximo de 2 horas de ocurrido el siniestro-, ingresando los datos en www.bciseguros.cl o 
llamando desde Red Fija al 600 6000 292 y desde Celulares al (2) 2 679 9700. </fo:block>
<fo:block font-size="6pt" color="red" font-weight="bold">En caso de accidentes solo con consecuencia de da�os, ya sea propios o a terceros:</fo:block>
<fo:block white-space-collapse="false" text-align="left" color="black" font-size="6pt">Informar del siniestro a la Compa��a de Seguros mediante una DECLARACI�N JURADA SIMPLE. Para efectuar la Declaraci�n Jurada Simple, puede ingresar a www.bciseguros.cl o llamar desde Red Fija al 600 6000 292 y desde Celulares al (2) 2 679 9700. Tendr� un plazo m�ximo de 5 d�as de ocurrido el siniestro para informar 
del siniestro a la Compa��a.
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>													
	</fo:block>
	<fo:block padding-before="17pt">
		<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(18)" />
			<fo:table-column column-width="proportional-column-width(82)" />
			<fo:table-body>
				<fo:table-row>					
					<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
						<fo:block></fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="justify" display-align="left" color="black">
					<fo:block font-size="6pt" color="blue" font-weight="bold">Env�o a Taller</fo:block>
<fo:block white-space-collapse="false" text-align="left" color="black" font-size="6pt" >Tras denunciar el siniestro, se asignar� un liquidador y el taller al que deber� llevar su veh�culo, previa reserva de hora.
						</fo:block>
						<fo:block font-size="6pt" color="#575757" padding-before="15pt">
							
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>													
	</fo:block>
	<fo:block padding-before="17pt">
														
	</fo:block>
    
    <fo:block padding-before="290pt">
    </fo:block>
	</xsl:template>
    
    <!-- Tabla Cobertura de Productos -->

	<!-- IMPORTA EL XSL CON LOS TEMPLATES DE CERTIFICADO -->
	<xsl:include href="../comprobante/impresion_general_comp.xsl" />
</xsl:stylesheet>
